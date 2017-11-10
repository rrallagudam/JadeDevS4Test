/**@@
#TRIGGER NAME          :    AccountTrigger
#HANDLER CLASS NAME    :    Trigger_Account_Handler
#HELPER CLASS NAME     :    Trigger_Account_Helper
#TEST CLASS            :    AccountTriggerHandler_Test
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.   
@@**/
public class Trigger_Account_Helper{
    
    /**@@
    #DESCRIPTION       : NAICS Description and Adaptive industry update on account depends on NAICScode match with Industry Classification record.
    #Paramaters        : trigger.newMap, trigger.oldMap
    @@**/
    
    public static void afterupdate(map<ID,Account> newmap,map<ID,Account> oldmap){
        try{
            set<String> NAICScodeset = new set<String>();  
            Map<string, Industry_Classification__c> industryMap = new Map<string, Industry_Classification__c>();                
            //Adaptive_Industry__c ,NAICS_Description__c
            for(Account oacc : newmap.values()){
                if(oacc.NAICScode != null && oacc.NAICScode != oldmap.get(oacc.ID).NAICScode){
                    NAICScodeset.add(oacc.NAICScode);
                }//End of if                             
            }//End of for loop   
            
            if(!NAICScodeset.isEmpty()){
                for(Industry_Classification__c oIndustry : [SELECT Id, NAICS_Code__c, Adaptive_Industry__c, NAICS_Description__c FROM Industry_Classification__c WHERE NAICS_Code__c IN :NAICScodeset]){
                    industryMap.put(oIndustry.NAICS_Code__c,oIndustry);
                }//End of for loop 
            }       
            if(!industryMap.isEmpty()){        
                for(Account oaccount : newmap.values()){
                    if(oaccount.NAICScode != null && industryMap.containsKey(oaccount.NAICScode)){    
                    if(oaccount.Adaptive_Industry__c == null) 
                    {
                    oaccount.Adaptive_Industry__c = industryMap.get(oaccount.NAICScode).Adaptive_Industry__c;
                    
                    }                                                    
                     oaccount.NAICS_Description__c = industryMap.get(oaccount.NAICScode).NAICS_Description__c;
                    }//End of inner if
                    else{
                        oaccount.Adaptive_Industry__c = '';
                        oaccount.NAICS_Description__c = '';                
                    }//End of else
                }//End of for loop
            }//End of outer if
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }//End of catch
        
    }
    
    /**@@
    #DESCRIPTION       : Account Team and Team role assignment
    #Paramaters        : trigger.newMap, trigger.oldMap
    @@**/
    
    public static void afterinsert(map<ID,Account> newmap,map<ID,Account> oldmap){
        try{
            map<ID,String> accountTeam = new map<ID,String>();
            map<ID,String> accountTeamRole = new map<ID,String>();    
           /* for(Account oaccount : newmap.values()){    
                accountTeam.put(oaccount.OwnerID,oaccount.ID);
                accountTeamRole.put(oaccount.ID,'Account Manager');                    
            }//End of for loop */
            // TeamMemberUtil.AccountTeamMembers(accountTeam,accountTeamRole);
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }//End of catch
        
    }
    
    
    /**@@
    #DESCRIPTION       : when Account status is changed to 'Cancelled' upadting all contacts under account, setting contact Status to 'Unqualified' and Unqualified Reason to 'No Interest'
    #Paramaters        : trigger.newMap, trigger.oldMap
    @@**/
    
    public static void setContactStatusUnqualified(Map<Id,Account> newAccMap, Map<Id,Account> oldAccMap){
        try{
            list<contact> lstContacts= new list<contact>();
            
            //get all contacts related to accounts coming from trigger.newMap
            List<account> accList = [Select id, Status__c,(Select id, Status__c, Unqualified_Reason__c from Contacts WHERE Status__c != 'Unqualified' AND Status__c != 'Unresponsive') from Account where id IN: newAccMap.keySet()];
            
            //Account those are coming from trigger.newMap
            for(Account acc: accList){
                if(acc.contacts.size() > 0){
                    if(Trigger.isUpdate && oldAccMap.get(acc.id).Status__c != acc.Status__c && acc.Status__c=='Cancelled'){
                        // updating contacts status and Unqualified Reason
                        for( Contact con : acc.contacts){
                            Contact objCon= new Contact(id=con.Id);
                            objCon.Status__c = 'Unqualified';
                            objCon.Unqualified_Reason__c = 'No Interest'; 
                            lstContacts.add(objCon);
                        }//End of Inner for loop
                    }//End of if
                }//End of if loop
            }//End of for Outer loop
            if(!lstContacts.isEmpty()){
                Update lstContacts;
            }//End of if
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }//End of catch
        
    }//End of Method  
    
