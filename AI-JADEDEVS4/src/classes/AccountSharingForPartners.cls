/*********************************
 * Class Name: AccountSharingForPartners
 * Author: Jade Global Inc.
 * Date: 12th July 2017
 * Purpose: This class will impose all the sharing settings for Accounts.
 *          This class will insert the records in AccountShare object to open the access of the records for particular partner.
 * *******************************/

public without sharing class AccountSharingForPartners {
    
    public static void insertAccountShare(list<Account> listAccounts, map<id,Account> oldMap){
        //If LeadConversion Executed
        if(LeadConvertController.IsSharedFromLeadConversion == FALSE) {
        
            system.debug('!@#$%^&~!@#$%^& account share - Inside method');
            list<AccountShare> listAccountSharesToBeInserted = new list<AccountShare>();
            set<Id> setContactIds = new set<Id>();
            set<Id> setAccountIds = new set<Id>();
            set<Id> setAccountIdsOwnerChanged = new set<Id>();
            map<Id,Id> MapContactIdAndUserId = new map<id,id>();
            map<id,Account> MapAccIdAndAccount = new map<id,Account>();
            
            for(Account acc : listAccounts){
                if(Trigger.isInsert){
                    if(acc.Partner_Contact__c != null){
                        setContactIds.add(acc.Partner_Contact__c);   
                    }//End of IF
                }
                if(!MapAccIdAndAccount.ContainsKey(acc.id)){
                    MapAccIdAndAccount.put(acc.id,acc);
                }//End of IF
          
                if(Trigger.isUpdate){
                    if(/*acc.OwnerId == OldMap.get(acc.id).OwnerId &&*/acc.Partner_Contact__c != OldMap.get(acc.id).Partner_Contact__c){
                        setAccountIds.add(acc.id);
                        setContactIds.add(acc.Partner_Contact__c);
                    }
                }//End of isUpdate()
                
                // If Account Owner Get changed than Share Related Contacts with Their associated Partners
                if(Trigger.isUpdate){
                    if(acc.OwnerId != OldMap.get(acc.id).OwnerId){
                        setAccountIdsOwnerChanged.add(acc.id);
                    }
                }
                
            }//End of FOR
            System.debug('#@#@#@#@#@#@#@ SetOfAccIds: '+setAccountIds);
            //DELETION of existing AccountShare Records for Account present in the system [Account's Primary Contact Change/Update Scenario]
            if(!setAccountIds.isEmpty()){
                Map<Id,AccountShare> MapShare = new Map<id,AccountShare>([SELECT id,AccountId,UserOrGroupId,RowCause FROM AccountShare WHERE AccountId IN: setAccountIds]);

                if(!MapShare.isEmpty()){
                    for(AccountShare ac: MapShare.values()){
                        Account AccountRec = MapAccIdAndAccount.get(ac.AccountId);
                        if(ac.UserOrGroupId == AccountRec.ownerId || string.valueof(ac.UserOrGroupId).startswith('00G') || ac.RowCause == 'Team' || ac.RowCause == 'ImplicitParent' || ac.RowCause == 'Rule'){
                            MapShare.remove(ac.Id);
                        }//End of IF
                    }//End of FOR
                }//End of IF

                if(!MapShare.isEmpty()){
                    try{
                        system.debug('@@@@@@@@@@@'+MapShare.values());
                        DELETE MapShare.values();
                    }//End of Try Block
                    Catch(Exception ex){
                        ExceptionHandlingEmail.sendEmailonException(ex);
                    }//End of Catch Block
                }//End of IF
            }//End of IF
            
            if(!setContactIds.isEmpty()){
                list<User> listUserWithContactIds = [SELECT id,ContactId FROM USER WHERE ContactId IN: setContactIds];
                
                if(!listUserWithContactIds.isEmpty()){
                    for(User u : listUserWithContactIds){
                        if(!MapContactIdAndUserId.containsKey(u.ContactId)){
                            MapContactIdAndUserId.put(u.ContactId,u.id);
                        }//End of IF
                    }//End of FOR
                }//End of IF
                
                //Logic to INSERT the records in AccountShare object
                for(Account a : listAccounts){
                    if(!MapContactIdAndUserId.isEmpty() && MapContactIdAndUserId.containsKey(a.Partner_Contact__c) && a.Partner_Contact__c != null && (a.Type.Contains('Customer'))){
                        AccountShare AccShare = new AccountShare();
                        AccShare.AccountId = a.id;
                        AccShare.UserOrGroupId = MapContactIdAndUserId.get(a.Partner_Contact__c);
                        AccShare.AccountAccessLevel = 'Read';
                        AccShare.CaseAccessLevel = 'Read';
                        AccShare.ContactAccessLevel = 'Read';
                        AccShare.OpportunityAccessLevel = 'Read';
                        AccShare.RowCause = 'Manual';
                        listAccountSharesToBeInserted.add(AccShare);                        
                    }//End of IF
                }//End of FOR         
            }//End of IF
            
            if(!listAccountSharesToBeInserted.isEmpty()){
                try{
                    system.debug('$$$$$$$$$$$$$'+listAccountSharesToBeInserted);
                    INSERT listAccountSharesToBeInserted;
                }//End of try
                Catch(Exception ex){
                    ExceptionHandlingEmail.sendEmailonException(ex);
                }
            }//End of IF
            
            // If Account Owner Get changed than Share Related Contacts with Their associated Partners -- START
            if(!setAccountIdsOwnerChanged.isEmpty()){
                list<ContactShare> listContactSharesToBeInserted = new list<ContactShare>();
                set<Id> setContactIdsOwnerChanaged = new set<Id>();
                Map<Id,Id> MapContactIdAndUserIdOwnerChanged = new map<id,id>();
                List<Contact> contList = [SELECT id, Partner_Contact__c from Contact WHERE Accountid IN: setAccountIdsOwnerChanged and Partner_Contact__c != null];
              	system.debug(contList);
                for(Contact con: contList){
                    setContactIdsOwnerChanaged.add(con.Partner_Contact__c);
                }
                
                if(!setContactIdsOwnerChanaged.isEmpty()){
                    List<User> listUserWithContactIdsOwnerChanged = [SELECT id,ContactId FROM USER WHERE ContactId IN: setContactIdsOwnerChanaged];
                    if(!listUserWithContactIdsOwnerChanged.isEmpty()){
                        for(User u : listUserWithContactIdsOwnerChanged){
                            if(!MapContactIdAndUserIdOwnerChanged.containsKey(u.ContactId)){
                                MapContactIdAndUserIdOwnerChanged.put(u.ContactId,u.id);
                            }//End of IF
                        }//End of FOR
                    }//End of IF
                }//End of IF
                
                for(Contact con: contList){
                    if(!MapContactIdAndUserIdOwnerChanged.isEmpty() && MapContactIdAndUserIdOwnerChanged.containsKey(con.Partner_Contact__c)){
                        ContactShare ConShare = new ContactShare();
                        ConShare.ContactId = con.id;
                        ConShare.UserOrGroupId = MapContactIdAndUserIdOwnerChanged.get(con.Partner_Contact__c);
                        ConShare.ContactAccessLevel = 'Read';
                        ConShare.RowCause = 'Manual';                        
                        listContactSharesToBeInserted.add(ConShare);
                        
                    }//End of IF
                }
                
                if(!listContactSharesToBeInserted.isEmpty()){
                    try{
                        system.debug('!!!!!!!!!!!!!!!'+listContactSharesToBeInserted);
                        INSERT listContactSharesToBeInserted;
                    }//End of try
                    Catch(Exception ex){
                        ExceptionHandlingEmail.sendEmailonException(ex);
                    }
                }//End of IF                
            }// End of IF
            // If Account Owner Get changed than Share Related Contacts with Their associated Partners -- END
            
            // If Account Owner Get changed than Share Related Opportunity with Their associated Partners -- START
            if(!setAccountIdsOwnerChanged.isEmpty()){
                list<OpportunityShare> listOpportunitySharesToBeInserted = new list<OpportunityShare>();
                set<Id> setOpportunityIdsOwnerChanaged = new set<Id>();
                Map<Id,Id> MapContactIdAndUserIdOwnerChanged = new map<id,id>();
                List<Opportunity> oppList = [SELECT id, Partner_Contact__c from Opportunity WHERE Accountid IN: setAccountIdsOwnerChanged and Partner_Contact__c != null];
                for(Opportunity opp: oppList){
                    setOpportunityIdsOwnerChanaged.add(opp.Partner_Contact__c);
                }
                
                if(!setOpportunityIdsOwnerChanaged.isEmpty()){
                    List<User> listUserWithContactIdsOwnerChanged = [SELECT id,ContactId FROM USER WHERE ContactId IN: setOpportunityIdsOwnerChanaged];
                    if(!listUserWithContactIdsOwnerChanged.isEmpty()){
                        for(User u : listUserWithContactIdsOwnerChanged){
                            if(!MapContactIdAndUserIdOwnerChanged.containsKey(u.ContactId)){
                                MapContactIdAndUserIdOwnerChanged.put(u.ContactId,u.id);
                            }//End of IF
                        }//End of FOR
                    }//End of IF
                }//End of IF
                
                for(Opportunity opp: oppList){
                    if(!MapContactIdAndUserIdOwnerChanged.isEmpty() && MapContactIdAndUserIdOwnerChanged.containsKey(opp.Partner_Contact__c)){
                        OpportunityShare OppShare = new OpportunityShare();
                        OppShare.OpportunityId = opp.id;
                        OppShare.UserOrGroupId = MapContactIdAndUserIdOwnerChanged.get(opp.Partner_Contact__c);
                        OppShare.OpportunityAccessLevel = 'Read';
                        OppShare.RowCause = 'Manual';                       
                        listOpportunitySharesToBeInserted.add(OppShare);
                        
                    }//End of IF
                }
                
                if(!listOpportunitySharesToBeInserted.isEmpty()){
                    try{
                        system.debug('!!!!!!!!!!!!!!!'+listOpportunitySharesToBeInserted);
                        INSERT listOpportunitySharesToBeInserted;
                    }//End of try
                    Catch(Exception ex){
                        ExceptionHandlingEmail.sendEmailonException(ex);
                    }
                }//End of IF                
            }// End of IF
            // If Account Owner Get changed than Share Related Contacts with Their associated Partners -- END
            
            // If Account Partner Contact Get changed than Share Related Opportunity with Their associated Partners -- START
            if(!setAccountIds.isEmpty()){
                list<OpportunityShare> listOpportunitySharesToBeInserted = new list<OpportunityShare>();
                set<Id> setOpportunityIdsOwnerChanaged = new set<Id>();
                Map<Id,Id> MapContactIdAndUserIdOwnerChanged = new map<id,id>();
                List<Opportunity> oppList = [SELECT id, Partner_Contact__c from Opportunity WHERE Accountid IN: setAccountIds and Partner_Contact__c != null];
                for(Opportunity opp: oppList){
                    setOpportunityIdsOwnerChanaged.add(opp.Partner_Contact__c);
                }
                
                if(!setOpportunityIdsOwnerChanaged.isEmpty()){
                    List<User> listUserWithContactIdsOwnerChanged = [SELECT id,ContactId FROM USER WHERE ContactId IN: setOpportunityIdsOwnerChanaged];
                    if(!listUserWithContactIdsOwnerChanged.isEmpty()){
                        for(User u : listUserWithContactIdsOwnerChanged){
                            if(!MapContactIdAndUserIdOwnerChanged.containsKey(u.ContactId)){
                                MapContactIdAndUserIdOwnerChanged.put(u.ContactId,u.id);
                            }//End of IF
                        }//End of FOR
                    }//End of IF
                }//End of IF
                
                for(Opportunity opp: oppList){
                    if(!MapContactIdAndUserIdOwnerChanged.isEmpty() && MapContactIdAndUserIdOwnerChanged.containsKey(opp.Partner_Contact__c)){
                        OpportunityShare OppShare = new OpportunityShare();
                        OppShare.OpportunityId = opp.id;
                        OppShare.UserOrGroupId = MapContactIdAndUserIdOwnerChanged.get(opp.Partner_Contact__c);
                        OppShare.OpportunityAccessLevel = 'Read';
                        OppShare.RowCause = 'Manual';                       
                        listOpportunitySharesToBeInserted.add(OppShare);
                        
                    }//End of IF
                }
                
                if(!listOpportunitySharesToBeInserted.isEmpty()){
                    try{
                        system.debug('!!!!!!!!!!!!!!!'+listOpportunitySharesToBeInserted);
                        INSERT listOpportunitySharesToBeInserted;
                    }//End of try
                    Catch(Exception ex){
                        ExceptionHandlingEmail.sendEmailonException(ex);
                    }
                }//End of IF
            }
            // If Account Partner Contact Get changed than Share Related Opportunity with Their associated Partners -- END
            
            
        }//End of Boolean Check from LeadConversion
    }//End of method insertAccountShare()
}//End of class AccountSharingForPartners