/**@@
#HANDLER CLASS NAME         :  Trigger_Opportunity_Handler
#TRIGGER NAME               :  OpportunityTrigger
#HELPER CLASS NAME          :  Trigger_Opportunity_Helper
#TEST CLASS                 :  OpportunityTriggerHandler_Test
#DESCRIPTION                :  This is used for different methods depends on trigger events   
@@**/
public with sharing class Trigger_Opportunity_Helper {
    public static boolean oppAccountrecurssionFlag = false;
    public static boolean returnonInstallmentOpp = false;
    public static boolean oppafterUpdateFlag = false;
    public static boolean istaskinsert = false;
    
    
    public Trigger_Opportunity_Helper(){
    }
    /**@@
        #DESCRIPTION     : This method will get called on insert of Opportunity record.
                           This method will add Opportunity Team member  -- This is Removed for now
                           This method will populate partner Commission type on Opportunitys based on selected Partner Account                         
        #Paramaters      : Map<ID,Opportunity> newmap, Map<ID,Opportunity> oldmap
        #Return type     : void
    @@**/    
    public static void onAfterInsert(Map<ID,Opportunity> newmap, Map<ID,Opportunity> oldmap){
        try{   
            map<ID, String> mapPartnerWithCommisionType = new map<ID,String>(); 
            list<Opportunity> OppList = new list<Opportunity>(); 
            
            for(Opportunity oppObj : newmap.values()){
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                if(oppObj.Is_Installment_Opportunity__c == false &&  oppObj.Has_Installments__c == false) {
                    system.debug(oppObj.Partner_Commission_Type__c);
                    system.debug(oppObj.Partner_Account__c);
                    system.debug(oppObj.Partner_Account__r.Partner_Commission_Type__c);
                    if(oppObj.Partner_Commission_Type__c == null && oppObj.Partner_Account__c != null && oppObj.Partner_Account__r.Partner_Commission_Type__c != null){
                         OppList.add(new Opportunity(ID=oppObj.ID,Partner_Commission_Type__c = oppObj.Partner_Account__r.Partner_Commission_Type__c));
                    }
                }
            }
            if(OppList.size() > 0){
                oppafterUpdateFlag = true;
                update OppList;
            }
            
            // Create Opportunity Team -- START
            Map<Id, Opportunity> mapNewOpportunity = new Map<Id, Opportunity>([SELECT id, Type, New_ARR__c, OwnerId, Accountid, Account.OwnerId, Owner.Role__c, Account.Account_CSM__c FROM Opportunity WHERE id in: newmap.keyset() AND OwnerID != null AND AccountId != null AND Account.Ownerid != null]);
            if(!mapNewOpportunity.isEmpty()){
                createOpportunityTeamMember(mapNewOpportunity, null);
            }
            
            
            // Create Opportunity Team -- END
        }//End of try
        Catch(exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//END OF METHOD
    
    /**@@
        #DESCRIPTION     : This method will get called on update of Opportunity record.
                           This method will insert a task under opportunity when next step will get changed.
                           This method will update related Account information after Opportunity get Closed won
        #Paramaters      : Map<ID,Opportunity> newmap, Map<ID,Opportunity> oldmap
        #Return type     : void
    @@**/
    public static void onAfterUpdate(Map<ID,Opportunity> newmap, Map<ID,Opportunity> oldmap){
        try{
            
            set<id> partnerAccs  = new set<ID>();
            Map<Id, String> mapOppwithPartnerType = new Map<Id, String>();
            list<Task> lstTask = new list<Task>();
            set<Id> sClosedWonOppId = new set<Id>();
            
            set<Id> sOppId = new set<Id>();
            set<Id> sOldOppOwnerId = new set<Id>();
            for(Opportunity oppObj : newmap.values()){
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                if(oppObj.Is_Installment_Opportunity__c == false &&  oppObj.Has_Installments__c == false) {
                    if(oppObj.Partner_Account__c != null){
                        partnerAccs.add(oppObj.Partner_Account__c);
                    }
                    if(oppObj.NextStep!=oldmap.get(oppObj.Id).NextStep){
                        Task objTask = new Task();
                        objTask.Status = CustomConstants.TaskStsCompleted;
                        objTask.Priority = CustomConstants.TaskPriorityNormal;
                        objTask.Subject = 'Next Step Update on '+system.today().month()+'/'+system.today().Day()+'/'+system.today().Year();
                        objTask.Description = 'Old Value: ' + oldmap.get(oppObj.id).NextStep + ', New Value: ' + oppObj.NextStep;
                        objTask.Type = CustomConstants.TaskTypeNextStep;
                        objTask.WhatId = oppObj.Id;
                        lstTask.add(objTask);
                    }
                }else if(oppObj.StageName != oldmap.get(oppObj.Id).StageName && oppObj.StageName == CustomConstants.OpportunityStageCW){
                    sClosedWonOppId.add(oppObj.id);
                }
                if(oppObj.OwnerId != oldmap.get(oppObj.Id).OwnerId){
                    sOppId.add(oppObj.id);
                    sOldOppOwnerId.add(oppObj.OwnerId);
                }else if(oppObj.StageName == CustomConstants.OpportunityStageCWI && oppObj.StageName != oldmap.get(oppObj.ID).StageName){
                    partnerAccs.add(oppObj.Partner_Account__c);
                }
            }
            if(!lstTask.isEmpty() && istaskinsert == false) {         
                istaskinsert = true;  
                InsertTask insTask = new InsertTask();
                insTask.createTask(lstTask);
               // Database.insert(lstTask);
            } 
            // Create Installment Opportunities
            if(!sClosedWonOppId.isEmpty()){
                List<Opportunity> lstClosedWonOpp = [SELECT id, SBQQ__PrimaryQuote__c FROM Opportunity WHERE id IN: sClosedWonOppId and SBQQ__PrimaryQuote__c != null AND SBQQ__PrimaryQuote__r.Total_Installments__c > 0];
               // OpportunityInstallmentsAction.createInstallmentOpportunities(lstClosedWonOpp);
                
                string strSOQL = 'SELECT id, SBQQ__PrimaryQuote__c FROM Opportunity WHERE id IN: sClosedWonOppId and SBQQ__PrimaryQuote__c != null AND SBQQ__PrimaryQuote__r.Total_Installments__c > 0';
                //BatchExecOpportunityInstallmentsAction objBatch = new BatchExecOpportunityInstallmentsAction(strSOQL, sClosedWonOppId);
                //Database.executeBatch(objBatch, 200);
            }
            
            map<ID,Account> partnerAccountMap = new map<ID,Account>();
            // Do not execute SOQL if partnerAccs is blank
            if(!partnerAccs.isEmpty()){
                partnerAccountMap = new map<ID,Account>([SELECT ID,Partner_Commission_Type__c,PartnerType__c FROM Account WHERE ID IN: partnerAccs AND PartnerType__c !=: CustomConstants.OpportunityReferralPartner]);
            }
            
            list<Account> accListupdate = new list<Account>();   
            for(Opportunity oppObj2 : newmap.values()){
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                
                if(oppObj2.Is_Installment_Opportunity__c == false &&  oppObj2.Has_Installments__c == false) {                    
                    if(oppObj2.StageName == CustomConstants.OpportunityStageCW && oppObj2.StageName != oldmap.get(oppObj2.ID).StageName){
                        Account tempAccount  = new Account(ID=oppObj2.AccountID);
                        
                        // Qualifying Information
                        tempAccount.Current_GL__c = oppObj2.ERP_System__c;
                        tempAccount.Current_GL_Other__c = oppObj2.Other_ERP__c;                        
                        tempAccount.CRM_System__c = oppObj2.CRM_System__c;
                        tempAccount.Other_CRM__c = oppObj2.CRM_Other__c;                        
                        tempAccount.HR_System__c = oppObj2.HR_System__c;
                        tempAccount.Other_HR__c = oppObj2.HR_System_Other__c;
                        tempAccount.Current_Budgeting_Tool__c = oppObj2.Current_Budgeting_Tool__c;
                        
                        tempAccount.Discovery_UI__c = oppObj2.Discovery_UI__c;
                        tempAccount.Competition__c = oppObj2.Competition__c;
                        tempAccount.Budgeted_Project__c = oppObj2.Budgeted_Project__c;
                        tempAccount.Time_Frame__c = oppObj2.Time_Frame__c;
                        tempAccount.Follow_Up__c = oppObj2.Referral_Follow_Up__c;
                        tempAccount.Pain_Points__c = oppObj2.Reason_for_change_Pain_Points__c;
                        tempAccount.Incumbent_Budgeting_Tool__c = oppObj2.Incumbent_Budgeting_Tool__c;
                        if(oppObj2.Partner_Implementer__c != Null)                      
                            tempAccount.Partner_Implementer__c = oppObj2.Partner_Implementer__c;
                       
                        // Partner Information
                        if(oppObj2.Partner_Account__c != CustomConstants.IntacctAccountId && oppObj2.Partner_Account__c!= null && !partnerAccountMap.isEmpty() && partnerAccountMap.containsKey(oppObj2.Partner_Account__c) && partnerAccountMap.get(oppObj2.Partner_Account__c).PartnerType__c != CustomConstants.OpportunityReferralPartner){       
                            
                            tempAccount.Partner__c = oppObj2.Partner_Account__c;
                            tempAccount.Partner_Commission_Type__c = oppObj2.Partner_Commission_Type__c;
                            tempAccount.Partner_Contact__c = oppObj2.Partner_Contact__c;                            
                        }
                        accListupdate.add(tempAccount);
                    }
                }else if(oppObj2.StageName == CustomConstants.OpportunityStageCWI && oppObj2.StageName != oldmap.get(oppObj2.ID).StageName){
                    
                    Account tempAccount  = new Account(ID=oppObj2.AccountID);
                    if(oppObj2.Partner_Account__c!= null && !partnerAccountMap.isEmpty() && partnerAccountMap.containsKey(oppObj2.Partner_Account__c) && partnerAccountMap.get(oppObj2.Partner_Account__c).PartnerType__c != CustomConstants.OpportunityReferralPartner){                     
                        
                        tempAccount.Partner__c = oppObj2.Partner_Account__c;
                        tempAccount.Partner_Commission_Type__c = oppObj2.Partner_Commission_Type__c;
                        tempAccount.Partner_Contact__c = oppObj2.Partner_Contact__c;                            
                    }
                    accListupdate.add(tempAccount);
                    
                }
            }
            
            if(!accListupdate.isEmpty() && oppAccountrecurssionFlag == false){                
                oppAccountrecurssionFlag = true;
                update accListupdate;
            }
            
            // Create Opportunity Team -- START
            Map<Id, Opportunity> mapNewOpportunity = new Map<Id, Opportunity>([SELECT id, Type, OwnerId, New_ARR__c, Accountid, Account.OwnerId, Owner.Role__c, Account.Account_CSM__c FROM Opportunity WHERE id in: newmap.keyset() AND OwnerID != null AND AccountId != null AND Account.Ownerid != null]);
            if(!mapNewOpportunity.isEmpty()){
                createOpportunityTeamMember(mapNewOpportunity, sOldOppOwnerId);
            }
        }//End of try
        Catch(exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//END OF METHOD
    
    /**@@
        #DESCRIPTION     : This method will get called on before insert of Opportunity record.
                           This method will set default information on opportunity
        #Paramaters      : List<Opportunity> newRecords
        #Return type     : void
    @@**/
    public static void OnBeforeInsert(List<Opportunity> newRecords){
        try{
            
            set<ID> accIDs = new set<ID>();
            set<ID> conIDs = new set<ID>();  
            set<ID> contractIDs = new set<ID>();                   
            set<id> partnerAccs  = new set<ID>();           
            
            for(Opportunity oppObj : newRecords){
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                if(oppObj.Is_Installment_Opportunity__c == false &&  oppObj.Has_Installments__c == false) {
                    if(oppObj.AccountID != null){
                        accIDs.add(oppObj.AccountID);
                    }
                    if(oppObj.Primary_Contact__c != null){
                        conIDs.add(oppObj.Primary_Contact__c);
                    }
                    if(oppObj.SBQQ__RenewedContract__c != null && oppObj.SBQQ__Renewal__c == true){                
                        contractIDs.add(oppObj.SBQQ__RenewedContract__c);
                    }                                                               
                    if(trigger.isInsert && oppObj.SDR_Owner__c == null && oppObj.Type == CustomConstants.OpportunityTypeNew && userinfo.getProfileId() == CustomConstants.SDRProfileId){
                        oppObj.SDR_Owners__c = userinfo.getuserID();
                    }
                    if(oppObj.Partner_Account__c != null){
                        partnerAccs.add(oppObj.Partner_Account__c);
                    }
                }
            }
            
            Map<Id, Id> mapOriginalOppWithContract = new Map<Id, Id>();
            Map<Id, Opportunity> mapContractWithOriginalOpp = new Map<Id, Opportunity>();
            if(!contractIDs.isEmpty()){
                for(Contract oContract: [SELECT ID,SBQQ__Opportunity__c, SBQQ__RenewalOpportunity__c FROM Contract WHERE ID IN: contractIDs]){
                    mapOriginalOppWithContract.Put(oContract.SBQQ__Opportunity__c , oContract.id);
                }
                
                if(!mapOriginalOppWithContract.isEmpty()){
                      system.debug(mapOriginalOppWithContract);
                    for(Opportunity opp: [SELECT ID, OwnerId, Other_ERP__c, Partner_Account__c, CRM_Other__c, CRM_System__c, CloseDate, Subscription_End_Date__c, ERP_System__c, HR_System_Other__c, HR_System__c, Incumbent_Budgeting_Tool__c, Subscription_Start_Date__c, Name, Account.Name, Reason_for_change_Pain_Points__c, Time_Frame__c, Competition__c, Referral_Follow_Up__c,Fiscal_Year_End__c,Partner_Contact__c, Primary_Contact__c ,Partner_Implementer__c,Partner_Influencer_Account__c,Partner_Commission_Notes__c,Partner_Commission_Type__c,Partner_Fee__c FROM Opportunity WHERE ID IN: mapOriginalOppWithContract.keyset()]){
                       system.debug(opp.Partner_Account__c);
                      
                        partnerAccs.add(opp.Partner_Account__c);                 
                        mapContractWithoriginalOpp.Put(mapOriginalOppWithContract.get(opp.ID), opp);                
                    }
                }
            }
            map<ID,Account> accountMap = new map<ID,Account>();
            if(!accIDs.isEmpty()){
                accountMap = new map<ID,Account>([SELECT Account_CSM__c,Fiscal_Year_End__c,Follow_Up__c,ID,OwnerID,Partner_Contact__c,Partner_Contact__r.Name,Partner__c,Partner_Commission_Type__c,Partner__r.Partner_Commission_Type__c,PartnerType__c,Partner__r.PartnerType__c  FROM Account WHERE ID IN: accIDs]);        
            }
            map<ID,Contact> contactMap = new map<ID,Contact>();
            if(!conIDs.isEmpty()){
                contactMap = new map<ID,Contact>([SELECT ID,Reporting__c,Incumbent_Budgeting_Tool__c,Dashboard__c,Expense_Planning__c,Time_Frame__c,Reason_for_change_Pain_Points__c,Competition__c,Budgeted_Project__c,Fiscal_Year_End__c,ERP__c,HR__c,Other_HR__c,Other_CRM__c,CRM__c,Other_ERP__c,Multiple_Sites__c,Key_Features_Needed__c,Capital_Planning_Needs__c,Cash_Flow_Balance_Sheet__c,Consolidation__c,Revenue_Planning__c,Forecasting__c,Personnel_Planning__c,OwnerID, LeadSource,Lead_Offer_Most_Recent__c,Lead_Offer_Original__c,Lead_Source_Most_Recent__c FROM Contact WHERE ID IN: conIDs]);
            }
            map<ID,Account> accountParnterMap = new map<ID,Account>();
            set<ID> accountIdsPartners = new set<ID>();
            for(Opportunity oppObj2 : newRecords){
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                if(oppObj2.Is_Installment_Opportunity__c == false &&  oppObj2.Has_Installments__c == false) {
                    if(oppObj2.AccountID != null && accountMap.containsKey(oppObj2.AccountID) && accountMap.get(oppObj2.AccountID).OwnerID != null){
                        accountIdsPartners.add(accountMap.get(oppObj2.AccountID).Partner__c);                
                    }                    
                }
            }
            /*if(!accountMap.isEmpty()){
                for(Account acc: accountMap.values()){
                    if(acc.Partner__c != null){
                        partnerAccs.add(acc.Partner__c);
                    }
                }
            }*/
            if(!accountIdsPartners.isEmpty()){ 
                accountParnterMap  = new Map<ID,Account>([SELECT ID,OwnerID,Partner_Contact__c,Partner__c,Follow_Up__c,Partner_Commission_Type__c,Partner__r.Partner_Commission_Type__c FROM Account WHERE ID IN: accountIdsPartners]);         
            }
            
            map<ID,Account> partnerAccountMap = new map<ID,Account>();           
            if(!partnerAccs.isEmpty()){
                partnerAccountMap = new map<ID,Account>([SELECT ID,Partner_Commission_Type__c,PartnerType__c FROM Account WHERE ID IN: partnerAccs AND Partner_Commission_Type__c != null]);
            }
            Map<String, OpportunitySource__c> mcs = OpportunitySource__c.getAll();
            for(Opportunity oppObj2 : newRecords)
            {                
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
               system.debug(oppObj2.Is_Installment_Opportunity__c);
                if(oppObj2.Is_Installment_Opportunity__c == false &&  oppObj2.Has_Installments__c == false) { 
                system.debug(oppObj2.SBQQ__RenewedContract__c);    
                    system.debug(oppObj2.SBQQ__Renewal__c);    
                    if(oppObj2.SBQQ__RenewedContract__c != null && oppObj2.SBQQ__Renewal__c == true){     
                                         
                        // get old opportunity 
                        if(mapContractWithoriginalOpp.containsKey(oppObj2.SBQQ__RenewedContract__c)){                            
                            opportunity oldOpp = mapContractWithoriginalOpp.get(oppObj2.SBQQ__RenewedContract__c);
                            
                            oppObj2.CRM_Other__c = oldOpp.CRM_Other__c;
                            oppObj2.CRM_System__c = oldOpp.CRM_System__c;
                            oppObj2.CloseDate = oldOpp.Subscription_End_Date__c.adddays(1);
                            oppObj2.Competition__c = oldOpp.Competition__c;
                            oppObj2.ERP_System__c = oldOpp.ERP_System__c;
                            oppObj2.Fiscal_Year_End__c = oldOpp.Fiscal_Year_End__c;
                            oppObj2.HR_System_Other__c = oldOpp.HR_System_Other__c;
                            oppObj2.HR_System__c = oldOpp.HR_System__c;
                            oppObj2.Incumbent_Budgeting_Tool__c = oldOpp.Incumbent_Budgeting_Tool__c;
                            oppObj2.Name = oldOpp.Account.Name + ' Renewal Opportunity ' + oldOpp.Subscription_End_Date__c.adddays(1).Year();                                
                            oppObj2.Other_ERP__c = oldOpp.Other_ERP__c;  // UNCOMMENT THIS LINE WHEN MOVE TO PRODUCTION
                            oppObj2.Partner_Fee__c = oldOpp.Partner_Fee__c;
                            oppObj2.Reason_for_change_Pain_Points__c = oldOpp.Reason_for_change_Pain_Points__c;
                            oppObj2.Referral_Follow_Up__c = oldOpp.Referral_Follow_Up__c;                           
                            oppObj2.Time_Frame__c = oldOpp.Time_Frame__c;
                            oppObj2.Order_Type__c = CustomConstants.OpportunityTypeRenewal;
                            
                            oppObj2.Partner_Account__c = oldOpp.Partner_Account__c;
                            oppObj2.Primary_Contact__c = oldOpp.Primary_Contact__c;
                            oppObj2.Referral_Follow_Up__c = oldOpp.Referral_Follow_Up__c;
                            oppObj2.Partner_Contact__c = oldOpp.Partner_Contact__c;
                            oppObj2.Partner_Implementer__c = oldOpp.Partner_Implementer__c;
                            oppObj2.Partner_Influencer_Account__c = oldOpp.Partner_Influencer_Account__c;
                            oppObj2.Partner_Commission_Notes__c = oldOpp.Partner_Commission_Notes__c;
                            oppObj2.Partner_Commission_Type__c = oldOpp.Partner_Commission_Type__c;
                            //oppObj2.Partner_Fee__c = oldOpp.Partner_Fee__c;

                            // EA-587 -- Partner fee opportunity bugs
                            if(oppObj2.Partner_Fee__c == true){
                                oppObj2.OwnerID = oldOpp.OwnerId;
                            }                
                        }
                                     
                    }
                    
                    if(oppObj2.AccountID != null && accountMap.containsKey(oppObj2.AccountID) && accountMap.get(oppObj2.AccountID).OwnerID != null){
                        if(oppObj2.SBQQ__Renewal__c == true && accountMap.get(oppObj2.AccountID).Account_CSM__c != null){            
                            oppObj2.OwnerID = accountMap.get(oppObj2.AccountID).Account_CSM__c;
                            oppObj2.Partner_Fee__c = false;
                        }                        
                        if((oppObj2.Type == CustomConstants.OpportunityTypeAddOn) && oppObj2.AccountID != null && accountMap.containsKey(oppObj2.AccountID) && accountMap.get(oppObj2.AccountID).Partner__c!= null &&  accountMap.get(oppObj2.AccountID).Partner__r.PartnerType__c != CustomConstants.OpportunityReferralPartner ){
                            // EA-425
                            //oppObj2.Partner_Contact__c = accountMap.get(oppObj2.AccountID).Partner_Contact__c;
                            //oppObj2.Partner_Account__c = accountMap.get(oppObj2.AccountID).Partner__c;                            
                            //oppObj2.Referral_Follow_Up__c= accountMap.get(oppObj2.AccountID).Follow_Up__c;
                            //oppObj2.Partner_Commission_Type__c = accountMap.get(oppObj2.AccountID).Partner__r.Partner_Commission_Type__c;
                            
                            //Fiscal Year
                            oppObj2.Fiscal_Year_End__c = accountMap.get(oppObj2.AccountID).Fiscal_Year_End__c;
                                                
                        }
                    }                     
                }
            }            
        }//End of try
        Catch(exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//END OF METHOD
    
    /**@@
        #DESCRIPTION     : This method will get called on before update of Opportunity record.
                           This method will set default information on opportunity                           
        #Paramaters      : List<Opportunity> newRecords, Map<Id,Opportunity> oldMap
        #Return type     : void
    @@**/
    public static void OnBeforeUpdate(List<Opportunity> newRecords, Map<Id,Opportunity> oldMap){
        try{
            set<ID> conIDs = new set<ID>();
            set<Id> sAccId = new set<Id>();            
            for(Opportunity oppObj : newRecords){
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                if(oppObj.Is_Installment_Opportunity__c == false &&  oppObj.Has_Installments__c == false) {        
                    if(oppObj.Primary_Contact__c != null){
                        conIDs.add(oppObj.Primary_Contact__c);
                    }
                    
                    if(oppObj.Partner_Account__c!= null && oppObj.Partner_Account__c != oldmap.get(oppObj.ID).Partner_Account__c){
                        
                        sAccId.add(oppObj.Partner_Account__c);
                    }
                    
                }
            }
            Map<Id, String> mapPartnerWithCommissionType = new Map<Id, String>();
            if(!sAccId.isEmpty()){                
                List<Account> lstPartnerAccounts = [SELECT id, Partner_Commission_Type__c from Account WHERE id in: sAccId];
                for(Account acc: lstPartnerAccounts){
                    mapPartnerWithCommissionType.Put(acc.id, acc.Partner_Commission_Type__c);
                }
                for(Opportunity opp : newRecords){
                    if(opp.Is_Installment_Opportunity__c == false &&  opp.Has_Installments__c == false && mapPartnerWithCommissionType .containsKey(opp.Partner_Account__c)) {
                        opp.Partner_Commission_Type__c = mapPartnerWithCommissionType .get(opp.Partner_Account__c);
                    }
                }                
            }
            if(!conIDs.isEmpty()){
                map<ID,Contact> contactMap = new map<ID,Contact>([SELECT ID,LeadSource,Lead_Offer_Most_Recent__c,Lead_Offer_Original__c,Lead_Source_Most_Recent__c FROM Contact WHERE ID IN: conIDs]);
                Map<String, OpportunitySource__c> mcs = OpportunitySource__c.getAll();
                for(Opportunity opp : newRecords)
                {
                    // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                    if(opp.Is_Installment_Opportunity__c == false &&  opp.Has_Installments__c == false) {
                        if(contactMap!=null && contactMap.containskey(opp.Primary_Contact__c)&& opp.Primary_Contact__c != null){
                            if(contactMap.get(opp.Primary_Contact__c).LeadSource!=null){
                                opp.LeadSource = contactMap.get(opp.Primary_Contact__c).LeadSource;
                            }
                            if(contactMap .get(opp.Primary_Contact__c).Lead_Offer_Most_Recent__c!=null){
                                opp.Lead_Offer_Most_Recent__c = contactMap .get(opp.Primary_Contact__c).Lead_Offer_Most_Recent__c;
                            }
                            if(contactMap .get(opp.Primary_Contact__c).Lead_Offer_Original__c!=null){
                                opp.Lead_Offer_Original__c = contactMap .get(opp.Primary_Contact__c).Lead_Offer_Original__c;
                            }
                            if(contactMap .get(opp.Primary_Contact__c).Lead_Source_Most_Recent__c!=null){
                                opp.Lead_Source_Most_Recent__c = contactMap .get(opp.Primary_Contact__c).Lead_Source_Most_Recent__c;
                            }
                            String ls = contactMap .get(opp.Primary_Contact__c).LeadSource;
                            if(mcs.containskey(ls) && ls!=null){
                                opp.Opportunity_Source__c = mcs.get(ls).Opp_source__c;
                            }
                            else 
                                opp.Opportunity_Source__c = null;     
                        }
                    }
                    
                }
            }
            
        }
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//END OF METHOD
    
    
    /**@@
    #DESCRIPTION       : Set Contact Lifecycle field based on Opportunity Stage change
    #Paramaters        : trigger.newMap, trigger.oldMap
    @@**/    
    public static void setContactLifecycle(Map<Id,Opportunity> newOppMap, Map<Id,Opportunity> oldOppMap){
        List<contact> lstContact = new List<contact>();
        Set<Id> oppIds = new Set<Id>();
        Set<Id> accountIds = new Set<Id>();
        for(Opportunity opp: newOppMap.values()){
            // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
            if(opp.Is_Installment_Opportunity__c == false &&  opp.Has_Installments__c == false) {
                // Only get accounts for opportunities that are new
                if(opp.Type == CustomConstants.OpportunityTypeNew && opp.AccountId != NULL && !opp.Is_Installment_Opportunity__c){
                    accountIds.add(opp.AccountId);
                    oppIds.add(opp.Id);
                }//End of if
            }//End of if
        }//End of for loop
        
        //gets list of accounts that is not a customer with all contacts 
        // SL: Incorrect logic on querying accounts, the logic below will grab cancelled customers, and accounts that are not customers
        Map<Id,List<Contact>> mapAccWithContacts = new Map<Id,List<Contact>>();
        if(!accountIds.isEmpty()){
            List<account> newAccountList=[Select id, Type, Status__c, (Select Id FROM Opportunities WHERE Type =: CustomConstants.OpportunityTypeNew AND SBQQ__Renewal__c = False AND StageName != :CustomConstants.OpportunityStageDisq AND StageName != :CustomConstants.OpportunityStageCL AND StageName != :CustomConstants.OpportunityStageCLNP AND StageName != :CustomConstants.OpportunityStageCW AND StageName != :CustomConstants.OpportunityStageCWI), (Select id, name, Status__c, Lifecycle_Stage__c, Unqualified_Reason__c from Contacts) from Account Where Id IN:accountIds AND ( (Type = :CustomConstants.AccountTypeCustomer AND Status__c =: CustomConstants.AccountStsCancelled) OR Type NOT IN (:CustomConstants.AccountTypeCustomer, :CustomConstants.AccountTypePartnerProspect, :CustomConstants.AccountTypePartner) )];
            
            // Map list of contacts for each account
            for(Account acc: newAccountList){
                // If there are two or more open opportunities, skip
                if(acc.opportunities.size() >= 2)
                    continue;
                
                // If there is an open new opportunity, and the oppty that's being updated
                // isn't that open opportunity, then don't do anything
                // Example: When user Close Lost oppty when there's still an open new oppty, don't do anything
                if(acc.opportunities.size() == 1 && !oppIds.contains(acc.opportunities[0].Id))
                    continue;
                
                if(acc.contacts.size() > 0){
                    // All contacts
                    mapAccWithContacts.put(acc.id, acc.contacts);
                }//End of if
            }//End of for loop
        }//End of if
        String lifecycle;
        for(Opportunity opp: newOppMap.values())
        {
            // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
            if(opp.Is_Installment_Opportunity__c == false &&  opp.Has_Installments__c == false) {
                // Skip opportunities that aren't new or don't have an account
                if(opp.Type != CustomConstants.OpportunityTypeNew || opp.AccountId == NULL)
                    continue;
                
                // If the account is not in the list with contacts, skip
                if(mapAccWithContacts.get(opp.AccountId) == null)
                    continue;
                
                // If it's an installment oppty, skip
                if(opp.Is_Installment_Opportunity__c)
                    continue;
                
                // Double-check to make sure that it's not a renewal oppty generated by SBQQ
                if(Trigger.isInsert && opp.SBQQ__Renewal__c == True)
                    continue;
                
                // oldmap is missing for update, skip
                if(Trigger.isUpdate && oldOppMap == null)
                    continue;
                
                // If the stage didn't change, skip
                if(Trigger.isUpdate && oldOppMap.get(opp.id).StageName == opp.StageName)
                    continue;
                
                lifecycle = getLifecycleForCon(opp);
                
                for(Contact con: mapAccWithContacts.get(opp.AccountId)){
                    // Don't update unresponsive or unqualified contacts
                    if(con.Status__c == CustomConstants.ContactStatusUnresponsive || con.Status__c == CustomConstants.ContactStatusUnqualified)
                        continue;
                    
                    if(lifecycle != CustomConstants.LifecycleMAL && con.Status__c != CustomConstants.ContactStatusRaw && con.Status__c != CustomConstants.ContactStatusNew && con.Status__c != CustomConstants.ContactStatusRestored){
                        con.Status__c = CustomConstants.ContactStatusQualified;
                        con.Lifecycle_Stage__c = lifecycle;
                        lstContact.add(con);
                    }//End of if
                    else if(lifecycle == CustomConstants.LifecycleMAL){
                        con.Status__c = CustomConstants.ContactStatusUnqualified;
                        con.Unqualified_Reason__c = CustomConstants.ContactUnQualifiedReasonNI;
                        con.Lifecycle_Stage__c = lifecycle;
                        lstContact.add(con);
                    }//End of else if
                }//End of if
            }//End of for loop
            
        }//End of for loop
        try{
            if(!lstContact.isEmpty()){
                update lstContact;
            }//End of if
        }
        Catch(Exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
        }
        
    }//End of Method
    
    /**@@
    #DESCRIPTION       : Determine lifecycle of contact based off of the opportunity stage (used in opportunity and contact trigger)
    #Paramaters        : opp
    @@**/
    public static String getLifecycleForCon(Opportunity opp)
    {
        String lifecycle = '';
        
        if(opp.stageName == CustomConstants.OpportunityStageProspect)
        {
            lifecycle = CustomConstants.LifecycleSQL;
        }
        if(opp.StageName == CustomConstants.OpportunityStageSAO)
        {
            lifecycle = CustomConstants.LifecycleSAO;
        }//End of if
        else if(opp.StageName == CustomConstants.OpportunityStageSDRNur)
        {
            lifecycle = CustomConstants.LifecycleSQL;
        }//End of else if
        // If Opportunity stage changes to Field Nurture or SQO and above
        else if(opp.StageName == CustomConstants.OpportunityStageFieldNur || opp.StageName == CustomConstants.OpportunityStageSQO || opp.StageName == CustomConstants.OpportunityStageSolExp || opp.StageName == CustomConstants.OpportunityStageProPre || opp.StageName == CustomConstants.OpportunityStageComAndNeg || opp.StageName == CustomConstants.OpportunityStagePrepForSig || opp.StageName == CustomConstants.OpportunityStageSigned || opp.StageName == CustomConstants.OpportunityStageSentToOrders)
        {
            lifecycle = CustomConstants.LifecycleSQO;
            
        }//End of else if
        // If opportunity is Closed won
        else if(opp.StageName == CustomConstants.OpportunityStageCW || opp.StageName == CustomConstants.OpportunityStageCWI)
        {
            lifecycle = CustomConstants.LifecycleCustomer;
        }//End of else if 
        // If opportunity is Closed lost
        else if(opp.StageName == CustomConstants.OpportunityStageDisq || opp.StageName == CustomConstants.OpportunityStageCL || opp.StageName == CustomConstants.OpportunityStageCLNP)
        {
            lifecycle = CustomConstants.LifecycleMAL;
        }
        
        return lifecycle;
    }//END OF METHOD
    
    /**@@
        #DESCRIPTION       : When opportunity changes based on conditions update its related contacts. 
        #Paramaters        : trigger.new, trigger.oldMap
    @@**/    
    public static void reassignOwnerOnOppConditions(List<Opportunity> newList, Map<Id,Opportunity> oldMap){
        /*
         *  allAccIds : All account ids to look at
         *  accIdsMoveToAO : List of accounts where contacts should be assigned to Account Owner
         *  accIdsMoveToOO : List of accounts where contacts should be assigned to Oppty Owner
         *  accIdsMoveToSDR : List of accounts where contacts should be assigned to SDR
         *  mapAccIdToOO : Map Account Id To Opportunity Owner
         *  mapAccIdToSDR : Map Account ID To SDR Owner
         *  contactsToBeUpdated : Contacts that will be re-assigned
         */
        Set<Id> allAccIds = new Set<Id>();
        Set<Id> accIdsMoveToAO = new Set<Id>();
        Set<Id> accIdsMoveToOO = new Set<Id>();
        Set<Id> accIdsMoveToSDR = new Set<Id>();
        Map<Id, Id> mapAccIdToOO = new Map<Id, Id>();
        Map<Id, Id> mapAccIdToSDR = new Map<Id, Id>();
        List<Contact> contactsToBeUpdated = new List<Contact>();
        Map<Id, Account> mapAccIdToAcc;
        Account tempAcc;
        
        for(Opportunity oppObj : newList)
            allAccIds.add(oppObj.AccountId);
        
        mapAccIdToAcc = new Map<Id,Account>([SELECT Id, Type, Status__c, Number_of_Open_New_Opportunities__c FROM Account WHERE Id IN :allAccIds]);
        
        
        for(Opportunity oppObj: newList){
            // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
            if(oppObj.Is_Installment_Opportunity__c == false &&  oppObj.Has_Installments__c == false) {
                system.debug('oppObj.SDR_Owners__c>>>'+oppObj.SDR_Owners__c);
                system.debug('oppObj.StageName>>>>'+oppObj.StageName);
                // if it's an update, perform some checks
                if(Trigger.isUpdate)
                {
                    // if oldMap is not available, skip
                    if(oldMap == null)
                        continue;
                    // if oppty isn't in oldMap, skip
                    else if(!oldMap.containsKey(oppObj.id))
                        continue;
                    // if stage didn't change, skip
                    else if(oldMap.get(oppObj.id).StageName == oppObj.StageName)
                        continue;
                }
                // else make sure it's an insert, otherwise skip
                else if(!Trigger.isInsert)
                    continue;
                
                // if there's no account, skip
                if(oppObj.AccountId == null && !mapAccIdToAcc.containsKey(oppObj.AccountId))
                   continue;
                
                tempAcc = mapAccIdToAcc.get(oppObj.AccountId);
                
                // if it's a customer account, skip
                if(tempAcc.Type == CustomConstants.AccountTypeCustomer && tempAcc.Status__c != CustomConstants.AccountStsCancelled)
                    continue;
                
                System.debug('### number of open new opptys: '+tempAcc.Number_of_Open_New_Opportunities__c);
                
                // if the account has 2 or more open new opportunities, then skip
                // this covers the scenario of 1 of 2 oppty's being disqualified or closed
                if(tempAcc.Number_of_Open_New_Opportunities__c >= 2)
                    continue;
                
                // if the account has an open new opportunity, and a new one is being added, skip
                if(tempAcc.Number_of_Open_New_Opportunities__c == 1 && Trigger.isInsert)
                    continue;
                
                // if it's a add-on, renewal, or installment oppty, skip
                if(oppObj.Is_Installment_Opportunity__c || oppObj.SBQQ__Renewal__c || oppObj.Type != CustomConstants.OpportunityTypeNew)
                 continue;
                
                // if it's a new oppty, assign to account owner
                if(Trigger.isInsert)
                {
                    accIdsMoveToAO.add(oppObj.accountId);
                }
               
                // if it moved to prospect, assign to oppty owner
                else if(oppObj.stageName == CustomConstants.OpportunityStageProspect)
                {
                    mapAccIdToOO.put(oppObj.accountId, oppObj.OwnerId);
                    accIdsMoveToOO.add(oppObj.accountId);
                }
               
                // if it moved to SDR Nurture, disqualified, or closed lost, assign to SDR Owner
                else if(oppObj.SDR_Owners__c != null && (oppObj.StageName== CustomConstants.OpportunityStageSDRNur || oppObj.stageName == CustomConstants.OpportunityStageDisq || oppObj.stageName == CustomConstants.OpportunityStageCL || oppObj.stageName == CustomConstants.OpportunityStageCLNP))
                {
                    System.debug('When Stage is changed to SDR Nurture');
                    mapAccIdToSDR.put(oppObj.accountId, oppObj.SDR_Owners__c);
                    System.debug('**mapAccIdToSDR**'+mapAccIdToSDR);
                    accIdsMoveToSDR.add(oppObj.accountId);
                    System.debug('**accIdsMoveToSDR**'+accIdsMoveToSDR);
                }
            }
        } //END OF FOR LOOP ON OPPTYS
        system.debug('accIdsMoveToSDR>>>'+accIdsMoveToSDR);
        try{
            // add contacts to be assigned to account owner
            if(!accIdsMoveToAO.isEmpty())
            {
                for(Contact conObj : [SELECT Id, Name, Account.OwnerId FROM Contact WHERE accountId IN : accIdsMoveToAO])
                {
                    conObj.OwnerId = conObj.Account.OwnerId;
                    contactsToBeUpdated.add(conObj);
                }
            }
            
            // add contacts to be assigned to opportunity owner
            if(!accIdsMoveToOO.isEmpty())
            {
                for(Contact conObj : [SELECT Id, Name, accountId FROM Contact WHERE accountId IN : accIdsMoveToOO])
                {
                    conObj.OwnerId = mapAccIdToOO.get(conObj.accountId);
                    contactsToBeUpdated.add(conObj);
                }
            }
            
            // add contacts to be assigned to SDR
            if(!accIdsMoveToSDR.isEmpty())
            {
                for(Contact conObj : [SELECT Id, Name, accountId FROM Contact WHERE accountId IN : accIdsMoveToSDR])
                {
                    System.debug('**conObj**'+conObj);
                    system.debug(mapAccIdToSDR.get(conObj.accountId));
                    conObj.OwnerId = mapAccIdToSDR.get(conObj.accountId);
                    contactsToBeUpdated.add(conObj);
                }
            }
            if(!contactsToBeUpdated.isEmpty()){
                update contactsToBeUpdated;
            }
            system.debug('**contactsToBeUpdated**'+contactsToBeUpdated);
        }
        Catch(Exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
        }

    }
    
    /**@@
    #DESCRIPTION     :  Order Notification: When opportunity stage is changed to 'Sent to Orders' first time
    This method will send email to all related contacts of Opportunity account for below Purchasing_Role__c
                               - Primary Contact
                               - Primary Customer Contact
    #Paramaters      :  newRecords List<Opportunity> : newRecords is list of opportunities, Map<Id, Opportunity> oldMap
    @@**/ 
    public static boolean isOrderNotificationSent = false;
    public static void OrderNotificationandCSNotification(List<Opportunity> newRecords, Map<Id, Opportunity> oldMap){
        set<Id> setAccountIds = new set<Id>();
        List<opportunity> lstOpportunity= new list<opportunity>();
        List<opportunity> lstOpportunityUpdate = new list<opportunity>();
        
        //Email Template for Order Notification
        EmailTemplate templateIdOwner;
        Map<Id, opportunity> oppMap;
        
        // ensure that there's an oppty in the list that has the stage we're looking for
        Boolean sentToOrdersExist = false;
        for(Opportunity oppObj : newRecords)
        {
            if(oppObj.StageName == CustomConstants.OpportunityStageSentToOrders)
            {
                sentToOrdersExist = true;
                break;
            }
        }
        
        if(sentToOrdersExist)
            oppMap = new Map<Id, Opportunity>([select id,owner.id, Is_Installment_Opportunity__c,StageName,Type,X1stTime_SentToOrders__c, Has_Installments__c, owner.email,Account.owner.email, Lastmodifiedby.email from opportunity where StageName =: CustomConstants.OpportunityStageSentToOrders AND Sent_to_Orders__c = false AND Id IN: newRecords]);
        else
            oppMap = new Map<Id, Opportunity>();
        
        if(oppMap.size() > 0)
            templateIdOwner = [Select id from EmailTemplate where name =: CustomConstants.strOrderNotificationTemplate];
        
        for(Opportunity opp: newRecords){
            // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
            if(opp.Is_Installment_Opportunity__c == false &&  opp.Has_Installments__c == false) {
                //Opportunity stage is Sent to Orders first time
                System.debug(isOrderNotificationSent);
                System.debug(opp.StageName);
                System.debug(opp.Sent_to_Orders__c);
                if(isOrderNotificationSent == false && opp.StageName == CustomConstants.OpportunityStageSentToOrders && opp.Sent_to_Orders__c==False && oldMap!=null && opp.StageName != oldMap.get(opp.Id).StageName){
                    //logic to sent Order Notification Email 
                    String[] ccAddresses= new String[] {};
                    String[] toAddresses = new String[] {};
                            
                    // Update the email below to orders@adaptiveinsights.com for UAT and production
                    toAddresses.add(CustomConstants.OrderNotificationEmailId);
                    if(oppMap.containsKey(opp.id)){
                        Opportunity o = oppMap.get(opp.id);
                        
                        //The owner of the opportunity is cc'ed on the email.
                        ccAddresses.add(o.owner.email);
                        
                        
                        //If the account owner is different from the opportunity owner, the account owner is cc'ed on the email.
                        ccAddresses.add(o.Account.owner.email);
                        //If the person who moved it is different from the owner of the opportunity, they are in cc'ed on the email.
                        ccAddresses.add(o.Lastmodifiedby.email);
                        
                        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                        mail.setToAddresses(toAddresses);
                        mail.setCcAddresses(ccAddresses);
                        mail.setTemplateID(templateIdOwner.id);
                        mail.setWhatId(opp.id);
                        mail.setTargetObjectId(o.owner.id);
                        mail.setTreatTargetObjectAsRecipient(false);
                        mail.setSaveAsActivity(false);
                        //Sending Order Notification Email
                        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                        opportunity objOpp= new Opportunity(id=opp.Id);
                        //to ensure that email is only sent once (the first time it goes to "Sent to Orders"), a checkbox field we are updating here after order notification send first time.
                        objOpp.Sent_to_Orders__c=True;
                        lstOpportunity.add(objOpp);
                    }
                }// End if
                if(opp.Type == CustomConstants.OpportunityTypeNew && opp.StageName == CustomConstants.OpportunityStageSentToOrders && oldMap!=null && opp.StageName != oldMap.get(opp.Id).StageName && opp.X1stTime_SentToOrders__c == false){
                    setAccountIds.add(opp.AccountId);
                    opportunity objOppUpdate = new Opportunity(id=opp.Id);
                    objOppUpdate.X1stTime_SentToOrders__c = true;
                    lstOpportunityUpdate.add(objOppUpdate);
                }// End if
            }// End if
            
        }// End for
        isOrderNotificationSent = true;
        if(!setAccountIds.isEmpty()){                    
            list<string> lstEmails = new list<string>();
            for(Contact con:[select id,AccountId,Email from Contact where AccountId IN: setAccountIds AND Purchasing_Role__c includes (:CustomConstants.strPrimaryContact, :CustomConstants.strPrimaryCustomerContact)]){
                system.debug('-----con.Email---'+con.Email+con.id+con);
                lstEmails.add(con.Email);
            }
            If(lstEmails.isEmpty())
                return ;
            
            EmailTemplate templateId = [Select id,Subject,HtmlValue from EmailTemplate where name =: CustomConstants.EmailTemplateNameWelcomeEmail];
            OrgWideEmailAddress[] owea = [select Id from OrgWideEmailAddress where Address =: CustomConstants.CustomerSucessEmailAddress];
            List<Messaging.SingleEmailMessage> allmsg = new List<Messaging.SingleEmailMessage>();
            
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setSubject(templateId.Subject); 
            mail.setHtmlBody(templateId.HtmlValue);
            mail.setSaveAsActivity(false);
            system.debug('-----lstEmails---'+lstEmails);
            mail.setToAddresses(lstEmails);
            lstEmails.add('customersuccess@adaptiveinsights.com');
            mail.setccAddresses(lstEmails);
            
            if ( owea.size() > 0 ) {
                mail.setOrgWideEmailAddressId(owea.get(0).Id);
            }
            allmsg.add(mail);   
            Messaging.sendEmail(allmsg);
        }
        
        //Updating list of opportunity for which order notification is send when stage is set to Sent to Orders first time.
        if(!lstOpportunity.isEmpty()){
            update lstOpportunity;
        }
        //Updating list of opportunity for which order notification is send when stage is set to Sent to Orders first time.
        if(!lstOpportunityUpdate.isEmpty()){
            update lstOpportunityUpdate;
        }
    }//End of order notification method
    
    
    /**@@
    #DESCRIPTION     :  This method is used to Create Opportunity Team Members
    #Paramaters      :  List<Opportunity> lstNewOpportunity : newRecords is list of opportunities, set<Id> sOldOppOwnerId: Old Owner of Opportunity
    @@**/  
    public static void createOpportunityTeamMember(Map<Id, Opportunity> mapNewOpportunity, set<Id> sOldOppOwnerId){
       // Delete Old Opportunity Owner from Opportunity Team -- START
       if(!sOldOppOwnerId.isEmpty()){
            List<OpportunityTeamMember> lstOppTeamMemberOld = [SELECT id FROM OpportunityTeamMember Where UserId in: sOldOppOwnerId and OpportunityId in: mapNewOpportunity.keyset()];
            if(!lstOppTeamMemberOld.isEmpty()){
                database.delete(lstOppTeamMemberOld, false);
            }// End of for            
        }
        // Delete Old Opportunity Owner from Opportunity Team -- END
        
        List<OpportunityTeamMember> lstOppTeamMemberInsert = new List<OpportunityTeamMember>();
        OpportunityTeamMember objOppTeamMember;
        for(Opportunity oppObj : mapNewOpportunity.values()){
            if(oppObj.OwnerID != oppObj.Account.OwnerId){
                if(oppObj.Type == CustomConstants.OpportunityTypeNew){
                    if(oppObj.Owner.Role__c == CustomConstants.SDRRole){
                        objOppTeamMember = new OpportunityTeamMember();
                        objOppTeamMember.OpportunityId = oppObj.id;
                        objOppTeamMember.UserId = oppObj.OwnerId;
                        objOppTeamMember.Team_Member_Role__c = oppObj.Owner.Role__c;
                        lstOppTeamMemberInsert.add(objOppTeamMember);                            
                    }
                }
                // Add SDR to Opportunity Team
                if(oppObj.Type == CustomConstants.OpportunityTypeNew || oppObj.Type == CustomConstants.OpportunityTypeAddOn){ 
                    if(oppObj.Account.Account_CSM__c != null){
                        objOppTeamMember = new OpportunityTeamMember();
                        objOppTeamMember.OpportunityId = oppObj.id;
                        objOppTeamMember.UserId = oppObj.Account.Account_CSM__c;
                        objOppTeamMember.Team_Member_Role__c = CustomConstants.OpportunityTeamRoleAccCSM;
                        lstOppTeamMemberInsert.add(objOppTeamMember);
                    }
                    // Add Field Sales to Opportunity Team
                    objOppTeamMember = new OpportunityTeamMember();
                    objOppTeamMember.OpportunityId = oppObj.id;
                    objOppTeamMember.UserId = oppObj.Account.OwnerId;
                    objOppTeamMember.Team_Member_Role__c = CustomConstants.OpportunityTeamRoleAccMgr;
                    lstOppTeamMemberInsert.add(objOppTeamMember);
                }
                system.debug('###'+oppObj.Type);
                // Renewal Opportunity
                if(oppObj.Type == CustomConstants.OpportunityTypeRenewal){
                                                       
                    objOppTeamMember = new OpportunityTeamMember();
                    objOppTeamMember.OpportunityId = oppObj.id;
                    objOppTeamMember.UserId = oppObj.OwnerId;
                    objOppTeamMember.Team_Member_Role__c = CustomConstants.OpportunityTeamRoleAccCSM;
                    lstOppTeamMemberInsert.add(objOppTeamMember);
                    
                    if(oppObj.New_ARR__c > 0){
                        // Add Field Sales to Opportunity Team
                        objOppTeamMember = new OpportunityTeamMember();
                        objOppTeamMember.OpportunityId = oppObj.id;
                        objOppTeamMember.UserId = oppObj.Account.OwnerId;
                        objOppTeamMember.Team_Member_Role__c = CustomConstants.OpportunityTeamRoleAccMgr;
                        lstOppTeamMemberInsert.add(objOppTeamMember); 
                    }
                }
            }
        }
        
        if(!lstOppTeamMemberInsert.isEmpty()){
            //insert lstOppTeamMemberInsert;
            InsertOpportunityTeamMember insOppTeamMember = new InsertOpportunityTeamMember();
            insOppTeamMember.createOpportunityTeamMember(lstOppTeamMemberInsert);
        }
    }// END OF METHOD - createOpportunityTeamMember
    
    /**@@
    #DESCRIPTION   : Without Sharing wrapper class for Opportunity Teammember Creation
    #Paramaters    : List,trigger.oldMap
    @@**/
    public without sharing class InsertOpportunityTeamMember{
         public void createOpportunityTeamMember(List<OpportunityTeamMember> lstOppTeamMemberInsert){
              Database.insert(lstOppTeamMemberInsert);
         }   
    }
    
    /**@@
    #DESCRIPTION   : Without Sharing wrapper class for Task Creation
    #Paramaters    : List,trigger.oldMap
    @@**/
    public without sharing class InsertTask{
         public void createTask(List<Task> lstTask){
              Database.insert(lstTask);
         }   
    }
    
    /**@@
    #DESCRIPTION     :  Notify sales ops Team when a closed opportunity is edited by any business user other than sales ops and system admin
    #Paramaters      :  newRecords List<Opportunity> : newRecords is list of opportunities, Map<Id, Opportunity> oldMap
    @@**/ 
    public static boolean isNotificationSent = false;
    public static void NotifyIfClosedOpportunityUpdated(List<Opportunity> newRecords, Map<Id, Opportunity> oldMap){
        
        for(Opportunity opp: [Select id,Total_Service_Revenue__c,Total_Subscription_Revenue__c,StageName,Owner.name from Opportunity where id in :newRecords]){
            System.debug('Boolean Value >> '+userinfo.getProfileId() != CustomConstants.sysAdminId && userinfo.getProfileId() != CustomConstants.salesOpsId);
            if(isNotificationSent == False && (userinfo.getProfileId() != CustomConstants.sysAdminId && userinfo.getProfileId() != CustomConstants.salesOpsId) && (opp.StageName == CustomConstants.OpportunityStageCW || opp.stageName == CustomConstants.OpportunityStageCWI) && (opp.Total_Subscription_Revenue__c != oldMap.get(opp.ID).Total_Subscription_Revenue__c || opp.Total_Service_Revenue__c != oldMap.get(opp.ID).Total_Service_Revenue__c)){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                List<String> toAddress = new List<String>();
               
                //Add CustomConstants.salesOpsEmailDL if testing is completed.
                toAddress.add(CustomConstants.salesOpsEmailDL);
               
                mail.setToAddresses(toAddress);
                mail.setWhatId(opp.id);
                mail.setHTMLBody('Hi Sales Ops Team,<BR/><BR/>The Closed Won opportunity '+ URL.getSalesforceBaseUrl().toExternalForm()+'/'+opp.Id +' owned by '+ opp.Owner.Name +' has been edited by someone other than the Sales Ops team. Please review the opportunity details in Salesforce.');
                mail.setSaveAsActivity(false);
                system.debug('Mail>>'+mail);
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                Trigger_Opportunity_helper.isNotificationSent = true;
            }//End of If
        }//End of for
    
    }//End of Notify if Opportunity Updated Method
    
    /**@@
    # Author          :  Jade Global Inc.
    # Date            :  3rd Oct 2017
    # Method          :  restrictOpportunityDeletion()
    # DESCRIPTION     :  Restrict the Opportunity DELETION if the user does not belong to System admin or Sales ops Profile
    # Parameters      :  Trigger.Old
    @@**/
    public static void restrictOpportunityDeletion(List<Opportunity> OpptyRecords){
        
        list<User> lstUser = [SELECT id,ProfileId,Profile.Name FROM User WHERE id =: UserInfo.getUserId()];
        
        for(User u: lstUser){
            //if(u.Profile.Name != 'Sales Operations' || u.Profile.Name != 'System Administrator'){
            if(u.ProfileId != CustomConstants.salesOpsId && u.ProfileId != CustomConstants.sysAdminId){
                for(Opportunity O: OpptyRecords){
                    O.addError('You are Not allowed to DELETE the Opportunity. Please contact your administrator for further assistance.');
                }//End of FOR
            }//End of IF
        }//End of FOR
        
    }//End of restrictOpportunityDeletion()

}//END OF CLASS