    /**@@
    #DESCRIPTION       : SOZO-331 : Contacts Ownership Re-Assignment - When a customer account's status is moved to Cancelled, all contacts should be re-assigned to the SDR Owner on the most recent Closed Won opportunity.
    #Paramaters        : trigger.new, trigger.oldMap
    @@**/
    
    public static void reassignContactOwnershipCancelledAccounts(List<Account> newList, Map<Id,Account> oldAccMap){
        try{
            //Set to fetch account ID which belongs to cancelled customer accounts.
            Set<ID> accId = new Set<id>();
            for(Account acc:newList){
                if(oldAccMap.get(acc.id).Status__c != acc.Status__c && acc.Status__c=='Cancelled' && acc.Type == 'Customer'){
                    accId.add(acc.Id);
                    System.debug('***AccountIDs***'+accId);
                }//End of IF
            }//End of For
            List<Contact> contactsToBeUpdated = new List<Contact>();
            if(!accId.isEmpty()){
                Map<Id, Account> mapAccIds = new Map<Id, Account>([SELECT Id, (SELECT name, id, accountId, SDR_Owners__c from Opportunities where Is_Installment_Opportunity__c = False AND Type != :CustomConstants.OpportunityTypeAddOn AND (stagename =: CustomConstants.OpportunityStageCW  OR stagename =: CustomConstants.OpportunityStageCWI ) AND SDR_Owners__c != NULL order by lastmodifieddate desc Limit 1) FROM Account WHERE Id IN :accId]);
                System.debug('***mapAccIds***'+mapAccIds );
                
            
                for(Contact conObj: [Select id,ownerId,accountId from contact where AccountId IN :accId]){
                    if(mapAccIds.containsKey(conObj.accountId) && mapAccIds.get(conObj.accountId).opportunities.size() == 1)
                    {
                        Contact con = new Contact(Id=conObj.Id);
                        con.ownerId = mapAccIds.get(conObj.accountId).opportunities[0].SDR_Owners__c;
                        contactsToBeUpdated.add(con);
                    }
                    /*for(Account AccObj: mapAccIds.values()){
                        if(mapAccIds.containsKey(conObj.accountId)){
                            list<Opportunity> lstOppty = mapAccIds.get(AccObj.id).opportunities;
                            if(lstOppty[0].SDR_Owners__c != null){
                                Contact con = new Contact(Id=conObj.Id);
                                con.ownerID = lstOppty[0].SDR_Owners__c;
                                contactsToBeUpdated.add(con);
                            }
                        }*/
                        /*if(conObj.accountId == oppObj.accountId && oppObj.SDR_Owners__c != null){ 
                            Contact con = new Contact(Id=conObj.Id)q;
                            con.ownerID = oppObj.SDR_Owners__c;
                            contactsToBeUpdated.add(con);
                        }//End of If  */
                        
                    //}//End of Inner For 
                }//End of for
            }//End of If
            if(!contactsToBeUpdated.isEmpty()){
                update contactsToBeUpdated;
                System.debug('***contactsToBeUpdated***'+contactsToBeUpdated);
            }
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }//End of catch
    }//End of reassignContactOwnershipCancelledAccounts method
    
