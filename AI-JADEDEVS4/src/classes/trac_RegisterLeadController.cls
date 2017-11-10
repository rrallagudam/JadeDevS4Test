/**@@
#CLASS NAME    :  trac_RegisterLeadController
#DESCRIPTION   :  This class is used to check for the New Lead Registration via partner community and shows the Success and Error message after registation.  
@@**/

public without sharing class trac_RegisterLeadController
{
    
    Public static List<User> lstLoggedinUser = new List<User>();
    
    private static Id rtLead = Schema.SObjectType.Lead.RecordTypeInfosByName.get('SAL').RecordTypeId;
    
    /**@@
    #DESCRIPTION    : This method is returning picklist values from Lead
    #Paramaters     : No Parameters
    @@**/
    @AuraEnabled
    public static InitFieldsResponse initFields() 
    {
        List<String> industryFocusOptions = new List<String>();
        //get the picklist values for Industry field
        Schema.DescribeFieldResult industryFocusDesc = Lead.Adaptive_Industry__c.getDescribe();
        for (Schema.PicklistEntry pe : industryFocusDesc.getPicklistValues())
        {
            if (pe.isActive()) 
            {
                industryFocusOptions.add(pe.getValue());
            }//End if
        }//End for
        
        List<String> followUpOptions = new List<String>();
        //get the picklist values for Follow_Up__c field
        Schema.DescribeFieldResult followUpDesc = Lead.Partner_Referal_Follow_Up__c.getDescribe();
        for (Schema.PicklistEntry pe : followUpDesc.getPicklistValues()) 
        {
            if (pe.isActive())
            {
                followUpOptions.add(pe.getValue());
            }//End of IF
        }//End of For
        
        List<String> MDFOptions = new List<String>();
        //get the picklist values for MDF_Sourced_Lead__c field
        Schema.DescribeFieldResult MDFDesc = Lead.MDF_Sourced_Lead__c.getDescribe();
        for (Schema.PicklistEntry pe : MDFDesc.getPicklistValues()) 
        {
            if (pe.isActive()) 
            {
                MDFOptions.add(pe.getValue());
            }//End of If
        }//End of For
        
        InitFieldsResponse resp = new InitFieldsResponse();
        resp.IndustryFocusOptions = industryFocusOptions;
        resp.FollowUpOptions = followUpOptions;
        resp.MDFOptions = MDFOptions;
        
        return resp;
    }//End of initFields method
    
    /**@@
    #DESCRIPTION    : This method is used to validate the new lead Registration
    #Paramaters     : RegisterLeadResponse
    @@**/
    @AuraEnabled
    public static RegisterLeadResponse registerLead(Lead LeadObj) 
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        List<String> validationErrs = new List<String>();
        Boolean passed = validateLead(LeadObj, validationErrs);
        LeadObj.Id = null;
        LeadObj.RecordTypeId = rtLead;
        LeadObj.LeadSource = 'Partner - Prospect Referral Form';
        LeadObj.Lead_Source_Most_Recent__c = 'Partner - Prospect Referral Form';
        LeadObj.Type__c = CustomConstants.LeadTypeCustomerProspect;
        LeadObj.Registration_Date__c = system.now();
        //new added - @Mohit - EA-593
        LeadObj.Partner_Last_Activity_Date__c = system.today();
         
        // if it didn't pass validation, return failed response
        if (!passed) 
        {
            RegisterLeadResponse resp = new RegisterLeadResponse(false);
            resp.ErrMsgs = validationErrs;
            return resp;
        }
        
        List<Group> channelLeadValidationQueue = [SELECT id FROM group WHERE developername =: CustomConstants.strChannelLeadValidation];
        if(!channelLeadValidationQueue.isEmpty()){
            LeadObj.OwnerId = channelLeadValidationQueue[0].id;
        }
        
        lstLoggedinUser = [SELECT contactid, Contact.FirstName, Contact.Email, Contact.AccountId FROM User WHERE id =: userinfo.getuserid() LIMIT 1];
        if(!lstLoggedinUser.isEmpty() && lstLoggedinUser[0].ContactId != NULL){
            LeadObj.Partner_Contact__c = lstLoggedinUser[0].contactid;
            LeadObj.Partner_Contact_Email__c = lstLoggedinUser[0].Contact.Email;
            LeadObj.Partner_Account__c = lstLoggedinUser[0].Contact.AccountId;
        }
        else
        {
            RegisterLeadResponse resp = new RegisterLeadResponse(false);
            List<String> errMsgs = new List<String>();
            errMsgs.add('Your user is missing a contact record. Please contact partners@adaptiveinsights.com for additional support.');
            resp.ErrMsgs = errMsgs;
            return resp;
        }
        
        try {
            Set<Id> matchIds = getDuplicates(LeadObj);
            if (matchIds.size() == 0) 
            {                            
                //insert Lead;
                createLeadWrapper cls = new createLeadWrapper();
                cls.createLead(LeadObj);
                
                // Happy case -- return success response
                return new RegisterLeadResponse(true);             
            }//End of if
            
            // otherwise, send automatic rejection email
            String[] toAddresses  = new String[] {};
            String[] ccAddresses  = new String[] {};
            
            List<Lead> mailLeadList = [SELECT id, Owner.Email FROM Lead WHERE id IN: matchIds];
            List<Contact> mailContactList = [SELECT Id, Owner.Email FROM Contact WHERE Id IN :matchIds];
            
            
            // get the owners of the matched records
            for(Lead l : mailLeadList)
            {
                if(l.Owner.Email != NULL && l.Owner.Email != '')
                    ccAddresses.add(l.Owner.Email);
            }
            for(Contact c : mailContactList)
            {
                if(c.Owner.Email != NULL && c.Owner.Email != '')
                    ccAddresses.add(c.Owner.Email);
            }
            
            // replace with partners@adaptiveinsights.com for production
            ccAddresses.add('sloveall@adaptiveinsights.com');
            
            // set up email template
            EmailTemplate NotifyTemplate = [Select id, Body, HTMLValue from EmailTemplate where name ='Lead Automatic Rejection Email - Custom'];
            
            
            String emailHTMLBody = NotifyTemplate.HTMLValue;
            string emailTXTBody = NotifyTemplate.Body;
            
            Map<String, String> mergeFieldToValue = new Map<String, String>();
            
            mergeFieldToValue.put('{!Contact.FirstName}', lstLoggedinUser[0].Contact.FirstName);
            mergeFieldToValue.put('{!Lead.Name}', LeadObj.FirstName + ' ' + LeadObj.LastName);
            mergeFieldToValue.put('{!Lead.Email}', LeadObj.Email);
            mergeFieldToValue.put('{!Lead.Company}', LeadObj.Company);
            
            for(String field : mergeFieldToValue.keySet())
            {
                emailHTMLBody = emailHTMLBody.replace(field, mergeFieldToValue.get(field));
                emailTXTBody = emailTXTBody.replace(field, mergeFieldToValue.get(field));
            }
            
            //toAddresses.add(lstLoggedinUser[0].contact.email);
            
            //mail.setToAddresses(toAddresses);
            mail.setCcAddresses(ccAddresses);
            //mail.setTemplateID(NotifyTemplate.id);
            mail.setSubject('Lead Registration Rejected');
            mail.setHtmlBody(emailHTMLBody);
            mail.setPlainTextBody(emailTXTBody);
            mail.setTargetObjectId(lstLoggedinUser[0].contactid);
            mail.setTreatTargetObjectAsRecipient(true);
            mail.setSaveAsActivity(false);
            
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            
            RegisterLeadResponse resp = new RegisterLeadResponse(false);
            List<String> errMsgs = new List<String>();
            errMsgs.add('Lead has already been registered and cannot be submitted. If you have an Opportunity, please register the Opportunity. ');
            resp.ErrMsgs = errMsgs;
            return resp;
            
            //---------------------------------------------------------------------------------------
            /*List<Lead> mailLeadList = [SELECT id, Owner.Email, Partner_Contact__r.Email FROM Lead WHERE id IN: matchIds];
            EmailTemplate NotifyTemplate = [Select id from EmailTemplate where name ='NotifyDuplicateLead'];
            String[] toAddresses  = new String[] {};
            String[] ccAddresses  = new String[] {};
            
            for(Lead ldObj: mailLeadList){
                if(ldObj.Partner_Contact__r.Email !=null && ldObj.Partner_Contact__r.Email!='' && ldObj.Owner.Email!=null && ldObj.Owner.Email!=''){
                    toAddresses.add(ldObj.Partner_Contact__r.Email); 
                    ccAddresses.add(ldObj.Owner.Email);
                } 
            }
            System.debug('**toAddresses**'+toAddresses);
            System.debug('**ccAddresses**'+ccAddresses);
            
            ccAddresses.add('babita.kalshetti@jadeglobal.com');
            System.debug('**ccAddresses**'+ccAddresses);
            for(Id ldid: matchIds){
                
                mail.setToAddresses(toAddresses);
                mail.setCcAddresses(ccAddresses);
                mail.setTemplateID(NotifyTemplate.id);
                mail.setTargetObjectId(ldid);
                mail.setTreatTargetObjectAsRecipient(false);
                mail.setSaveAsActivity(false);
               
            }  
              //Sending Lead Rejection Email
              Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });   
              */
            //----------------------------------------------------------------------------------------
            // Both acct and contact are duplicates (or only contact is a dupe)
            
        }//End of try
        catch(Exception e){ 
            RegisterLeadResponse resp = new RegisterLeadResponse(false);
            List<String> errMsgs = new List<String>();
            errMsgs.add(e.getMessage()+'Unfortunately, there was an issue processing your request. Please contact partners@adaptiveinsights.com for additional support.');
            resp.ErrMsgs = errMsgs; 
            return resp;
        }//End of Catch
    }//End of registerLead method
    
    
    /**@@
    #DESCRIPTION    : To find the duplicates
    #Paramaters     : Sobject 
    @@**/    
    Public static Set<Id> getDuplicates(SObject obj) 
    {
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
        for (CRMfusionDBR101.DB_Api.Matches matchSet : matchSets){
            if(!quickConversionScenarioIds.contains(matchSet.scenarioId)){
                for(Id matchId : matchSet.matchedIds) { 
                    // Only add matches that are of same type
                    // -- check using key prefix
                    String idString = ((String) matchId).toUpperCase(); 
                    String objKeyPrefix = obj.getSobjectType().getDescribe().getKeyPrefix().toUpperCase();
                    if (idString.startsWith(objKeyPrefix)) {
                        matchIds.add(matchId);    
                    }
                }//End of For
            }
        }//End of For
        return matchIds;
    }//End of getDuplicates method
    
    /**@@
    #DESCRIPTION    : This method is used to check for the mandatory fields and shows the proper error message. 
    #Paramaters     : Lead, List<String>
    @@**/ 
    
    private static Boolean validateLead(Lead l, List<String> errMsgs)
    {
        Boolean passed = true;
        if (((String.isBlank(l.FirstName) || l.AnnualRevenue == null || String.isBlank(l.Adaptive_Industry__c)  || 
              String.isBlank(l.Country) || String.isBlank(l.State) || String.isBlank(l.Company) || String.isBlank(l.Website) || l.NumberOfEmployees==null) ) || 
            String.isBlank(l.Partner_Referal_Follow_Up__c) || String.isBlank(l.LastName) ||
            String.isBlank(l.Title) || String.isBlank(l.Phone) || String.isBlank(l.Email) )
        {
            passed = false;
            errMsgs.add('All fields must be provided.');
        }//End of If
        else if(l.Adaptive_Industry__c=='--None--'){
            passed = false; errMsgs.add('Adaptive Industry field should not be None');
        }
        
        else if(l.MDF_Sourced_Lead__c=='Yes' && String.isBlank(l.MDF_Approval_Number__c)){
            passed = false; 
            errMsgs.add('MDF Approval Number  field should not be None');
        }
        return passed;
    }//End of validateLead method
    
    public class InitFieldsResponse 
    {
        @AuraEnabled public String[] IndustryFocusOptions {get;set;}
        @AuraEnabled public String[] FollowUpOptions {get;set;}
        @AuraEnabled public String[] MDFOptions {get;set;}
    }
    
    public class RegisterLeadResponse
    {
        @AuraEnabled public Boolean Success {get;set;}
        @AuraEnabled public List<String> ErrMsgs {get;set;}
        
        public RegisterLeadResponse(Boolean isSuccess) 
        {
            Success = isSuccess;
            ErrMsgs = new List<String>();
        }//End of Constructor
    }//End of RegisterLeadResponse Class
    
    //Creating partner lead
    public without sharing class createLeadWrapper{        
        public Boolean createLead(Lead leadTocreated){
            try {
              insert leadTocreated;
        //********************************************************
        //list<User> RelatedPartnerUser = [SELECT id FROM USER WHERE ContactId = leadTocreated.Partner_Contact__r.id];
        list<User> RelatedPartnerUser = [SELECT id FROM USER WHERE ContactId =: lstLoggedinUser[0].contactid];
        
        
        LeadShare ls = New LeadShare();
        ls.LeadId = leadTocreated.id;
        ls.UserOrGroupId = RelatedPartnerUser[0].id;
        ls.LeadAccessLevel = 'Read';
        ls.RowCause = 'Manual';
        
        Insert ls;
        
        LeadConvertController.IsSharedFromLeadConversion = TRUE;
        //********************************************************
        
            } catch(Exception e)
            {
              ExceptionHandlingEmail.sendEmailonException(e);
                return false;
            }
            system.debug(leadTocreated);
            return true;
        }   //  end of createLead
    }// end of createLeadWrapper    
}//End oftrac_RegisterLeadController Class