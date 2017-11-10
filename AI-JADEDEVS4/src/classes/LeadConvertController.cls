/**@@
#CLASS NAME    :  LeadConvertController
#DESCRIPTION   :  This is a apex controller class for 'LeadConvsert' lightning component.
@@**/
public class LeadConvertController {
    
    public static boolean IsSharedFromLeadConversion = FALSE;
    public static boolean AccSharedWithUser = FALSE;
    
    /**@@
#DESCRIPTION    : This method is used to call the populatePickListOptions() for various picklist fields and initialise the 
Picklist values in InitFieldsResponse class.
#Paramaters     :  No Parameters
@@**/
    
    @AuraEnabled
    public static InitFieldsResponse initFields() {
        
        InitFieldsResponse resp = new InitFieldsResponse();
        resp.ERPSystemOptions = populatePickListOptions(Opportunity.ERP_System__c.getDescribe());
        resp.CRMSystemOptions = populatePickListOptions(Opportunity.CRM_System__c.getDescribe());
        resp.HRSystemOptions = populatePickListOptions(Opportunity.HR_System__c.getDescribe());
        resp.FiscalYearEndOptions = populatePickListOptions(Opportunity.Fiscal_Year_End__c.getDescribe());
        resp.BudgetedProjectOptions = populatePickListOptions(Opportunity.Budgeted_Project__c.getDescribe());
        resp.TimeframeOptions = populatePickListOptions(Opportunity.Time_Frame__c.getDescribe());
        resp.SolutionRequirementOptions = populatePickListOptions(Opportunity.Solution_Requirements__c.getDescribe());
        resp.OrderTypeOptions = populatePickListOptions(Opportunity.Type.getDescribe());
        resp.FollowUpOptions = populatePickListOptions(Opportunity.Referral_Follow_Up__c.getDescribe());
        resp.MDFOptions = populatePickListOptions(Opportunity.MDF_Sourced_Lead__c.getDescribe());
        
        // remove renewal from order type
        for(Integer i = 0; i < resp.OrderTypeOptions.size(); i++)
        {
            if(resp.OrderTypeOptions[i] == CustomConstants.OpportunityTypeRenewal)
            {
                resp.OrderTypeOptions.remove(i);
                break;
            }
        }
        
        return resp;
    }
    
    /**@@
#DESCRIPTION    : This return the picklist Options values of received Picklist Field.
#Paramaters     :  Picklist field
@@**/
    private static List<String> populatePickListOptions(Schema.DescribeFieldResult theDescribe) {
        List<String> resultOptions = new List<String>();
        for (Schema.PicklistEntry entry : theDescribe.getPicklistValues()) {
            if (entry.isActive()) {
                resultOptions.add(entry.getValue());
            }
        }
        return resultOptions;
    }
    
    /**@@
#DESCRIPTION    : This Class is used to set the Attribute values in Lightning component.
@@**/ 
    public class InitFieldsResponse {
        @AuraEnabled public String[] MDFOptions {get;set;}
        @AuraEnabled public String[] ERPSystemOptions {get;set;}
        @AuraEnabled public String[] CRMSystemOptions {get;set;}
        @AuraEnabled public String[] HRSystemOptions {get;set;}
        @AuraEnabled public String[] FiscalYearEndOptions {get;set;}
        @AuraEnabled public String[] BudgetedProjectOptions {get;set;}
        @AuraEnabled public String[] TimeframeOptions {get;set;}
        @AuraEnabled public String[] SolutionRequirementOptions {get;set;}
        @AuraEnabled public String[] FollowUpOptions {get;set;}
        @AuraEnabled public String[] OrderTypeOptions {get;set;}
        
    }
    
    /**@@
#DESCRIPTION    : This method is used to fetch lead detail
#Paramaters     :  Id
@@**/
    