    /**@@
    #DESCRIPTION       : Convert State Names in to two digit Codes
    #Paramaters        : trigger.new
    @@**/
    public static void convertStateNamesOnAccount(List<Account> newList){
        try{
            for( Account a : newList ) {
                if (!String.isBlank(a.BillingState)) {
                    if (a.BillingState.equalsIgnoreCase('Alabama')) a.BillingState = 'AL';
                    else if (a.BillingState.equalsIgnoreCase('Alaska')) a.BillingState =  'AK' ;
                    else if (a.BillingState.equalsIgnoreCase('Arizona')) a.BillingState =  'AZ' ;
                    else if (a.BillingState.equalsIgnoreCase('Arkansas')) a.BillingState =  'AR' ;
                    else if (a.BillingState.equalsIgnoreCase('California')) a.BillingState = 'CA' ;
                    else if (a.BillingState.equalsIgnoreCase('Colorado')) a.BillingState = 'CO' ;
                    else if (a.BillingState.equalsIgnoreCase('Connecticut')) a.BillingState = 'CT' ;
                    else if (a.BillingState.equalsIgnoreCase('Delaware')) a.BillingState = 'DE' ;
                    else if (a.BillingState.equalsIgnoreCase('Florida')) a.BillingState = 'FL' ;
                    else if (a.BillingState.equalsIgnoreCase('Georgia')) a.BillingState = 'GA' ;
                    else if (a.BillingState.equalsIgnoreCase('Hawaii')) a.BillingState = 'HI' ;
                    else if (a.BillingState.equalsIgnoreCase('Idaho')) a.BillingState = 'ID' ;
                    else if (a.BillingState.equalsIgnoreCase('Illinois')) a.BillingState = 'IL' ;
                    else if (a.BillingState.equalsIgnoreCase('Indiana')) a.BillingState = 'IN' ;
                    else if (a.BillingState.equalsIgnoreCase('Iowa')) a.BillingState = 'IA' ;
                    else if (a.BillingState.equalsIgnoreCase('Kansas')) a.BillingState = 'KS'; 
                    else if (a.BillingState.equalsIgnoreCase('Kentucky')) a.BillingState = 'KY'; 
                    else if (a.BillingState.equalsIgnoreCase('Louisiana')) a.BillingState = 'LA'; 
                    else if (a.BillingState.equalsIgnoreCase('Maine')) a.BillingState = 'ME' ;
                    else if (a.BillingState.equalsIgnoreCase('Maryland')) a.BillingState = 'MD'; 
                    else if (a.BillingState.equalsIgnoreCase('Massachusetts')) a.BillingState = 'MA' ;
                    else if (a.BillingState.equalsIgnoreCase('Michigan')) a.BillingState = 'MI' ;
                    else if (a.BillingState.equalsIgnoreCase('Minnesota')) a.BillingState = 'MN' ;
                    else if (a.BillingState.equalsIgnoreCase('Mississippi')) a.BillingState = 'MS' ;
                    else if (a.BillingState.equalsIgnoreCase('Missouri')) a.BillingState = 'MO' ;
                    else if (a.BillingState.equalsIgnoreCase('Montana')) a.BillingState = 'MT' ;
                    else if (a.BillingState.equalsIgnoreCase('Nebraska')) a.BillingState = 'NE' ;
                    else if (a.BillingState.equalsIgnoreCase('Nevada')) a.BillingState = 'NV' ;
                    else if (a.BillingState.equalsIgnoreCase('New Hampshire')) a.BillingState = 'NH' ;
                    else if (a.BillingState.equalsIgnoreCase('New Jersey')) a.BillingState = 'NJ' ;
                    else if (a.BillingState.equalsIgnoreCase('New Mexico')) a.BillingState = 'NM' ;
                    else if (a.BillingState.equalsIgnoreCase('New York')) a.BillingState = 'NY' ;
                    else if (a.BillingState.equalsIgnoreCase('North Carolina')) a.BillingState = 'NC' ;
                    else if (a.BillingState.equalsIgnoreCase('North Dakota')) a.BillingState = 'ND' ;
                    else if (a.BillingState.equalsIgnoreCase('Ohio')) a.BillingState = 'OH' ;
                    else if (a.BillingState.equalsIgnoreCase('Oklahoma')) a.BillingState = 'OK' ;
                    else if (a.BillingState.equalsIgnoreCase('Oregon')) a.BillingState = 'OR' ;
                    else if (a.BillingState.equalsIgnoreCase('Pennsylvania')) a.BillingState = 'PA' ;
                    else if (a.BillingState.equalsIgnoreCase('Rhode Island')) a.BillingState = 'RI' ;
                    else if (a.BillingState.equalsIgnoreCase('South Carolina')) a.BillingState = 'SC' ;
                    else if (a.BillingState.equalsIgnoreCase('South Dakota')) a.BillingState = 'SD' ;
                    else if (a.BillingState.equalsIgnoreCase('Tennessee')) a.BillingState = 'TN' ;
                    else if (a.BillingState.equalsIgnoreCase('Texas')) a.BillingState = 'TX' ;
                    else if (a.BillingState.equalsIgnoreCase('Utah')) a.BillingState = 'UT' ;
                    else if (a.BillingState.equalsIgnoreCase('Vermont')) a.BillingState = 'VT' ;
                    else if (a.BillingState.equalsIgnoreCase('Virginia')) a.BillingState = 'VA' ;
                    else if (a.BillingState.equalsIgnoreCase('Washington')) a.BillingState = 'WA' ;
                    else if (a.BillingState.equalsIgnoreCase('West Virginia')) a.BillingState = 'WV' ;
                    else if (a.BillingState.equalsIgnoreCase('Wisconsin')) a.BillingState = 'WI' ;
                    else if (a.BillingState.equalsIgnoreCase('Wyoming')) a.BillingState = 'WY' ;
                    else if (a.BillingState.equalsIgnoreCase('Ontario')) a.BillingState = 'ON' ;
                    else if (a.BillingState.equalsIgnoreCase('Quebec')) a.BillingState = 'QC' ;
                    else if (a.BillingState.equalsIgnoreCase('QuéBec')) a.BillingState = 'QC' ;
                    else if (a.BillingState.equalsIgnoreCase('British Columbia')) a.BillingState = 'BC' ;
                    else if (a.BillingState.equalsIgnoreCase('Alberta')) a.BillingState = 'AB' ;
                    else if (a.BillingState.equalsIgnoreCase('Manitoba')) a.BillingState = 'MB' ;
                    else if (a.BillingState.equalsIgnoreCase('Saskatchewan')) a.BillingState = 'SK' ;
                    else if (a.BillingState.equalsIgnoreCase('Nova Scotia')) a.BillingState = 'NS' ;
                    else if (a.BillingState.equalsIgnoreCase('New Brunswick')) a.BillingState = 'NB' ;
                    else if (a.BillingState.equalsIgnoreCase('Newfoundland And Labrador')) a.BillingState = 'NL' ;
                    else if (a.BillingState.equalsIgnoreCase('Prince Edward Island')) a.BillingState = 'PE' ;
                    else if (a.BillingState.equalsIgnoreCase('Northwest Territories')) a.BillingState = 'NT' ;
                    else if (a.BillingState.equalsIgnoreCase('Yukon')) a.BillingState = 'YT' ;
                    else if (a.BillingState.equalsIgnoreCase('Nunavut')) a.BillingState = 'NU' ;
                    else if (a.BillingState.equalsIgnoreCase('Alberta')) a.BillingState =  'AB' ;
                    else if (a.BillingState.equalsIgnoreCase('British Columbia')) a.BillingState =  'BC' ;
                    else if (a.BillingState.equalsIgnoreCase('Manitoba')) a.BillingState =  'MB' ;
                    else if (a.BillingState.equalsIgnoreCase('New Brunswick')) a.BillingState = 'NB' ;
                    else if (a.BillingState.equalsIgnoreCase('Newfoundland and Labrador')) a.BillingState = 'NL' ;
                    else if (a.BillingState.equalsIgnoreCase('Nova Scotia')) a.BillingState = 'NS' ;
                    else if (a.BillingState.equalsIgnoreCase('Ontario')) a.BillingState = 'ON' ;
                    else if (a.BillingState.equalsIgnoreCase('Quebec')) a.BillingState = 'QC' ;
                    else if (a.BillingState.equalsIgnoreCase('Saskatchewan')) a.BillingState = 'SK' ;
                    else if (a.BillingState.equalsIgnoreCase('Prince Edward Island')) a.BillingState = 'PE' ;
                    else if (a.BillingState.equalsIgnoreCase('Northwest Territories')) a.BillingState = 'NT' ;
                    else if (a.BillingState.equalsIgnoreCase('Nunavut')) a.BillingState = 'NU' ;
                    else if (a.BillingState.equalsIgnoreCase('Yukon')) a.BillingState = 'YT' ;
                    else if (a.BillingState.equalsIgnoreCase('Australian Capital Territory')) a.BillingState = 'ACT' ;
                    else if (a.BillingState.equalsIgnoreCase('New South Wales')) a.BillingState = 'NSW'; 
                    else if (a.BillingState.equalsIgnoreCase('Northern Territory')) a.BillingState = 'NT'; 
                    else if (a.BillingState.equalsIgnoreCase('Queensland')) a.BillingState = 'QLD'; 
                    else if (a.BillingState.equalsIgnoreCase('South Australia')) a.BillingState = 'SA' ;
                    else if (a.BillingState.equalsIgnoreCase('Tasmaina')) a.BillingState = 'TAS'; 
                    else if (a.BillingState.equalsIgnoreCase('Victoria')) a.BillingState = 'VIC' ;
                    else if (a.BillingState.equalsIgnoreCase('Western Australia')) a.BillingState = 'WA' ;
                }//End of if
            }//End of for
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }//End of catch
    }//End of convertStateNamesOnAccount Method

}//End of Helper Class