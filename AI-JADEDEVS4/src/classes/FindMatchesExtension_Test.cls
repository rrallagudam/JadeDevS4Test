/**@@
#APEX CLASS NAME       :   FindMatchesExtension_Test
#DESCRIPTION           :   This is test class for findMatchesExtension Apex class.
@@**/
@IsTest
public class FindMatchesExtension_Test {
    
    Static List<Account> lstAcc;
    Static List<Contact> lstCon;
    Static List<Opportunity> lstOpp;
    Static List<Lead> lstLead;
    
    Static List<CRMfusionDBR101__Scenario__c> dBCList;
    Static List<CRMfusionDBR101__Scenario_Rule__c> dBCRuleList;
    
    /**@@
        #DESCRIPTION     : Creating test records
        #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
        // Create Test Account records
        lstAcc = new List<Account>();        
        lstAcc = DataFactory.createAccountTestRecords('TestAccount', 3);
        
        Account objAcc = new Account(id=lstAcc[0].id);
        objAcc.Name = 'Test';
        update objAcc;
        
        // Create Test Contact records
        lstCon = new List<Contact>();        
        lstCon = DataFactory.createContactTestRecords('TestContact', objAcc.id, 2);
        
        Contact objCon = new Contact(id=lstCon[0].id);
        objCon.FirstName = '';
        objCon.LastName = 'Test';
        objCon.Email = 'test@jade.com';
        update objCon;
        
        objCon = new Contact(id=lstCon[1].id);
        objCon.FirstName = 'Test';
        objCon.LastName = 'Jade';
        objCon.Email = 'test@jade.com';
        update objCon;
        
        // Create Test Opportunity records
        lstOpp = new List<Opportunity>();
        lstOpp = DataFactory.createOpportunityTestRecords('Test', 1);
        
        Opportunity objOpp = new Opportunity(id=lstOpp[0].id);
        objOpp.AccountId = objAcc.id;       
        update objOpp;
        
        // Create Test Lead records
        lstLead = new List<Lead>();        
        lstLead = DataFactory.createLeadTestRecords('Test', 4);
        
        Lead objLead = new Lead(id=lstLead[0].id);
        objLead.firstName = 'Test fname';
        objLead.LastName = 'Test lname';
        objLead.Company = 'Jade';
        objLead.Email = 'test@jade.com';
        objLead.Alternate_Email__c = 'test@jadeglobal.com';
        objLead.Capital_Planning_Needs__c = 'Yes';
        objLead.Cash_Flow_Balance_Sheet__c = 'Yes';
        objLead.Consolidation_Needs__c = 'Yes';
        objLead.Dashboard__c = 'Yes';
        objLead.Direct_Phone__c = '0123456789';
        objLead.Eloqua_Create_Date__c = system.today();
        objLead.Eloqua_Lead_Score__c = '56';
        objLead.Expense_Planning_Needs__c = 'Yes';
        objLead.Forecasting_Needs__c = 'Yes';
        objLead.GA_Adwords_ID__c = '0123';
        objLead.GA_Campaign_Content__c = 'test GA campaign content';
        objLead.GA_Campaign_Keyword__c = 'test GA campaign keyword';
        objLead.GA_Campaign_Medium__c = 'test GA campaign medium';
        objLead.GA_Campaign_Name__c = 'test GA campaign Name';
        objLead.GA_Landing_Page__c = 'test GA landing page';
        objLead.GA_Source__c = 'test GA Source';
        objLead.Hubspot_Highest_Score__c = 300;
        objLead.Key_Features_Needed__c = 'Test KFN';
        objLead.LastActivityDate_MinusEloqua__c = system.today().addDays(-5);
        objLead.Notes__c = 'Hi this is a test note for lead record';
        objLead.Lead_Offer_Most_Recent__c = 'Adaptive Live 2017';
        objLead.Lead_Source_Most_Recent__c = 'Adaptive Live 2017';
        objLead.Lead_Vendor__c = 'Test vendor';
        objLead.Lifecycle_Stage__c = 'MAL';
        objLead.Multiple_Site_Needs__c = 'Yes';
        objLead.Street = 'test Street';
        objLead.City = 'Mumbai';
        objLead.State = 'Maharastra';
        objLead.Description = 'Test Description';
        objLead.DoNotCall = True;
        objLead.Phone = '0123456789';
        objLead.LeadSource = '3rd Party Mailing';
        objLead.MobilePhone = '9123456780';
        objLead.Title = 'Test lead Title';
        objLead.fax = '011-23456';
        objLead.CPE_Credit__c = True;
        objLead.Personnel_Planning_Needs__c = 'Yes';
        objLead.Phone_Notes__c = 'Test Phone Notes';
        objLead.Referral_Company__c = 'Apple';
        objLead.Referral_Email__c = 'rf@test.com';
        objLead.Referral_First_Name__c = 'TestrfFirst';
        objLead.Referral_Last_Name__c = 'TestrfLast';
        objLead.Referral_Notes__c = 'referral note for apple company';
        objLead.Reopen__c = True;
        objLead.Reporting_Dashboard_Needs__c = 'Yes';
        objLead.Revenue_Planning_Needs__c = 'Yes';
        objLead.Role__c = 'Decision Maker';
        objLead.Title_STD__c = 'CEO, President';
        objLead.Trial_Created_Date__c = system.today();
        objLead.Timestamp_Lifecycle_Customer__c = system.now();
        objLead.Timestamp_Lifecycle_MQL__c = system.now();
        objLead.Timestamp_Lifecycle_SAL__c = system.now();
        objLead.Timestamp_Lifecycle_SQL__c = system.now();
        objLead.Trial_Key__c = 'Jade@123';
        update objLead;
        
        objLead = new Lead(id=lstLead[1].id);
        objLead.firstName = 'Test fname';
        objLead.LastName = 'Test lname';
        objLead.Company = 'Jade';
        objLead.Email = 'test@jade.com';
        update objLead;
        
        objLead = new Lead(id=lstLead[2].id);
        objLead.firstName = 'Test fname';
        objLead.LastName = 'Test lname';
        objLead.Company = 'Jade';
        objLead.Email = 'test@jade.com';
        update objLead;
        
        objLead = new Lead(id=lstLead[3].id);
        objLead.firstName = 'Test fname';
        objLead.LastName = 'Test lname';
        objLead.Company = 'Jade';
        objLead.Email = 'test@jade.com';
        update objLead;
        
        dBCList = new List<CRMfusionDBR101__Scenario__c>();
        dBCRuleList = new List<CRMfusionDBR101__Scenario_Rule__c>();
        //Insert first scenario
        CRMfusionDBR101__Scenario__c objDBC = DataFactory.createdBCTestRecords('Identifying Accounts With Open Opptys (Quick Conversion)', 'Lead to Account', 'No');
        dBCList.add(objDBC);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule = DataFactory.createDBCRuleforLeadRelatedObject('Company', objDBC.id, 'Name', 'Account Name', 'Lead to Account');
        dBCRuleList.add(objDBCRule);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule1 = DataFactory.createDBCRuleforLeadRelatedObject('Email', objDBC.id, 'Website', 'Website', 'Lead to Account');
        dBCRuleList.add(objDBCRule1);
        
        //Insert second scenario
        CRMfusionDBR101__Scenario__c objDBC1 = DataFactory.createdBCTestRecords('Identifying Customer Accounts (Quick Conversion)', 'Lead to Account', 'No');
        dBCList.add(objDBC1);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule2 = DataFactory.createDBCRuleforLeadRelatedObject('Company', objDBC.id, 'Name', 'Account Name', 'Lead to Account');
        dBCRuleList.add(objDBCRule2);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule3 = DataFactory.createDBCRuleforLeadRelatedObject('Email', objDBC.id, 'Website', 'Website', 'Lead to Account');
        dBCRuleList.add(objDBCRule3);
        
        //Insert third scenario
        CRMfusionDBR101__Scenario__c objDBC2 = DataFactory.createdBCTestRecords('Identifying Duplicate Contact - Based on Email (Quick Conversion)', 'Lead to Contact', 'No');
        dBCList.add(objDBC2);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule4 = DataFactory.createDBCRuleforLeadRelatedObject('Email', objDBC2.id, 'Email', 'Email', 'Lead to Contact');
        dBCRuleList.add(objDBCRule4);
        
        //Insert fourth scenario
        CRMfusionDBR101__Scenario__c objDBC3 = DataFactory.createdBCTestRecords('Identifying Duplicate Contact - Based on Firstname (Quick Conversion)', 'Lead to Contact', 'No');
        dBCList.add(objDBC3);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule5 = DataFactory.createDBCRuleforLeadRelatedObject('FirstName', objDBC3.id, 'FirstName', 'First Name', 'Lead to Contact');
        dBCRuleList.add(objDBCRule5);
        
        //Insert fifth scenario
        CRMfusionDBR101__Scenario__c objDBC4 = DataFactory.createdBCTestRecords('Identifying Duplicate Contact - Based on Lastname (Quick Conversion)', 'Lead to Contact', 'No');
        dBCList.add(objDBC4);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule6 = DataFactory.createDBCRuleforLeadRelatedObject('LastName', objDBC4.id, 'LastName', 'Last Name', 'Lead to Contact');
        dBCRuleList.add(objDBCRule6);
        
        //Insert sixth scenario
        CRMfusionDBR101__Scenario__c objDBC5 = DataFactory.createdBCTestRecords('Identifying duplicate Lead Based on Email (Quick Conversion)', 'Lead', 'No');
        dBCList.add(objDBC5);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule7 = DataFactory.createDBCRule('Email', objDBC5.id, 'Lead');
        dBCRuleList.add(objDBCRule7);
        
        //Insert seventh scenario
        CRMfusionDBR101__Scenario__c objDBC6 = DataFactory.createdBCTestRecords('Identifying duplicate Lead Based on Firstname (Quick Conversion)', 'Lead', 'Yes - Current User and Scenario Owner');
        dBCList.add(objDBC6);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule8 = DataFactory.createDBCRule('FirstName', objDBC6.id, 'Lead');
        dBCRuleList.add(objDBCRule8);
        
        //Insert seventh scenario
        CRMfusionDBR101__Scenario__c objDBC7 = DataFactory.createdBCTestRecords('Identifying duplicate Lead Based on Lastname (Quick Conversion)', 'Lead', 'Yes - Current User and Scenario Owner');
        dBCList.add(objDBC7);
        
        CRMfusionDBR101__Scenario_Rule__c objDBCRule9 = DataFactory.createDBCRule('LastName', objDBC7.id, 'Lead');
        dBCRuleList.add(objDBCRule9);
        
        
        List<CRMfusionDBR101__Scenario__c> lstScenarios = [SELECT id, CRMfusionDBR101__Scenario_Type__c FROM CRMfusionDBR101__Scenario__c];
        DupeBlocker_Scenarios__c objDS = DataFactory.CreateDScenariosCustomSetting(lstScenarios );
        
    }// End of setup
    
    /**@@
        #DESCRIPTION     : Test method for findMatchingLeads function
        #Paramaters      : None
    @@**/    
    @isTest static void findMatchingLeads_test() {
        test.startTest();
        
        // Get the test Lead records by using a SOQL query
        List<Lead> leadList = [SELECT Id FROM lead LIMIT 1];
        
        ApexPages.StandardController sc = new ApexPages.StandardController(leadList[0]);
        ApexPages.currentPage().getParameters().put('id', String.valueOf(leadList[0].Id));
        findMatchesExtension objFMExternsion = new findMatchesExtension(sc);
        
        test.stopTest();
        
    }// End of findMatchingLeads
    
