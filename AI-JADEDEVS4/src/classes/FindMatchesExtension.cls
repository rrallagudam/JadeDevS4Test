/**@@
#APEX CLASS NAME       :    FindMatchesExtension 
#DESCRIPTION           :    This apex class is used for Quick Lead Conversion, Find duplicate Leads, Accounts and Contats
#User Story Number     :    SOZO-400
@@**/
public class FindMatchesExtension{
    Public lead objLead {get; set;}
    String strLeadId;
    
    // For validation message display
    Public boolean displayValidationMsg {get; set;}  
    Public string strValidationMsg {get; set;}
    
    Public List<wrapperLead> matchingLeads {get; set;}
    Public List<wrapperContact> matchingContacts {get; set;}
    Public List<wrapperAccount> matchingAccounts {get; set;}
    Public List<Opportunity> matchingOpportunities {get; set;}
    
    //Search Matching records based on field Selction
    Public boolean isLeadFullNameSelected {get; set;}
    Public boolean isLeadCompanySelected {get; set;}
    Public boolean isLeadEmailSelected {get; set;}
    Public boolean isLeadPhoneSelected {get; set;}
    
    Public String strLeadFirstName {get; set;}
    Public String strLeadLastName {get; set;}
    Public String strLeadCompanyName {get; set;}
    Public String strLeadEmail {get; set;}
    Public String strLeadPhone {get; set;}
    
