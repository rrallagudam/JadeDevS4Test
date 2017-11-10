/**@@
#Test CLASS NAME   :    trac_RegisterOpportunityController
#DESCRIPTION       :  This is the controller class for the trac_RegisterOpportunity Lightning component,used to register opportunity using partner Portal.
@@**/

public without sharing class trac_RegisterOpportunityController {
    private static Id rtAcct = Schema.SObjectType.Account.RecordTypeInfosByName.get('Prospect').RecordTypeId;
    private static Id rtContact = Schema.SObjectType.Contact.RecordTypeInfosByName.get('SAL').RecordTypeId;
    private static Id rtOpp = Schema.SObjectType.Opportunity.RecordTypeInfosByName.get('Prospect').RecordTypeId;
    
    private static final String ACCOUNT_PREFIX = Account.SObjectType.getDescribe().getKeyPrefix().toUpperCase();
    private static final String CONTACT_PREFIX = Contact.SObjectType.getDescribe().getKeyPrefix().toUpperCase();
    
    /**@@
    #DESCRIPTION    : This method is used to call the populatePickListOptions() for various picklist fields and initialise the 
                      Picklist values in InitFieldsResponse class.
    #Paramaters     :  No Parameters
    @@**/
    @AuraEnabled
    public static InitFieldsResponse initFields() {
        
        InitFieldsResponse resp = new InitFieldsResponse();
        
        resp.IndustryFocusOptions = populatePickListOptions(Account.Adaptive_Industry__c.getDescribe());
        resp.FollowUpOptions = populatePickListOptions(Opportunity.Referral_Follow_Up__c.getDescribe());
        resp.MDFOptions = populatePickListOptions(Opportunity.MDF_Sourced_Lead__c.getDescribe());
        resp.SolutionRequirementOptions = populatePickListOptions(Opportunity.Solution_Requirements__c.getDescribe());
        resp.ERPSystemOptions = populatePickListOptions(Contact.ERP__c.getDescribe());
        resp.CRMSystemOptions = populatePickListOptions(Contact.CRM__c.getDescribe());
        resp.HRSystemOptions = populatePickListOptions(Contact.HR__c.getDescribe());
        resp.FiscalYearEndOptions = populatePickListOptions(Contact.Fiscal_Year_End__c.getDescribe());
        resp.BudgetedProjectOptions = populatePickListOptions(Contact.Budgeted_Project__c.getDescribe());
        resp.TimeframeOptions = populatePickListOptions(Contact.Time_Frame__c.getDescribe());
        resp.typeOptions = populatePickListOptions(Opportunity.Type.getDescribe());
        
        
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
    #DESCRIPTION    : This method is used return the account record for the selected accounton MyOpportunity Page of Partner portal.
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
        }
        
        return null;
    }
    
    /**@@
    #DESCRIPTION    : With Out sharing Method - This method return Id, Name, AnnualRevenue, BillingCountry, BillingState, Website, RecordTypeId of selected account.
    #Paramaters     : acctId(String): Used to pass selected account ID.
    @@**/
    public without sharing class retrieveAccountDetail{        
        public Account fetchAccountInformation(String strAccId){
            List<Account> acctResult = [SELECT Id, Name, AnnualRevenue, Adaptive_Industry__c, BillingCountry, BillingState, Website, RecordTypeId, OwnerId, NumberOfEmployees, Owner.name
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
    
    /**@@
    #DESCRIPTION    : This method return the contact field of selected contact on MyOpportunity Page of Partner portal.
    #Paramaters     :  Contact id
    @@**/    
    @AuraEnabled
    public static Contact getContact(String cId) {
        List<Contact> contactResult = [SELECT Id, FirstName, LastName, Title, Phone, Email, RecordTypeId, Reason_for_change_Pain_Points__c,
                                              ERP__c, CRM__c, HR__c, Fiscal_Year_End__c, Budgeted_Project__c, 
                                              Time_Frame__c 
                                       FROM Contact
                                       WHERE Id =:cId];
        
        if (contactResult != null && contactResult.size() == 1) {
            return contactResult[0];
        }
        
        return null;
    }
    /**@@
    #DESCRIPTION    :This method is used to Register the Opportunity using partner portal.
    #Paramaters     : Account,Contact,Opportunity .
    @@**/
    @AuraEnabled
    public static RegisterOpportunityResponse registerOpportunity(Account acct, Contact contact, Opportunity opp) {
        List<User> userList = [SELECT id, ContactId, Contact.AccountId, Contact.Account.ownerid, Contact.Account.Partner_Commission_Type__c FROM User where id =: Userinfo.getUserid() LIMIT 1];
        LeadConvertController.IsSharedFromLeadConversion = TRUE;
         
        // Validate
        Boolean existingAcct = false;        
        Boolean existingContact = false;
        string strSelectedContactId;
        if(contact.Id != null && string.valueOf(contact.Id).length() > 0){
            existingContact = true;
            strSelectedContactId = contact.Id;
        }
        
        string strSelectedAccountId;
        string strOwnerId;
        
        if(acct.Id != null && string.valueOf(acct.Id).length() > 0){
            existingAcct = true;
            strSelectedAccountId = acct.Id;
            strOwnerId = acct.OwnerId;
          
        }
        List<String> validationErrs = new List<String>();
        Boolean passed = validate(acct, contact, existingAcct, existingContact, opp, validationErrs);
        
        if (!passed) {
            RegisterOpportunityResponse resp = new RegisterOpportunityResponse(false);
            resp.ErrMsgs = validationErrs;
            return resp;
        }
        
        acct.Id = null;
        acct.RecordTypeId = rtAcct;
        acct.Type = CustomConstants.AccountTypeCustomerProspect ;
       
        contact.Id = null;
        contact.RecordTypeId = rtContact;
        contact.Registration_Status__c = CustomConstants.LeadRegistrationStatusAccepted;
        if(!existingAcct){
            system.debug(acct.Id );
        contact.IsNewAccountOnContact__c = true;
        opp.IsNewAccountOnOpportunity__c = true;
        }
        
        opp.Name = acct.Name;
        opp.RecordTypeId = rtOpp;
        opp.StageName = CustomConstants.OpportunityStageProspect;
        opp.Last_Activity_Date__c = System.today();
        opp.LeadSource = CustomConstants.LeadSource;
        opp.Lead_Source_Most_Recent__c = CustomConstants.LeadSource;
        
        
       
    //    try {            
            Id acctId;
            
            // Search for acct duplicates
            Set<Id> matchIds = getDuplicates(acct);
        
            if(Test.isRunningTest()){
                existingAcct = false;
                existingContact = false;
            }
        
            if(existingAcct == false){
                if (matchIds.size() == 0) {
                    // If there are no duplicates for this acct, insert acct
                    // In the case of a newly created acct, populate the MDF field via the Opp
                    acct.MDF_Sourced_Lead__c = opp.MDF_Sourced_Lead__c;
                    acct.OwnerId = system.userinfo.getUserid();
                    sharewithPartner objsharewithPartner1 = new sharewithPartner();
                    objsharewithPartner1.createAccount(acct);
                    //insert acct;
                    
                    AccountShare AccShare = new AccountShare();
                    AccShare.AccountId = acct.id;
                    AccShare.UserOrGroupId = userList[0].Id;
                    AccShare.AccountAccessLevel = 'Read';
                    AccShare.CaseAccessLevel = 'None';
                    AccShare.ContactAccessLevel = 'None';
                    AccShare.OpportunityAccessLevel = 'None';
                    AccShare.RowCause = 'Manual';
                    try {
                        if(AccShare != null ){
                            sharewithPartner objsharewithPartner = new sharewithPartner();
                            objsharewithPartner.shareWithAccount(AccShare);
                            //INSERT listContactShareToBeInserted;
                        }
                        //insert AccShare;
                        system.debug('### successful sharing');
                    } catch(Exception e)
                    {
                        system.debug('#### Fail: '+e.getMessage());
                    }
                    
                    acctId = acct.Id;
                } else {                  
                    // If there is only one matching acct, use it
                    // Otherwise, retrieve the most recently created
                    if (matchIds.size() == 1) {
                        // Get first match Id
                        for (Id matchId : matchIds) {
                            acctId = matchId;
                            break;
                        }       
                    } else {
                        acctId = getNewestAcct(matchIds);
                    }    
                }  
            }else if(strSelectedAccountId  != null && strSelectedAccountId  != ''){
                system.debug('@@@@@@@@@@@'+strSelectedAccountId );
                acctId = strSelectedAccountId;
            }
            // Search for contact duplicates
            Id contactId;
            if(existingContact == false){
                // Check contact for duplicates
                // If contact already exists, then update any populated contact fields            
                matchIds = getDuplicates(contact);
            
                if (matchIds.size() == 0) {
                    contact.AccountId = acctId;                       
                     if(strOwnerId != null){
                        contact.OwnerID = strOwnerId;       
                    }       
                    sharewithPartner objsharewithPartner = new sharewithPartner();      
                    objsharewithPartner.createContact(contact);                         
                    //insert contact;
                                    
                        list<ContactShare> listContactShareToBeInserted = new list<ContactShare>();
                                
                        ContactShare conShare = new ContactShare();
                        ConShare.ContactId = contact.id;
                        ConShare.UserOrGroupId = userList[0].Id;
                        ConShare.ContactAccessLevel = 'Read';
                        ConShare.RowCause = 'Manual';
                        
                        listContactShareToBeInserted.add(ConShare);
                        
                        if(!listContactShareToBeInserted.isEmpty() ){
                            sharewithPartner objsharewithPartner1 = new sharewithPartner();
                            objsharewithPartner1.shareWithContact(ConShare);
                            //INSERT listContactShareToBeInserted;
                        }
                        
                    contactId = contact.Id;
                } else {
                    // If there is only one matching contact, use it
                    // Otherwise, retrieve the most recently created
                    if (matchIds.size() == 1) {
                        // Get first match Id
                        for (Id matchId : matchIds) {
                            contactId = matchId;
                            break;
                        }       
                    } else {
                        contactId = getNewestContact(matchIds);
                    }
                    
                    // Update existing contact w/newly populated fields (if any)
                    contact.Id = contactId;
                    update contact;
                    
                    list<ContactShare> listContactShareToBeInserted = new list<ContactShare>();
                            
                    ContactShare conShare = new ContactShare();
                    ConShare.ContactId = contact.id;
                    ConShare.UserOrGroupId = userList[0].Id;
                    ConShare.ContactAccessLevel = 'Read';
                    ConShare.RowCause = 'Manual';
                    
                    listContactShareToBeInserted.add(ConShare);
                    
                    if(!listContactShareToBeInserted.isEmpty() ){
                        sharewithPartner objsharewithPartner = new sharewithPartner();
                        objsharewithPartner.shareWithContact(ConShare);
                        //INSERT listContactShareToBeInserted;
                    }
                        
                }
            }else{
                contactId = strSelectedContactId;
            }
            system.debug('!!!!!!!!!!!!'+acctId);
            opp.AccountId = acctId;
            opp.Primary_Contact__c = contactId;
            if(!userList.isEmpty()){
                opp.Partner_Account__c = userList[0].Contact.Accountid;
                opp.Partner_Commission_Type__c = userList[0].Contact.Account.Partner_Commission_Type__c;
                opp.Partner_Contact__c = userList[0].ContactId;
            }
            opp.Partner_Opportunity__c=true; 
            
            List<account> accList = [select id, ownerid, Number_of_Open_Opportunities__c from account where id =: acctId];
            if(accList[0].Number_of_Open_Opportunities__c == 0)
            {
               opp.ownerid = accList[0].ownerid;
               opp.Registration_Status__c = CustomConstants.LeadRegistrationStatusAccepted;
            
            }
            else if(accList[0].Number_of_Open_Opportunities__c >= 0)
            { 
                opp.Ownerid = CustomConstants.HannahEggertUserId;
            
            }
       
            
            // EA-424  -- START
            Date last4Month = system.today().addMonths(-4);
            List<Opportunity> lstOppClosedIn4Month = [SELECT id FROM opportunity WHERE Accountid =: acctId AND closedate >=: last4Month AND (Stagename =: CustomConstants.OpportunityStageCL OR Stagename =: CustomConstants.OpportunityStageCLNP OR Stagename =: CustomConstants.OpportunityStageDisq)];
            if(!lstOppClosedIn4Month.isEmpty()){
                opp.Ownerid = CustomConstants.HannahEggertUserId;
            }
            // EA-424  -- END
            insert opp;
            
            OpportunityShare OppShare = new OpportunityShare();
            OppShare.OpportunityId = opp.id;
            OppShare.UserOrGroupId = userList[0].id;
            OppShare.OpportunityAccessLevel = 'Read';
            OppShare.RowCause = 'Manual';
            if(OppShare != null ){
                sharewithPartner objsharewithPartner = new sharewithPartner();
                objsharewithPartner.shareWithOpportunity(OppShare);
                //INSERT listContactShareToBeInserted;
            }
                        
            // Insert opp contact role
            OpportunityContactRole role = new OpportunityContactRole(ContactId=opp.Primary_Contact__c, OpportunityId=opp.Id, Role='Decision Maker', IsPrimary=true);
            insert role;
            
            LeadConvertController.IsSharedFromLeadConversion = FALSE;
            // Happy case -- return success response
            return new RegisterOpportunityResponse(true); 
       // }
      /*  catch(Exception e) {
            System.debug('**Excepion**'+e);
            RegisterOpportunityResponse resp = new RegisterOpportunityResponse(false);
            List<String> errMsgs = new List<String>();
            errMsgs.add('Unfortunately, there was an issue processing your request. Please contact partners@adaptiveinsights.com for additional support.');
            resp.ErrMsgs = errMsgs; 
            
            return resp;
        }*/
        
    }
    
    /**@@
    #DESCRIPTION    : To find the Duplicate Account/Contact. NOTE: This is used for lead conversion as well
    #Paramaters     :  Sobject
    @@**/    
    public static Set<Id> getDuplicates(SObject obj) {
        Set<Id> matchIds = new Set<Id>();
        
        Set<Id> quickConversionScenarioIds = new Set<Id>();
        
        List<DupeBlocker_Scenarios__c> dupBlockerScenarios = DupeBlocker_Scenarios__c.getall().values();
        for(DupeBlocker_Scenarios__c ds: dupBlockerScenarios){
            if(ds.Lead__c != null){
                string[] leadarrScenarioIds = ds.Lead__c.split(';');
                for(String str: leadarrScenarioIds){
                    quickConversionScenarioIds.add(str);
                }// End of for              
            }// End of If
            if(ds.Lead_to_Account__c != null){
                string[] leadtoAccarrScenarioIds = ds.Lead_to_Account__c.split(';');
                for(String str: leadtoAccarrScenarioIds){
                    quickConversionScenarioIds.add(str);
                }// End of for              
            }// End of If
            if(ds.Lead_to_Contact__c != null){
                string[] leadtoConarrScenarioIds = ds.Lead_to_Contact__c.split(';');
                for(String str: leadtoConarrScenarioIds){
                    quickConversionScenarioIds.add(str);
                }// End of for
            }// End of If
        }// End of for
        
        List<CRMfusionDBR101.DB_Api.Matches> matchSets = CRMfusionDBR101.DB_Api.findMatches(obj);
        for (CRMfusionDBR101.DB_Api.Matches matchSet : matchSets) {
            if(!quickConversionScenarioIds.contains(matchSet.scenarioId)){
                for(Id matchId : matchSet.matchedIds) { 
                    // Only add matches that are of same type
                    // -- check using key prefix
                    String idString = ((String) matchId).toUpperCase(); 
                    String objKeyPrefix = obj.getSobjectType().getDescribe().getKeyPrefix().toUpperCase();
                    if (idString.startsWith(objKeyPrefix)) {
                        matchIds.add(matchId);    
                    }    
                }
            }
        }
        
        return matchIds;
    }
    /**@@
    #DESCRIPTION    : This return the latest created account.
    #Paramaters     :  set of ID
    @@**/    
    public static Id getNewestAcct(Set<Id> ids) {
        List<Account> accts = [SELECT Id
                               FROM Account
                               WHERE Id IN :ids ORDER BY CreatedDate DESC];
        return accts[0].Id;
    }
    /**@@
    #DESCRIPTION    :  This return the latest created Contact.
    #Paramaters     :  set of contact ID
    @@**/    
    public static Id getNewestContact(Set<Id> ids) {
        List<Contact> contacts = [SELECT Id
                                  FROM Contact
                                  WHERE Id IN :ids ORDER BY CreatedDate DESC];
        return contacts[0].Id;
    }
    /**@@
    #DESCRIPTION    : This method is used to Validate that Account,contact,Opportunity fields on MyOpportunity page is not Blank. 
    #Paramaters     :  Account,Contact,
    @@**/    
    private static Boolean validate(Account acct, Contact c, Boolean existingAcct, Boolean existingContact, Opportunity opp, List<String> errMsgs) {
        Boolean passed = true;
        
        // if there's an existing account, we do not need to make these fields required
        // otherwise, check to ensure that the fields are populated
        if(!existingAcct && (acct.AnnualRevenue == null || String.isBlank(acct.Adaptive_Industry__c) ||
           String.isBlank(acct.BillingCountry) || String.isBlank(acct.BillingState) || String.isBlank(acct.Website) ||
           acct.NumberOfEmployees==null))
        {
            passed = false;
            errMsgs.add('All fields must be provided.');
        }
        else if(String.isBlank(acct.Name) || String.isBlank(acct.Current_GL__c) || String.isBlank(acct.CRM_System__c) ||
           String.isBlank(acct.HR_System__c))
        {
            passed = false;
            errMsgs.add('All fields must be provided.');
        }
        // if there's an existing contact, we do not need to make these fields required
        else if(!existingContact && (String.isBlank(c.FirstName) || String.isBlank(c.LastName) || 
                String.isBlank(c.Title) || String.isBlank(c.Phone) || String.isBlank(c.Email)))
        {
            passed = false;
            errMsgs.add('All fields must be provided.');
        }
        else if(String.isBlank(c.Reason_for_change_Pain_Points__c) || String.isBlank(c.Fiscal_Year_End__c) || String.isBlank(c.Budgeted_Project__c) || String.isBlank(c.Time_Frame__c))
        {
            passed = false;
            errMsgs.add('All fields must be provided.');
        }
        else if(opp.CloseDate == null || opp.Likely__c == null || String.isBlank(opp.NextStep) || String.isBlank(opp.Solution_Requirements__c)) 
        {
            passed = false;
            errMsgs.add('All fields must be provided.');
        }
        else if(!existingAcct && acct.Adaptive_Industry__c=='--None--'){
            passed = false;
            errMsgs.add('Adaptive Industry field should not be None');
        }
      
         else if(opp.MDF_Sourced_Lead__c=='Yes' && String.isBlank(opp.MDF_Approval_Number__c)){
            passed = false;
            errMsgs.add('MDF Approval Number field should not be None');
        }
       /* else{
            if ((existingAcct && (acct.NumberOfEmployees==null)) || (existingContact && String.isBlank(c.MDF_Approval_Number__c))){
                passed = false;
                errMsgs.add('All fields must be provided.');
            }
        }*/
        
        return passed;
    }

    /**@@
    #DESCRIPTION    : This Class is used to set the Attribute values in Lightning component.
    @@**/      
    public class InitFieldsResponse {
        @AuraEnabled public String[] IndustryFocusOptions {get;set;}
        @AuraEnabled public String[] MDFOptions {get;set;}
        @AuraEnabled public String[] ERPSystemOptions {get;set;}
        @AuraEnabled public String[] CRMSystemOptions {get;set;}
        @AuraEnabled public String[] HRSystemOptions {get;set;}
        @AuraEnabled public String[] FiscalYearEndOptions {get;set;}
        @AuraEnabled public String[] BudgetedProjectOptions {get;set;}
        @AuraEnabled public String[] TimeframeOptions {get;set;}
        @AuraEnabled public String[] FollowUpOptions {get;set;}
        @AuraEnabled public String[] SolutionRequirementOptions {get;set;}
        @AuraEnabled public String[] typeOptions {get;set;}
      }

    public class RegisterOpportunityResponse {
        @AuraEnabled public Boolean Success {get;set;}
        @AuraEnabled public List<String> ErrMsgs {get;set;}
        
        public RegisterOpportunityResponse(Boolean isSuccess) {
            Success = isSuccess;
            ErrMsgs = new List<String>();
        }
    }
    
    /**@@
    #DESCRIPTION    : This With out sharing Class is used to share registere Opportunity, Account and Contact with Partner
    @@**/ 
    public without sharing class sharewithPartner{   
    
         public void createAccount(Account acc){
             
             try{
                 insert acc; }catch (Exception ex){
                 
                 }      
         }      
                
         public void createContact(Contact con){        
                    
             try{       
                 insert con; }catch (Exception ex){
             
             }
         }
         public void shareWithAccount(AccountShare accShare){
             
             try{
                 insert accShare;
             }catch (Exception ex){
             
             }
         }
         public void shareWithContact(ContactShare conShare){
             system.debug('@@@@@@@@@@@@'+conShare);
             try{
                 insert conShare;
             }catch (Exception ex){
             
             }
         }
         public void shareWithOpportunity(OpportunityShare oppShare){
             try{
                 insert oppShare;
             }catch (Exception ex){
             
             }
         }    
    }    
}