    /**@@
        #DESCRIPTION     : Test method for redirectToLead function
        #Paramaters      : None
    @@**/
    @isTest static void redirectToLead_test() {
        // Get the test Lead records by using a SOQL query
        List<Lead> leadList = [SELECT Id FROM lead LIMIT 1];
        
        ApexPages.StandardController sc = new ApexPages.StandardController(leadList[0]);
        ApexPages.currentPage().getParameters().put('id', String.valueOf(leadList[0].Id));
        findMatchesExtension objFMExternsion = new findMatchesExtension(sc);
        objFMExternsion.redirectToLead();
    }// End of redirectToLead_test
    
    
    /**@@
        #DESCRIPTION     : Test method for findMatchingRecords function
        #Paramaters      : None
    @@**/
    @isTest static void findMatchingRecords_test() {
        // Get the test Lead records by using a SOQL query
        List<Lead> leadList = [SELECT Id FROM lead LIMIT 1];
        
        ApexPages.StandardController sc = new ApexPages.StandardController(leadList[0]);
        ApexPages.currentPage().getParameters().put('id', String.valueOf(leadList[0].Id));
        findMatchesExtension objFMExternsion = new findMatchesExtension(sc);
        objFMExternsion.isLeadFullNameSelected = true;
        objFMExternsion.isLeadCompanySelected = false;
        objFMExternsion.isLeadEmailSelected = false;
        objFMExternsion.isLeadPhoneSelected = true;
        objFMExternsion.findMatchingRecords();
    }// End of findMatchingRecords_test
    
    
    /**@@
        #DESCRIPTION     : Test method for mergeLeads function
        #Paramaters      : None
    @@**/
    @isTest static void mergeLeads_test() {
        // Get the test Lead records by using a SOQL query
        List<Lead> leadList = [SELECT Id, Name, Title, FirstName, LastName, Company, Phone, Email, LeadSource, OwnerId, Owner.Name, Lead_Score__c, State, Last_Activity_Date__c, PartnerAccountId, PartnerAccount.Name,
                                            Alternate_Email__c,Capital_Planning_Needs__c,Cash_Flow_Balance_Sheet__c,Consolidation_Needs__c,CPE_Credit__c,Current_Dials__c,Dashboard__c,Direct_Phone__c,Eloqua_Create_Date__c,Eloqua_Lead_Score__c,Expense_Planning_Needs__c,Forecasting_Needs__c,GA_Adwords_ID__c,GA_Campaign_Content__c,GA_Campaign_Keyword__c,GA_Campaign_Medium__c,GA_Campaign_Name__c,
                                            GA_Landing_Page__c,GA_Source__c,Hubspot_Highest_Score__c,HubSpot_Lead_Score__c,Key_Features_Needed__c,LastActivityDate_MinusEloqua__c,Notes__c,Lead_Offer_Most_Recent__c,Lead_Offer_Original__c,Lead_Source_Most_Recent__c,Lead_Vendor__c,Lifecycle_Stage__c,Multiple_Site_Needs__c,Personnel_Planning_Needs__c,Phone_Notes__c,Referral_Company__c,Referral_Email__c,
                                            Referral_First_Name__c,Referral_Last_Name__c, Referral_Notes__c,Reopen__c,Reporting_Dashboard_Needs__c,Revenue_Planning_Needs__c,Role__c,Timestamp_Lifecycle_Customer__c,Timestamp_Lifecycle_MAL__c,Timestamp_Lifecycle_MQL__c,Timestamp_Lifecycle_SAL__c,Timestamp_Lifecycle_SQL__c,Title_STD__c,Trial_Created_Date__c,Trial_Key__c,
                                            Trial_Username__c,Type__c,Update_Contact_from_Lead_Convert__c FROM lead];
        
        ApexPages.StandardController sc = new ApexPages.StandardController(leadList[0]);
        ApexPages.currentPage().getParameters().put('id', String.valueOf(leadList[0].Id));
        findMatchesExtension objFMExternsion = new findMatchesExtension(sc);
        objFMExternsion.mergeLeads();
                
        for(Lead ld: leadList){
            findMatchesExtension.wrapperLead objwrapperLead = new findMatchesExtension.wrapperLead();
            objwrapperLead.objLead = ld;
            objwrapperLead.isLeadSelected = true;
            objFMExternsion.matchingLeads.add(objwrapperLead);
        }
        
        
        objFMExternsion.mergeLeads();
        
        objFMExternsion.matchingLeads.remove(0);        
        objFMExternsion.mergeLeads();
        
    }// End of mergeLeads_test
    