    // Constructor
    public FindMatchesExtension(Apexpages.standardController stdCon){
        try{
            strLeadId = ApexPages.currentPage().getParameters().get('id');
            if(strLeadId != null){
                //objLead = [SELECT id, Name, FirstName, LastName, Company, Email, Phone, Website, Title,Lifecycle_Stage__c, Lead_Source_Most_Recent__c, OwnerId, Owner.Name, Lead_Score__c, State, Last_Activity_Date__c, PartnerAccountId, PartnerAccount.Name, MobilePhone FROM lead where id =: strLeadId];
                string strSOQL = 'SELECT ' + retriveAllFieldsofObject('Lead') + ', Owner.Name FROM Lead WHERE id =: strLeadId';
            
                objLead = database.query(strSOQL);
            
                displayValidationMsg = false;
                strValidationMsg = '';
                
                isLeadFullNameSelected = false;
                isLeadCompanySelected = true;
                isLeadEmailSelected = true;
                isLeadPhoneSelected = false;
                
                strLeadFirstName = objLead.FirstName;
                strLeadLastName = objLead.LastName;
                strLeadCompanyName = objLead.Company;
                strLeadEmail = objLead.Email;
                strLeadPhone = objLead.Phone;
                
                loadMatchingRecords();
            
            }// End of If
        }catch (Exception ex){
                system.debug('Exception during fetching lead record:- ' + ex.getMessage());
                
                ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, ex.getMessage());
                ApexPages.addMessage(myMsg);
        }// End of try/Catch block
    }// End of Constructor
    
    /**@@
        #DESCRIPTION     : This method is used to find matching lead records using dup-blocker app
        #Paramaters      : None
    @@**/
    public void loadMatchingRecords(){
        try{
        
            findMatchingRecords();
            
        }catch (Exception ex){
            system.debug('Exception during finding matches:- ' + ex.getMessage());
            
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, ex.getMessage());
            ApexPages.addMessage(myMsg);
        }
    }// End of Method
    
    /**@@
        #DESCRIPTION     : This method is used to find matching lead / Contact/ Account records using dup-blocker app
        #Paramaters      : None
    @@**/
    public void findMatchingRecords(){
 
        set<Id> sDupLeads = new set<Id>();
        //sDupLeads.add(objLead.id);
        set<Id> sDupAccounts = new set<Id>();
        set<Id> sDupContacts = new set<Id>();
        
        matchingLeads = new List<wrapperLead>();
        matchingContacts = new List<wrapperContact>();
        matchingAccounts = new List<wrapperAccount>();  
        
        // use custom setting for below?
        Set<Id> leadscenarioIds = new Set<Id>();
        //leadscenarioIds.add('a3y0q0000008U2k'); // Scenario: Identifying duplicate Lead Based on Firstname (Quick Conversion)
        //leadscenarioIds.add('a3y0q0000008UWy'); // Scenario: Identifying duplicate Lead Based on Email (Quick Conversion)
        //leadscenarioIds.add('a3y0q0000008UX3'); // Scenario: Identifying duplicate Lead Based on Lastname (Quick Conversion)
                
        Set<Id> leadtoAccScenarioIds = new Set<Id>();
        //leadtoAccScenarioIds.add('a3y0q0000008UKiAAM'); // Scenario: Identifying Customer Accounts (Quick Conversion)
        //leadtoAccScenarioIds.add('a3y0q0000008UdLAAU'); // Scenario: Identifying Accounts With Open Opptys (Quick Conversion)
        
        Set<Id> leadtoConscenarioIds = new Set<Id>();
        //leadtoConscenarioIds.add('a3y0q0000008X53'); // Scenario: Identifying Duplicate Contact - Based on Lastname (Quick Conversion)
        //leadtoConscenarioIds.add('a3y0q0000008X61'); // Scenario: Identifying Duplicate Contact - Based on Firstname (Quick Conversion)
        //leadtoConscenarioIds.add('a3y0q0000008X66'); // Scenario: Identifying Duplicate Contact - Based on Email (Quick Conversion)
        
        List<DupeBlocker_Scenarios__c> dupBlockerScenarios = DupeBlocker_Scenarios__c.getall().values();
        for(DupeBlocker_Scenarios__c ds: dupBlockerScenarios){
            if(ds.Lead__c != null){
                string[] leadarrScenarioIds = ds.Lead__c.split(';');
                for(String str: leadarrScenarioIds){
                    leadscenarioIds.add(str);
                }// End of for              
            }// End of If
            if(ds.Lead_to_Account__c != null){
                string[] leadtoAccarrScenarioIds = ds.Lead_to_Account__c.split(';');
                for(String str: leadtoAccarrScenarioIds){
                    leadtoAccScenarioIds.add(str);
                }// End of for              
            }// End of If
            if(ds.Lead_to_Contact__c != null){
                string[] leadtoConarrScenarioIds = ds.Lead_to_Contact__c.split(';');
                for(String str: leadtoConarrScenarioIds){
                    leadtoConscenarioIds.add(str);
                }// End of for
            }// End of If
        }// End of for
        Lead objLeadCompare = new Lead(id=objLead.id);
        if(isLeadFullNameSelected == false){
            objLeadCompare.FirstName = null;
            objLeadCompare.LastName = null;
        }else{
            objLeadCompare.FirstName = strLeadFirstName;
            objLeadCompare.LastName = strLeadLastName;
        }//End of If
        
        
        if(isLeadCompanySelected == false){
            objLeadCompare.Company = null;
        }else{
            objLeadCompare.Company = strLeadCompanyName;
        }//End of If
        
        if(isLeadEmailSelected == false){
            objLeadCompare.Email = null;
        }else{
            objLeadCompare.Email = strLeadEmail;
        }//End of If
        
        if(isLeadPhoneSelected == false){
            objLeadCompare.Phone = null;
        }else{
            objLeadCompare.Phone = strLeadPhone;
        }//End of If
        
        System.debug('@@@@@@@@ Lead Compare: '+objLeadCompare);
        List<CRMfusionDBR101.DB_Api.Matches> matchSets = CRMfusionDBR101.DB_Api.findMatches( objLeadCompare );
        system.debug('@@@@@@@@'+matchSets);
        for ( CRMfusionDBR101.DB_Api.Matches matchSet : matchSets ){
            if(leadscenarioIds.contains(matchSet.scenarioId)){
                for ( Id leadId : matchSet.matchedIds ){
                    sDupLeads.add(leadId);
                }// End of For
            }// End of If
            if(leadtoAccScenarioIds.contains(matchSet.scenarioId)){
                for ( Id accId : matchSet.matchedIds ){
                    sDupAccounts.add(accId);
                }// End of For
            }// End of If
            
            if(leadtoConscenarioIds.contains(matchSet.scenarioId)){
                for ( Id accId : matchSet.matchedIds ){
                    sDupContacts.add(accId);
                }// End of For
            }// End of If
            
        }// End of For
        
        // Fetch Matching Lead Records --- START
        // Query data for the leads in the match set.
        List<Lead> matchingLeadRecords = [SELECT Id, Name, Title, Company, Phone, Email, Leadsource, OwnerId, Owner.Name, 
                                            Lead_Score__c, State, Last_Activity_Date__c, PartnerAccountId, PartnerAccount.Name                                            
                                         FROM Lead WHERE Id IN :sDupLeads AND Id != :objLead.Id LIMIT 100];
        
        wrapperLead objwrapperLead;
        
        // add the lead the user is looking at
        objwrapperLead = new wrapperLead();
        objwrapperLead.objLead = objLead;
        objwrapperLead.isLeadSelected = false;
        matchingLeads.add(objwrapperLead);
        
        // add the leads dupeblocker found
        for(Lead ld: matchingLeadRecords){
            objwrapperLead = new wrapperLead();
            objwrapperLead.objLead = ld;
            objwrapperLead.isLeadSelected = false;
            matchingLeads.add(objwrapperLead);
        }// End of for        
        // Fetch Matching Lead Records --- END
        
        
        // Fetch Matching Account Records --- START
        // Query data for the Accounts in the match set, and get open opportunities
        List<Account> matchingAccountRecords = [SELECT Id, Name, Type, Status__c, OwnerId, Owner.Name, Partner_Account__c, Partner_Account__r.Name, BillingState, BillingCountry, (select  Id, Name, Type, StageName, OwnerId, Owner.Name, Closedate from Opportunities where StageName NOT in ('Disqualified', 'Closed Won','Closed Won - Installments', 'Closed Lost', 'Closed Lost Non-Pursuit') and Type='New') FROM Account WHERE Id IN :sDupAccounts LIMIT 100];
        
        // prepare accounts for displaying on VF page
        wrapperAccount objwrapperAccount;
        for(Account acc: matchingAccountRecords){
            objwrapperAccount = new wrapperAccount();
            objwrapperAccount.objAccount = acc;
            objwrapperAccount.isAccountSelected = false;
            matchingAccounts.add(objwrapperAccount);
        }        
        // Fetch Matching Account Records --- END
        
        // Fetch Matching Contact Records --- START
        // Query data for the Contacts in the match set.
        //List<Contact> matchingContactRecords = [SELECT Id, Name, FirstName, LastName, Title, Role__c, AccountId, Account.Name, Phone, Email, Status__c, OwnerId, Owner.Name, Eloqua_Lead_Score__c, Partner__c, Partner__r.Name FROM Contact WHERE Id IN :sDupContacts LIMIT 350];
        
        String strSOQLMatchContact = 'SELECT ' + retriveAllFieldsofObject('Contact') + ', Account.Name, Partner__r.Name, Owner.Name FROM Contact WHERE Id IN :sDupContacts LIMIT 100';
        //System.debug('### soql for contacts: '+strSOQLMatchContact);
        List<Contact> matchingContactRecords = database.query(strSOQLMatchContact);
        wrapperContact objwrapperContact;
        for(Contact con: matchingContactRecords){
            objwrapperContact = new wrapperContact();
            objwrapperContact.objContact = con;
            objwrapperContact.isContactSelected = false;
            matchingContacts.add(objwrapperContact);
        }       
        // Fetch Matching Contact Records --- END
        
    }// End of Method
        
    /**@@
        #DESCRIPTION     : This method is used to redirect user to lead record detail page
        #Paramaters      : None
    @@**/
    public pagereference redirectToLead(){
        pagereference pr = new pagereference('/' + strLeadId);
        return pr;              
    }// End of Method
    
    /**@@
        #DESCRIPTION     : This method is used to merge lead records
        #Paramaters      : None
    @@**/
    public string mergeLeads(){ 
        try{
            integer intNumOfRecSelected = 0;
            string strParameter = '';
            
            for(wrapperLead wl: matchingLeads){
                if(wl.isLeadSelected == true){
                    intNumOfRecSelected++;
                    strParameter += '&cid=' + wl.objLead.id;                
                }// End of If
            }// End of for
    
            strValidationMsg = '';
            if(intNumOfRecSelected < 2){
                displayValidationMsg = true;
                
                strValidationMsg = 'Error: You must select two or three records to merge.';
                return null;
            }else if(intNumOfRecSelected > 3){
                displayValidationMsg = true;
                strValidationMsg = 'Error: You may only select up to three records to merge.';
                return null;
            }else{
                string strMergeURL = '/lead/leadmergewizard.jsp?goNext=Merge+Leads&' + strParameter;
                return strMergeURL;            
            }// End of If
        }catch (Exception ex){
            system.debug('Exception during Merge Leads:- ' + ex.getMessage());
            
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, ex.getMessage());
            ApexPages.addMessage(myMsg);
            return null;
        }            
    }// End of Method
    
    
    /**@@
        #DESCRIPTION     : This method is used to merge contact records
        #Paramaters      : None
    @@**/
    public pagereference mergeWithContacts(){
        try{
            integer intNumOfContactRecSelected = 0;
            
            
            Contact objSelContact;
            for(wrapperContact wl: matchingContacts){
                if(wl.isContactSelected == true){
                    intNumOfContactRecSelected++;
                    objSelContact = wl.objContact;               
                }// End of If
            }// End of for
            
            displayValidationMsg = false;
            if(intNumOfContactRecSelected == 1){
                // Merge With Contacts code
                // Standard Fields
                if(objLead.Street != null && objSelContact.MailingStreet == null){
                    objSelContact.MailingStreet = objLead.Street;
                }// End of If
                if(objLead.City != null && objSelContact.MailingCity == null){
                    objSelContact.MailingCity = objLead.City;
                }// End of If
                if(objLead.State != null && objSelContact.MailingState == null){
                    objSelContact.MailingState = objLead.State;
                }// End of If
                if(objLead.Postalcode != null && objSelContact.MailingPostalcode == null){
                    objSelContact.MailingPostalcode = objLead.Postalcode;
                }// End of If
                if(objLead.Country != null && objSelContact.MailingCountry == null){
                    objSelContact.MailingCountry = objLead.Country;
                }// End of If
                if(objLead.Description != null && objSelContact.Description == null){
                    objSelContact.Description = objLead.Description;
                }// End of If
                if(objLead.DoNotCall != null && objSelContact.DoNotCall == null){
                    objSelContact.DoNotCall = objLead.DoNotCall;
                }// End of If
                if(objLead.Email != null && objSelContact.Email == null){
                    objSelContact.Email = objLead.Email;
                }// End of If
                if(objLead.HasOptedOutOfEmail != null && objSelContact.HasOptedOutOfEmail == null){
                    objSelContact.HasOptedOutOfEmail = objLead.HasOptedOutOfEmail;
                }// End of If
                if(objLead.Fax != null && objSelContact.Fax == null){
                    objSelContact.Fax = objLead.Fax;
                }// End of If
                if(objLead.HasOptedOutOfFax != null && objSelContact.HasOptedOutOfFax == null){
                    objSelContact.HasOptedOutOfFax = objLead.HasOptedOutOfFax;
                }// End of If
                if(objLead.Firstname != null && objSelContact.Firstname == null){
                    objSelContact.Firstname = objLead.Firstname;
                }// End of If
                if(objLead.OwnerId != null && objSelContact.OwnerId == null){
                    objSelContact.OwnerId = objLead.OwnerId;
                }// End of If
                if(objLead.LeadSource != null && objSelContact.LeadSource == null){
                    objSelContact.LeadSource = objLead.LeadSource;
                }// End of If
                if(objLead.MobilePhone != null && objSelContact.MobilePhone == null){
                    objSelContact.MobilePhone = objLead.MobilePhone;
                }// End of If
                if(objLead.Phone != null && objSelContact.Phone == null){
                    objSelContact.Phone = objLead.Phone;
                }// End of If
                if(objLead.Title != null && objSelContact.Title == null){
                    objSelContact.Title = objLead.Title;
                }// End of If
                
                // Custom Fields
                if(objLead.Alternate_Email__c != null && objSelContact.Alternate_Email__c == null){
                    objSelContact.Alternate_Email__c = objLead.Alternate_Email__c;
                }// End of If
                if(objLead.Capital_Planning_Needs__c != null && objSelContact.Capital_Planning_Needs__c == null){
                    objSelContact.Capital_Planning_Needs__c = objLead.Capital_Planning_Needs__c;
                }// End of If
                if(objLead.Cash_Flow_Balance_Sheet__c != null && objSelContact.Cash_Flow_Balance_Sheet__c == null){
                    objSelContact.Cash_Flow_Balance_Sheet__c = objLead.Cash_Flow_Balance_Sheet__c;
                }// End of If
                if(objLead.Consolidation_Needs__c != null && objSelContact.Consolidation__c == null){
                    objSelContact.Consolidation__c = objLead.Consolidation_Needs__c;
                }// End of If
                if(objLead.CPE_Credit__c != null && objSelContact.CPE_Credit__c == null){
                    objSelContact.CPE_Credit__c = objLead.CPE_Credit__c;
                }// End of If
                if(objLead.Current_Dials__c != null && objSelContact.Current_Dials__c == null){
                    objSelContact.Current_Dials__c = objLead.Current_Dials__c;
                }// End of If
                if(objLead.Dashboard__c != null && objSelContact.Dashboard__c == null){
                    objSelContact.Dashboard__c = objLead.Dashboard__c;
                }// End of If
                if(objLead.Direct_Phone__c != null && objSelContact.Direct_Phone__c == null){
                    objSelContact.Direct_Phone__c = objLead.Direct_Phone__c;
                }// End of If
                if(objLead.Eloqua_Create_Date__c != null && objSelContact.Eloqua_Create_Date__c == null){
                    objSelContact.Eloqua_Create_Date__c = objLead.Eloqua_Create_Date__c;
                }// End of If
                if(objLead.Eloqua_Lead_Score__c != null && objSelContact.Eloqua_Lead_Score__c == null){
                    objSelContact.Eloqua_Lead_Score__c = objLead.Eloqua_Lead_Score__c;
                }// End of If
                if(objLead.Expense_Planning_Needs__c != null && objSelContact.Expense_Planning__c == null){
                    objSelContact.Expense_Planning__c = objLead.Expense_Planning_Needs__c;
                }// End of If
                if(objLead.Forecasting_Needs__c != null && objSelContact.Forecasting__c == null){
                    objSelContact.Forecasting__c = objLead.Forecasting_Needs__c;
                }// End of If
                if(objLead.GA_Adwords_ID__c != null && objSelContact.GA_Adwords_ID__c == null){
                    objSelContact.GA_Adwords_ID__c = objLead.GA_Adwords_ID__c;
                }// End of If
                if(objLead.GA_Campaign_Content__c != null && objSelContact.GA_Campaign_Content__c == null){
                    objSelContact.GA_Campaign_Content__c = objLead.GA_Campaign_Content__c;
                }// End of If
                if(objLead.GA_Campaign_Keyword__c != null && objSelContact.GA_Campaign_Keyword__c == null){
                    objSelContact.GA_Campaign_Keyword__c = objLead.GA_Campaign_Keyword__c;
                }// End of If
                if(objLead.GA_Campaign_Medium__c != null && objSelContact.GA_Campaign_Medium__c == null){
                    objSelContact.GA_Campaign_Medium__c = objLead.GA_Campaign_Medium__c;
                }// End of If
                if(objLead.GA_Campaign_Name__c != null && objSelContact.GA_Campaign_Name__c == null){
                    objSelContact.GA_Campaign_Name__c = objLead.GA_Campaign_Name__c;
                }// End of If
                if(objLead.GA_Landing_Page__c != null && objSelContact.GA_Landing_Page__c == null){
                    objSelContact.GA_Landing_Page__c = objLead.GA_Landing_Page__c;
                }// End of If
                if(objLead.GA_Source__c != null && objSelContact.GA_Source__c == null){
                    objSelContact.GA_Source__c = objLead.GA_Source__c;
                }// End of If
                if(objLead.Hubspot_Highest_Score__c != null && objSelContact.Hubspot_Highest_Score__c == null){
                    objSelContact.Hubspot_Highest_Score__c = objLead.Hubspot_Highest_Score__c;
                }// End of If
                if(objLead.HubSpot_Lead_Score__c != null && objSelContact.HubSpot_Lead_Score__c == null){
                    objSelContact.HubSpot_Lead_Score__c = objLead.HubSpot_Lead_Score__c;
                }// End of If
                if(objLead.Key_Features_Needed__c != null && objSelContact.Key_Features_Needed__c == null){
                    objSelContact.Key_Features_Needed__c = objLead.Key_Features_Needed__c;
                }// End of If
                if(objLead.LastActivityDate_MinusEloqua__c != null && objSelContact.LastActivityDate_MinusEloqua__c == null){
                    objSelContact.LastActivityDate_MinusEloqua__c = objLead.LastActivityDate_MinusEloqua__c;
                }// End of If
                if(objLead.Notes__c != null && objSelContact.Notes__c == null){
                    objSelContact.Notes__c = objLead.Notes__c;
                }// End of If
                if(objLead.Lead_Offer_Most_Recent__c != null && objSelContact.Lead_Offer_Most_Recent__c == null){
                    objSelContact.Lead_Offer_Most_Recent__c = objLead.Lead_Offer_Most_Recent__c;
                }// End of If
                if(objLead.Lead_Offer_Original__c != null && objSelContact.Lead_Offer_Original__c == null){
                    objSelContact.Lead_Offer_Original__c = objLead.Lead_Offer_Original__c;
                }// End of If
                if(objLead.Lead_Source_Most_Recent__c != null && objSelContact.Lead_Source_Most_Recent__c == null){
                    objSelContact.Lead_Source_Most_Recent__c = objLead.Lead_Source_Most_Recent__c;
                }// End of If
                if(objLead.Lead_Vendor__c != null && objSelContact.Lead_Vendor__c == null){
                    objSelContact.Lead_Vendor__c = objLead.Lead_Vendor__c;
                }// End of If
                if(objLead.Lifecycle_Stage__c != null && objSelContact.Lifecycle_Stage__c == null){
                    objSelContact.Lifecycle_Stage__c = objLead.Lifecycle_Stage__c;
                }// End of If
                if(objLead.Multiple_Site_Needs__c != null && objSelContact.Multiple_Sites__c == null){
                    objSelContact.Multiple_Sites__c = objLead.Multiple_Site_Needs__c;
                }// End of If
                if(objLead.Personnel_Planning_Needs__c != null && objSelContact.Personnel_Planning__c == null){
                    objSelContact.Personnel_Planning__c = objLead.Personnel_Planning_Needs__c;
                }// End of If
                if(objLead.Phone_Notes__c != null && objSelContact.Phone_Notes__c == null){
                    objSelContact.Phone_Notes__c = objLead.Phone_Notes__c;
                }// End of If
                if(objLead.Referral_Company__c != null && objSelContact.Referral_Company__c == null){
                    objSelContact.Referral_Company__c = objLead.Referral_Company__c;
                }// End of If
                if(objLead.Referral_Email__c != null && objSelContact.Referral_Email__c == null){
                    objSelContact.Referral_Email__c = objLead.Referral_Email__c;
                }// End of If
                if(objLead.Referral_First_Name__c != null && objSelContact.Referral_First_Name__c == null){
                    objSelContact.Referral_First_Name__c = objLead.Referral_First_Name__c;
                }// End of If
                if(objLead.Referral_Last_Name__c != null && objSelContact.Referral_Last_Name__c == null){
                    objSelContact.Referral_Last_Name__c = objLead.Referral_Last_Name__c;
                }// End of If
                if(objLead.Referral_Notes__c != null && objSelContact.Referral_Notes__c == null){
                    objSelContact.Referral_Notes__c = objLead.Referral_Notes__c;
                }// End of If
                if(objLead.Reopen__c != null && objSelContact.Reopen__c == null){
                    objSelContact.Reopen__c = objLead.Reopen__c;
                }// End of If
                if(objLead.Reporting_Dashboard_Needs__c != null && objSelContact.Reporting__c == null){
                    objSelContact.Reporting__c = objLead.Reporting_Dashboard_Needs__c;
                }// End of If
                if(objLead.Revenue_Planning_Needs__c != null && objSelContact.Revenue_Planning__c == null){
                    objSelContact.Revenue_Planning__c = objLead.Revenue_Planning_Needs__c;
                }// End of If
                if(objLead.Role__c != null && objSelContact.Purchasing_Role__c == null){
                    objSelContact.Purchasing_Role__c = objLead.Role__c;
                }// End of If
                if(objLead.Timestamp_Lifecycle_Customer__c != null && objSelContact.Timestamp_Lifecycle_Customer__c == null){
                    objSelContact.Timestamp_Lifecycle_Customer__c = objLead.Timestamp_Lifecycle_Customer__c;
                }// End of If
                if(objLead.Timestamp_Lifecycle_MAL__c != null && objSelContact.Timestamp_Lifecycle_MAL__c == null){
                    objSelContact.Timestamp_Lifecycle_MAL__c = objLead.Timestamp_Lifecycle_MAL__c;
                }// End of If
                if(objLead.Timestamp_Lifecycle_MQL__c != null && objSelContact.Timestamp_Lifecycle_MQL__c == null){
                    objSelContact.Timestamp_Lifecycle_MQL__c = objLead.Timestamp_Lifecycle_MQL__c;
                }// End of If
                if(objLead.Timestamp_Lifecycle_SAL__c != null && objSelContact.Timestamp_Lifecycle_SAL__c == null){
                    objSelContact.Timestamp_Lifecycle_SAL__c = objLead.Timestamp_Lifecycle_SAL__c;
                }// End of If
                if(objLead.Timestamp_Lifecycle_SQL__c != null && objSelContact.Timestamp_Lifecycle_SQL__c == null){
                    objSelContact.Timestamp_Lifecycle_SQL__c = objLead.Timestamp_Lifecycle_SQL__c;
                }// End of If
                if(objLead.Title_STD__c != null && objSelContact.Title_STD__c == null){
                    objSelContact.Title_STD__c = objLead.Title_STD__c;
                }// End of If
                if(objLead.Trial_Created_Date__c != null && objSelContact.Trial_Created_Date__c == null){
                    objSelContact.Trial_Created_Date__c = objLead.Trial_Created_Date__c;
                }// End of If
                if(objLead.Trial_Key__c != null && objSelContact.Trial_Password__c == null){
                    objSelContact.Trial_Password__c = objLead.Trial_Key__c;
                }// End of If
                if(objLead.Trial_Username__c != null && objSelContact.Trial_Username__c == null){
                    objSelContact.Trial_Username__c = objLead.Trial_Username__c;
                }// End of If
                if(objLead.Type__c != null && objSelContact.Type__c == null){
                    objSelContact.Type__c = objLead.Type__c;
                }// End of If
                if(objLead.Update_Contact_from_Lead_Convert__c != null && objSelContact.Update_Contact_from_Lead_Convert__c == null){
                    objSelContact.Update_Contact_from_Lead_Convert__c = objLead.Update_Contact_from_Lead_Convert__c;
                }// End of If
                update objSelContact;
                
                delete objLead;
                loadMatchingRecords();
                /*Database.LeadConvert lc = new Database.LeadConvert();
                lc.setLeadId(objLead.id);
                //lc.setAccountId(objSelAccount.id);
                lc.setContactId(objSelContact.id);
                
                LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
                lc.setConvertedStatus(convertStatus.MasterLabel);
                
                Database.LeadConvertResult lcr = Database.convertLead(lc);*/
                
                
                ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Info, 'Lead merged successfully.');
                ApexPages.addMessage(myMsg);
                pagereference pr = new pagereference('/' + objSelContact.id);
                return pr;
                
            }else if(intNumOfContactRecSelected > 1){
                displayValidationMsg = true;
                strValidationMsg = 'Error: You may only select one contact record to merge.';
                return null;
            }else if(intNumOfContactRecSelected == 0){
                displayValidationMsg = true;
                strValidationMsg = 'Error: You must select one contact record to merge.';
                return null;
            }// End of If
            return null;     
        }catch (Exception ex){
            system.debug('Exception during Merge with Contact:- ' + ex.getMessage());
            
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, ex.getMessage());
            ApexPages.addMessage(myMsg); 
            return null;          
        } 
    }// End of Method
    
    
    /**@@
        #DESCRIPTION     : This method is used to merge contact records
        #Paramaters      : None
    @@**/
    public pagereference convertLead(){
        try{
            
            strValidationMsg = '';
            
            integer intNumOfAccountRecSelected = 0;
            Account objSelAccount;
            for(wrapperAccount wl: matchingAccounts){
                if(wl.isAccountSelected == true){
                    intNumOfAccountRecSelected++;
                    objSelAccount = wl.objAccount;               
                }// End of If
            }// End of for
            
            if(intNumOfAccountRecSelected == 1){
                // Convert Lead Code
                //Status__c = 'New'; 
                objLead.Update_Contact_from_Lead_Convert__c = 'No';
                
                update objLead;
                              
                string strLeadLifeCycle = objLead.Lifecycle_Stage__c;
                                
                Database.LeadConvert lc = new Database.LeadConvert();
                lc.setLeadId(objLead.id);
                lc.setAccountId(objSelAccount.id);
                lc.setDoNotCreateOpportunity(true);
                
                LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
                lc.setConvertedStatus(convertStatus.MasterLabel);
                
                Database.LeadConvertResult lcr = Database.convertLead(lc);
                System.assert(lcr.isSuccess());
                
                Contact objContact = new Contact(id=lcr.getContactId());
                //objContact.Status__c = 'New';
                //objContact.Lifecycle_Stage__c = strLeadLifeCycle;
                //update objContact;
                
                pagereference pr = new pagereference('/'+objContact.id);
                return pr;
                
            }else if(intNumOfAccountRecSelected > 1){
                displayValidationMsg = true;
                strValidationMsg = 'Error: You may only select one account record to convert a lead.';
            }else if(intNumOfAccountRecSelected == 0){
                displayValidationMsg = true;
                strValidationMsg = 'Error: You must select one account record to convert a lead.';
            }// End of If
            return null;
        
        }catch (Exception ex){
            system.debug('Exception during Convert Lead:- ' + ex.getMessage());
            
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, ex.getMessage());
            ApexPages.addMessage(myMsg);  
            return null;         
        } 
    }// End of Method
    
    /**@@
        #DESCRIPTION     : This method is used to retrive All Fields of Salesforce Object
        #Paramaters      : Salesforce Object API Name
    @@**/
    public static string retriveAllFieldsofObject(string strObjectAPIName){
        String selects = '';
        
        Map<String, Schema.SObjectField> fMap = Schema.getGlobalDescribe().get(strObjectAPIName.toLowerCase()).getDescribe().Fields.getMap();
        list<string> selectFields = new list<string>();
        
        if (fMap != null){
            for (Schema.SObjectField ft : fMap.values()){ // loop through all field tokens (ft)
                Schema.DescribeFieldResult fd = ft.getDescribe(); // describe each field (fd)
                selectFields.add(fd.getName());                
            }
        }
        if (!selectFields.isEmpty()){
            for (string s:selectFields){
                selects += s + ',';
            }
            if (selects.endsWith(',')){selects = selects.substring(0,selects.lastIndexOf(','));}
             
        }
        
        return selects;
    }
    
    /**@@
        #DESCRIPTION     : Wrapper Class of Lead
        #Paramaters      : None
    @@**/
    public class wrapperLead{
        public boolean isLeadSelected {get; set;}
        public Lead objLead {get; set;}
    }// End of wrapper Class
    
    /**@@
        #DESCRIPTION     : Wrapper Class of Contact
        #Paramaters      : None
    @@**/
    public class wrapperContact{
        public boolean isContactSelected {get; set;}
        public Contact  objContact {get; set;}
    }// End of wrapper Class
    
    /**@@
        #DESCRIPTION     : Wrapper Class of Account
        #Paramaters      : None
    @@**/
    public class wrapperAccount{
        public boolean isAccountSelected {get; set;}
        public Account objAccount {get; set;}
    }// End of wrapper Class
    
    
}// End of Class