    @AuraEnabled
    public static Lead fetchLeadDetail(Id leadId) {
        
        return ([Select id,company,Registration_Status__c,MDF_Approval_Number__c from Lead Where id =: leadId]);
        
    }
    
    /**@@
#DESCRIPTION   : Without Sharing wrapper class for Lead Conversion
#Paramaters    : List,trigger.oldMap
@@**/
    public without sharing class leadConversionMethodWrapper{        
        public boolean convertLeadbyPartnerUser(Database.LeadConvert lc, Boolean opFlag, Lead ld,  Opportunity opp, Boolean accFlag, Account accountId){   
            
            List<User> userList = [SELECT id, ContactId, Contact.AccountId, Contact.Account.OwnerId, Contact.Account.Partner_Commission_Type__c FROM User where id =: Userinfo.getUserid() LIMIT 1];
            
            
            AccountShare AccShare;
            
            system.debug('### Lead: '+ld);
            
            // if the user selected an account
            if(accFlag == false)
            {
                System.debug('### Account: '+accountId);
                //system.debug('@@@@@@@@@'+accountId);
                Account acc = [Select id, Name, ownerId, Partner_Contact__c from Account Where Id =: accountId.id];
                lc.setAccountId(acc.id);
                lc.setOwnerId(acc.ownerId);
                if(opFlag == true)
                    lc.setOpportunityName(acc.Name);
                
                System.debug('### acc: '+acc);
                System.debug('### user: '+userList[0]);
                
                if(acc.Partner_Contact__c != NULL && acc.Partner_Contact__c != userList[0].ContactId)
                {
                    System.debug('### inserting account share');
                    AccShare = new AccountShare();
                    AccShare.AccountId = acc.id;
                    AccShare.UserOrGroupId = userList[0].Id;
                    AccShare.AccountAccessLevel = 'Read';
                    AccShare.CaseAccessLevel = 'None';
                    AccShare.ContactAccessLevel = 'None';
                    AccShare.OpportunityAccessLevel = 'None';
                    AccShare.RowCause = 'Manual';
                    try {
                        insert AccShare;
                        system.debug('### successful sharing');
                    } catch(Exception e)
                    {
                        system.debug('#### Fail: '+e.getMessage());
                        return false;
                    }
                    AccSharedWithUser = true;
                }
                
            }else{ // if the user chose to create an account
                
                // set up an account to check for dupes
                Account checkAccDupes = new Account();
                checkAccDupes.Name = ld.Company;
                checkAccDupes.BillingState = ld.State;
                checkAccDupes.BillingCountry = ld.Country;
                
                // call dupeblocker
                Set<Id> matchAccIds = trac_RegisterOpportunityController.getDuplicates(checkAccDupes);
                String accId = '';
                Account acc;
                
                // if dupeblocker returns with one result, use that
                if(matchAccIds.size() == 1)
                {
                    for (Id matchId : matchAccIds) {
                        accId = matchId;
                        break;
                    }
                }
                // if it returns with multiple results, use the most recently created account
                else if(matchAccIds.size() > 1)
                {
                    List<Account> accts = [SELECT Id, Name, ownerId FROM Account WHERE Id IN :matchAccIds ORDER BY CreatedDate DESC LIMIT 1];
                    if(accts.size() > 0)
                        acc = accts[0];
                }
                
                // make sure we have the account
                if(accId != '')
                {
                    acc = [Select id, Name, ownerId from Account Where Id =: accId];
                }
                
                // if we found an account, set up the account info
                if(acc != null)
                {
                    lc.setAccountId(acc.id);
                    lc.setOwnerId(acc.ownerId);
                    if(opFlag == true)
                        lc.setOpportunityName(acc.Name);
                }
                else if(opFlag == true)
                    lc.setOpportunityName(ld.Company);
            }
            
            
            IsSharedFromLeadConversion = TRUE;
            Database.LeadConvertResult lcr;
            try {
                system.debug('@@@@@@@@@@@@@@---'+lc);
                
                Lead objLead = new Lead(id=ld.Id); 
                objLead.Partner_Last_Activity_Date__c = null;
                objLead.MDF_Sourced_Lead__c = opp.MDF_Sourced_Lead__c;
                objLead.MDF_Approval_Number__c = opp.MDF_Approval_Number__c;
                
                update objLead;
                
                lcr = Database.convertLead(lc);
                
            } catch(Exception ex) {
                ExceptionHandlingEmail.sendEmailonException(ex);
                
                system.debug('@@@@@@@@@@@@@@'+ex.getMessage());
                return false;
            } 
            
            if(lcr.isSuccess()){
                
                Lead leadFromDB = [select 
                                   id,
                                   isConverted,
                                   ConvertedAccountId,
                                   ConvertedContactId,
                                   ConvertedOpportunityId,
                                   Registration_Status__c
                                   from Lead where isconverted = true and id = : ld.Id];
                System.debug('### LeadFromDB: '+leadFromDB);
                
                if(opFlag == True){
                    //opportunity oppUpdate = [Select id,CloseDate from opportunity where id =: leadFromDB.ConvertedOpportunityId];
                    opportunity oppUpdate = new Opportunity(id=leadFromDB.ConvertedOpportunityId);
                    
                    System.debug('### oppUpdate: '+oppUpdate);
                    
                    if(opp.CloseDate != null)
                        oppUpdate.CloseDate = opp.CloseDate;
                    if(opp.Likely__c != null)
                        oppUpdate.Likely__c = opp.Likely__c;
                    if(opp.ERP_System__c != null)
                        oppUpdate.ERP_System__c = opp.ERP_System__c;
                    if(opp.HR_System__c != null)
                        oppUpdate.HR_System__c = opp.HR_System__c;
                    if(opp.CRM_System__c != null)
                        oppUpdate.CRM_System__c = opp.CRM_System__c;
                    if(opp.Fiscal_Year_End__c != null)
                        oppUpdate.Fiscal_Year_End__c = opp.Fiscal_Year_End__c;
                    if(opp.Budgeted_Project__c != null)
                        oppUpdate.Budgeted_Project__c = opp.Budgeted_Project__c;
                    if(opp.Time_Frame__c != null)
                        oppUpdate.Time_Frame__c = opp.Time_Frame__c;
                    if(opp.Reason_for_change_Pain_Points__c != null)
                        oppUpdate.Reason_for_change_Pain_Points__c = opp.Reason_for_change_Pain_Points__c;
                    if(opp.MDF_Sourced_Lead__c != null)
                        oppUpdate.MDF_Sourced_Lead__c = opp.MDF_Sourced_Lead__c;
                    if(opp.MDF_Approval_Number__c != null)
                        oppUpdate.MDF_Approval_Number__c = opp.MDF_Approval_Number__c;
                    if(opp.Referral_Follow_Up__c != null)
                        oppUpdate.Referral_Follow_Up__c = opp.Referral_Follow_Up__c;
                    if(opp.Type != null)
                        oppUpdate.Type = opp.Type;
                    if(opp.Solution_Requirements__c != null)
                        oppUpdate.Solution_Requirements__c = opp.Solution_Requirements__c;
                    
                    
                    if(opp.NextStep != null)
                        oppUpdate.NextStep = opp.NextStep;
                        
                        oppUpdate.LeadSource = CustomConstants.LeadSource;
                        oppUpdate.Lead_Source_Most_Recent__c = CustomConstants.LeadSource;
                        oppUpdate.StageName = CustomConstants.OpportunityStageProspect;
                    
                    
                    
                    if(!userList.isEmpty()){
                        
                        oppUpdate.Partner_Account__c = userList[0].Contact.Accountid;
                        oppUpdate.Partner_Contact__c = userList[0].ContactId;
                        oppUpdate.Partner_Commission_Type__c = userList[0].Contact.Account.Partner_Commission_Type__c;
                    }
                    
                    oppUpdate.Primary_Contact__c = leadFromDB.ConvertedContactId;
                    
                    // this will trigger the email for oppty acceptance if it has been accepted automatically
                    // oppUpdate.Update_Oppty_from_Lead_Convert__c = '';
                    
                    oppUpdate.Last_Activity_Date__c = System.today();
                    
                   
                    
                    if(leadFromDB.ConvertedAccountId != null){
                        List<Account> lstConvertedAccount = [SELECT id, Current_GL__c, HR_System__c, CRM_System__c, ownerid, Number_of_Open_Opportunities__c FROM Account where id =: leadFromDB.ConvertedAccountId];
                        if(!lstConvertedAccount.isEmpty()){
                            Account objAcc = lstConvertedAccount[0];
                            if(objAcc.Current_GL__c == null){
                                objAcc.Current_GL__c = opp.ERP_System__c;
                            }
                            if(objAcc.CRM_System__c == null){
                                objAcc.CRM_System__c = opp.CRM_System__c;
                            }
                            if(objAcc.HR_System__c == null){
                                objAcc.HR_System__c = opp.HR_System__c;
                            }
                            
                            // need to add in scenario where partner contact is blank when user selects account
                            if(accFlag)
                                objAcc.Partner_Contact__c = null;
                            
                            system.debug('### objAcc: '+objAcc);
                            
                            if(objAcc.Number_of_Open_Opportunities__c == 1)
                                {
                                   oppUpdate.ownerid = objAcc.ownerid;
                                   oppUpdate.Registration_Status__c = CustomConstants.LeadRegistrationStatusAccepted;
                                
                                }
                                else if(objAcc.Number_of_Open_Opportunities__c >= 1)
                                { 
                                    oppUpdate.Ownerid = CustomConstants.HannahEggertUserId;
                                
                                }
                                
                                Date last4Month = system.today().addMonths(-4);
                                List<Opportunity> lstOppClosedIn4Month = [SELECT id FROM opportunity WHERE Accountid =: objAcc.id AND closedate >=: last4Month AND (Stagename =: CustomConstants.OpportunityStageCL OR Stagename =: CustomConstants.OpportunityStageCLNP OR Stagename =: CustomConstants.OpportunityStageDisq)];
                                if(!lstOppClosedIn4Month.isEmpty()){
                                    oppUpdate.Ownerid = CustomConstants.HannahEggertUserId;
                                }
                            update objAcc;
                        }                
                    }
                    
                     update oppUpdate; 
                    
                    // Share Opportunity And Contact with Partner
                    
                    if(!userList.isEmpty()){
                        //************ OpportunityShare Logic *************
                        list<OpportunityShare> listOpportunitySharesToBeInserted = new list<OpportunityShare>();
                        
                        system.debug('@@@@@@@@@@@@@'+oppUpdate.id);
                        system.debug('@@@@@@@@@@@@@'+userList[0].id);
                        OpportunityShare OppShare = new OpportunityShare();
                        OppShare.OpportunityId = oppUpdate.id;
                        OppShare.UserOrGroupId = userList[0].id;
                        OppShare.OpportunityAccessLevel = 'Read';
                        OppShare.RowCause = 'Manual';
                        listOpportunitySharesToBeInserted.add(OppShare);
                        if(!listOpportunitySharesToBeInserted.isEmpty() && Test.IsRunningTest() == false){
                            insert listOpportunitySharesToBeInserted;
                        } 
                        
                        //list<Contact> conUpdate = [Select id from Contact where id =: leadFromDB.ConvertedContactId];
                        Contact conUpdate = new Contact(id=leadFromDB.ConvertedContactId);
                        if(conUpdate != null){
                            list<ContactShare> listContactShareToBeInserted = new list<ContactShare>();
                            
                            ContactShare conShare = new ContactShare();
                            ConShare.ContactId = conUpdate.id;
                            ConShare.UserOrGroupId = userList[0].Id;
                            ConShare.ContactAccessLevel = 'Read';
                            ConShare.RowCause = 'Manual';
                            
                            listContactShareToBeInserted.add(ConShare);
                            
                            if(!listContactShareToBeInserted.isEmpty() && Test.IsRunningTest() == false){
                                INSERT listContactShareToBeInserted;
                            }
                        }//End of IF for ContactShare              
                    }                
                }else{
                    Contact conUpdate = new Contact(id=leadFromDB.ConvertedContactId);
                    if(conUpdate != null){
                        list<ContactShare> listContactShareToBeInserted = new list<ContactShare>();
                        
                        ContactShare conShare = new ContactShare();
                        ConShare.ContactId = conUpdate.id;
                        ConShare.UserOrGroupId = userList[0].Id;
                        ConShare.ContactAccessLevel = 'Read';
                        ConShare.RowCause = 'Manual';
                        
                        listContactShareToBeInserted.add(ConShare);
                        
                        if(!listContactShareToBeInserted.isEmpty() && Test.IsRunningTest() == false){
                            INSERT listContactShareToBeInserted;
                        }
                    }//End of IF for ContactShare
                }        
            }           
            IsSharedFromLeadConversion = FALSE;
            return lcr.isSuccess();
        }
        
    }
    /**@@
#DESCRIPTION    : This method convert the partner lead
#Paramaters     :  boolean, boolean, Opportunity, Account, Id
@@**/
    