    /**@@
        #DESCRIPTION     : Test method for mergeWithContacts function
        #Paramaters      : None
    @@**/
    @isTest static void mergeWithContacts_test() {
        // Get the test Lead records by using a SOQL query
        List<Lead> leadList = [SELECT Id, Name, Title, FirstName, LastName, Company, Phone, Email, LeadSource, OwnerId, Owner.Name, Lead_Score__c, State, Last_Activity_Date__c, PartnerAccountId, PartnerAccount.Name,
                                            Alternate_Email__c,Capital_Planning_Needs__c,Cash_Flow_Balance_Sheet__c,Consolidation_Needs__c,CPE_Credit__c,Current_Dials__c,Dashboard__c,Direct_Phone__c,Eloqua_Create_Date__c,Eloqua_Lead_Score__c,Expense_Planning_Needs__c,Forecasting_Needs__c,GA_Adwords_ID__c,GA_Campaign_Content__c,GA_Campaign_Keyword__c,GA_Campaign_Medium__c,GA_Campaign_Name__c,
                                            GA_Landing_Page__c,GA_Source__c,Hubspot_Highest_Score__c,HubSpot_Lead_Score__c,Key_Features_Needed__c,LastActivityDate_MinusEloqua__c,Notes__c,Lead_Offer_Most_Recent__c,Lead_Offer_Original__c,Lead_Source_Most_Recent__c,Lead_Vendor__c,Lifecycle_Stage__c,Multiple_Site_Needs__c,Personnel_Planning_Needs__c,Phone_Notes__c,Referral_Company__c,Referral_Email__c,
                                            Referral_First_Name__c,Referral_Last_Name__c, Referral_Notes__c,Reopen__c,Reporting_Dashboard_Needs__c,Revenue_Planning_Needs__c,Role__c,Timestamp_Lifecycle_Customer__c,Timestamp_Lifecycle_MAL__c,Timestamp_Lifecycle_MQL__c,Timestamp_Lifecycle_SAL__c,Timestamp_Lifecycle_SQL__c,Title_STD__c,Trial_Created_Date__c,Trial_Key__c,
                                            Trial_Username__c,Type__c,Update_Contact_from_Lead_Convert__c FROM lead LIMIT 2];
        
        ApexPages.StandardController sc = new ApexPages.StandardController(leadList[0]);
        ApexPages.currentPage().getParameters().put('id', String.valueOf(leadList[0].Id));
        findMatchesExtension objFMExternsion = new findMatchesExtension(sc);
        objFMExternsion.mergeWithContacts();
        
        for(Lead ld: leadList){
            findMatchesExtension.wrapperLead objwrapperLead = new findMatchesExtension.wrapperLead();
            objwrapperLead.objLead = ld;
            objwrapperLead.isLeadSelected = true;
            objFMExternsion.matchingLeads.add(objwrapperLead);
        }
        
        String strSOQLMatchContact;// = 'SELECT ' + objFMExternsion.retriveAllFieldsofObject('Contact') + ', Account.Name, Partner__r.Name, Owner.Name FROM Contact LIMIT 2';
      
        List<Contact> contactList = database.query(strSOQLMatchContact);
        for(Contact con: contactList){
            findMatchesExtension.wrapperContact objwrapperContact = new findMatchesExtension.wrapperContact();
            objwrapperContact.objContact = con;
            objwrapperContact.isContactSelected = true;
            objFMExternsion.matchingContacts.add(objwrapperContact);
        }
        
        // Check Lead is not Merged yet
        List<Lead> lstMergedLead = [SELECT id from Lead Where id =: leadList[0].Id];
        system.assertEquals(lstMergedLead.size() == 0, false);
        objFMExternsion.mergeWithContacts();
        
        // Check Lead is not Merged yet
        lstMergedLead = [SELECT id from Lead Where id =: leadList[0].Id];
        system.assertEquals(lstMergedLead.size() == 0, false);
        objFMExternsion.matchingLeads.remove(0);
        objFMExternsion.mergeWithContacts();
        
        objFMExternsion.matchingContacts.remove(0);
        objFMExternsion.mergeWithContacts();
        
        objFMExternsion.matchingContacts.remove(0);
        objFMExternsion.mergeWithContacts();
        
        // Lead has been merged with Contact successfully
        lstMergedLead = [SELECT id from Lead Where id =: leadList[0].Id];
        system.assertEquals(lstMergedLead.size() == 0, true);
        
    }// End of mergeWithContacts_test
    
    /**@@
        #DESCRIPTION     : Test method for convertLead function
        #Paramaters      : None
    @@**/
    @isTest static void convertLead_test() {
        // Get the test Lead records by using a SOQL query
        List<Lead> leadList = [SELECT Id, Name, Title, FirstName, LastName, Company, Phone, Email, LeadSource, OwnerId, Owner.Name, Lead_Score__c, State, Last_Activity_Date__c, PartnerAccountId, PartnerAccount.Name,
                                            Alternate_Email__c,Capital_Planning_Needs__c,Cash_Flow_Balance_Sheet__c,Consolidation_Needs__c,CPE_Credit__c,Current_Dials__c,Dashboard__c,Direct_Phone__c,Eloqua_Create_Date__c,Eloqua_Lead_Score__c,Expense_Planning_Needs__c,Forecasting_Needs__c,GA_Adwords_ID__c,GA_Campaign_Content__c,GA_Campaign_Keyword__c,GA_Campaign_Medium__c,GA_Campaign_Name__c,
                                            GA_Landing_Page__c,GA_Source__c,Hubspot_Highest_Score__c,HubSpot_Lead_Score__c,Key_Features_Needed__c,LastActivityDate_MinusEloqua__c,Notes__c,Lead_Offer_Most_Recent__c,Lead_Offer_Original__c,Lead_Source_Most_Recent__c,Lead_Vendor__c,Lifecycle_Stage__c,Multiple_Site_Needs__c,Personnel_Planning_Needs__c,Phone_Notes__c,Referral_Company__c,Referral_Email__c,
                                            Referral_First_Name__c,Referral_Last_Name__c, Referral_Notes__c,Reopen__c,Reporting_Dashboard_Needs__c,Revenue_Planning_Needs__c,Role__c,Timestamp_Lifecycle_Customer__c,Timestamp_Lifecycle_MAL__c,Timestamp_Lifecycle_MQL__c,Timestamp_Lifecycle_SAL__c,Timestamp_Lifecycle_SQL__c,Title_STD__c,Trial_Created_Date__c,Trial_Key__c,
                                            Trial_Username__c,Type__c,Update_Contact_from_Lead_Convert__c FROM lead LIMIT 2];
        
        ApexPages.StandardController sc = new ApexPages.StandardController(leadList[0]);
        ApexPages.currentPage().getParameters().put('id', String.valueOf(leadList[0].Id));
        findMatchesExtension objFMExternsion = new findMatchesExtension(sc);
        objFMExternsion.convertLead();
        
        for(Lead ld: leadList){
            findMatchesExtension.wrapperLead objwrapperLead = new findMatchesExtension.wrapperLead();
            objwrapperLead.objLead = ld;
            objwrapperLead.isLeadSelected = true;            
            objFMExternsion.matchingLeads.add(objwrapperLead);
        }
        
        List<Account> accountList = [SELECT id FROM Account LIMIT 2];
        for(Account acc: accountList){
            findMatchesExtension.wrapperAccount objwrapperAccount = new findMatchesExtension.wrapperAccount();
            objwrapperAccount.objAccount = acc;
            objwrapperAccount.isAccountSelected = true;
            objFMExternsion.matchingAccounts.add(objwrapperAccount);
        }
        
        // Check Lead is not converted yet
        List<Lead> lstConvertedLead = [SELECT id from Lead where isConverted = true];
        system.assertEquals(lstConvertedLead.size() > 0, false);
        
        objFMExternsion.convertLead();
        
        // Check Lead is not converted yet
        lstConvertedLead = [SELECT id from Lead where isConverted = true];
        system.assertEquals(lstConvertedLead.size() > 0, false);
        objFMExternsion.matchingLeads.remove(0);
        objFMExternsion.convertLead();
        
        objFMExternsion.matchingAccounts.remove(0);
        objFMExternsion.convertLead();
        
        objFMExternsion.matchingAccounts.remove(0);
        objFMExternsion.convertLead();
        
        // Lead has been Converted successfully
        lstConvertedLead = [SELECT id from Lead where isConverted = true];
        system.assertEquals(lstConvertedLead.size() > 0, true);
    }// End of convertLead_test
}