    @AuraEnabled
    public static Boolean ConvertLeadAction(boolean opFlag,boolean accFlag, Opportunity opp,Account accountId, Id leadId) {
        
        
        lead ld = [Select id, ownerid, Company, State, Country from Lead Where Id =: leadId];
        
        
        Database.LeadConvert lc = new Database.LeadConvert();
        
        lc.setLeadId(ld.Id);
        lc.setOwnerId(ld.ownerid);
        
        
        
        if(opFlag == false){
            lc.setDoNotCreateOpportunity(TRUE); 
            
        }
        
        LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        system.debug('@@@@@@@@@'+lc);
        //Database.LeadConvertResult lcr = Database.convertLead(lc);
        
        
        leadConversionMethodWrapper objLCMW = new leadConversionMethodWrapper();
        boolean isSuccess = objLCMW.convertLeadbyPartnerUser(lc, opFlag, ld, opp, accFlag, accountId);
        return isSuccess;
    }
    
    /**@@
#DESCRIPTION    : This method is used return the account record .
#Paramaters     :  Account Id
@@**/
    @AuraEnabled
    public static Account getAccount(String acctId) {
        Account acctResult = new Account();
        retrieveAccountDetail objRADetail = new retrieveAccountDetail();
        acctResult = objRADetail.fetchAccountInformation(acctId);
        system.debug('acctResult' +acctResult);
        if(acctResult != null){
            return acctResult;
        }//End of if
        
        return null;
    }
    
    /**@@
#DESCRIPTION    : With Out sharing Method - This method return Id, Name, AnnualRevenue, Industry, BillingCountry, BillingState, Website, RecordTypeId of selected account.
#Paramaters     : acctId(String): Used to pass selected account ID.
@@**/
    public without sharing class retrieveAccountDetail{        
        public Account fetchAccountInformation(String strAccId){
            List<Account> acctResult = [SELECT Id, Name, AnnualRevenue, Industry, BillingCountry, BillingState, Website, RecordTypeId, OwnerId, NumberOfEmployees, Owner.name
                                        FROM Account
                                        WHERE Id =:strAccId];
            if (acctResult != null && acctResult.size() == 1) 
            {
                system.debug('@@@@@@@@'+acctResult[0].Owner.name);
                return acctResult[0];
                
            }//End of if
            return null;
        }
        
    } 
}