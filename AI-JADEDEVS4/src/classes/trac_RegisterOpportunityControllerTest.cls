/**@@
#CLASS NAME    :  trac_RegisterOpportunityControllerTest
#DESCRIPTION   : This is test class which covers 'trac_RegisterOpportunityController' Class  
@@**/
@isTest
public class trac_RegisterOpportunityControllerTest {
    
    /**@@
        #DESCRIPTION     : Creating test records
        #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        List<CRMfusionDBR101__Scenario__c> dBCList = new List<CRMfusionDBR101__Scenario__c>();
        List<CRMfusionDBR101__Scenario_Rule__c> dBCRuleList = new List<CRMfusionDBR101__Scenario_Rule__c>();
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
    }
    
    /**@@
    #DESCRIPTION    : Verify that picklist options are returned correctly for Industry, Follow_Up__c, MDF_Sourced_Lead__c, ERP__c, CRM__c fields etc.
    #Paramaters     : No Parameters
    @@**/
    @isTest
    static void testInitFields() {
        // Call initFields
        trac_RegisterOpportunityController.InitFieldsResponse resp = trac_RegisterOpportunityController.initFields();
        
        // 1. Verify Industry Focus options
        verifyPicklistOptions(Account.Adaptive_Industry__c.getDescribe().getPicklistValues(), resp.IndustryFocusOptions);
        
        // 2. Verify Follow Up
        verifyPicklistOptions(Opportunity.Referral_Follow_Up__c.getDescribe().getPicklistValues(), resp.FollowUpOptions);
        
        // 3. Verify MDF Sourced Lead
        verifyPicklistOptions(Opportunity.MDF_Sourced_Lead__c.getDescribe().getPicklistValues(), resp.MDFOptions);
        
        // 4. Verify ERP
        verifyPicklistOptions(Contact.ERP__c.getDescribe().getPicklistValues(), resp.ERPSystemOptions);
        
        // 5. Verify CRM
        verifyPicklistOptions(Contact.CRM__c.getDescribe().getPicklistValues(), resp.CRMSystemOptions);
        
        // 6. Verify HR
        verifyPicklistOptions(Contact.HR__c.getDescribe().getPicklistValues(), resp.HRSystemOptions);
        
        // 7. Verify Fiscal Year End
        verifyPicklistOptions(Contact.Fiscal_Year_End__c.getDescribe().getPicklistValues(), resp.FiscalYearEndOptions);
        
        // 8. Verify Budget Project
        verifyPicklistOptions(Contact.Budgeted_Project__c.getDescribe().getPicklistValues(), resp.BudgetedProjectOptions);
        
        // 9. Verify Time Frame
        verifyPicklistOptions(Contact.Time_Frame__c.getDescribe().getPicklistValues(), resp.TimeframeOptions);
        
        verifyPicklistOptions(Opportunity.Solution_Requirements__c.getDescribe().getPicklistValues(), resp.SolutionRequirementOptions);
        
        
        
        // 10. Verify Dashboard
       /* verifyPicklistOptions(Contact.Dashboard__c.getDescribe().getPicklistValues(), resp.DashboardOptions);
        
        // 11. Verify Expense Planning
        verifyPicklistOptions(Contact.Expense_Planning__c.getDescribe().getPicklistValues(), resp.ExpensePlanningOptions);
        
        // 12. Verify Revenue Planning
        verifyPicklistOptions(Contact.Revenue_Planning__c.getDescribe().getPicklistValues(), resp.RevneuePlanningOptions);
        
        // 13. Verify Personnel Planning
        verifyPicklistOptions(Contact.Personnel_Planning__c.getDescribe().getPicklistValues(), resp.PersonnelPlanningOptions);
        
        // 14. Verify Forecast
        verifyPicklistOptions(Contact.Forecasting__c.getDescribe().getPicklistValues(), resp.ForecastingOptions);
        
        // 15. Verify Consolidation
        verifyPicklistOptions(Contact.Consolidation__c.getDescribe().getPicklistValues(), resp.ConsolidationOptions);
        
        // 16. Verify Cash Flow
        verifyPicklistOptions(Contact.Cash_Flow_Balance_Sheet__c.getDescribe().getPicklistValues(), resp.CashFlowOptions); */ 
    }
    /**@@
    #DESCRIPTION    :verify test account record  
    #Paramaters     : No Parameters
    @@**/
    
    @isTest
    static void testGetAccount() {
        list<Account> a = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        insert a;
        
        Account retAcct = trac_RegisterOpportunityController.getAccount(a[0].Id);
        
        verifyAccount(a[0], retAcct);
    }
    /**@@
    #DESCRIPTION    :verify test contact record  
    #Paramaters     : No Parameters
    @@**/
    
    @isTest
    static void testGetContact() {
        list<Contact> c = DataFactory.createPartnerContactTestRecords('testTitle','Yes', 1);
        insert c;
        
        Contact retContact = trac_RegisterOpportunityController.getContact(c[0].Id);
        
        verifyContact(c[0], retContact);
    }
    /**@@
    #DESCRIPTION    :verify test opportunity record  
    #Paramaters     : No Parameters
    @@**/
    
    @isTest(seeAllData=false)
    private static void testRegisterOpportunity() {
                 
        trac_RegisterOpportunityController.RegisterOpportunityResponse resp;
        //creating opportunity using partner user.
        list<user> lstuser =[Select id from user Where ContactId !=NUll AND isActive=true limit 1];
       //  system.runAs(lstuser[0]){
             
        // 1. Test unpopulated Contact
        list<Account> a = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Opportunity> opp = DataFactory.createPartnerOpportunityTestRecords('Test','23', 1);
        Contact c =new Contact();
        resp = trac_RegisterOpportunityController.registerOpportunity(a[0], c, opp[0]);
        System.assertEquals(false, resp.Success);
       
        // Due to conflict between Zendesk and DupeBlocker apps, cannot fully test DupeBlocker functionality
        // If issue is resolved, set "seeAllData=true" in annotation above
        
        // 2. Test new account, new contact, new opp
       
        List<Account> a1 = DataFactory.createPartnerAccountTestRecords('testIndustry1',1);
        a1[0].Website = 'www.google.com';
        insert a1;
        
        //id AcctId = trac_RegisterOpportunityController.getNewestAcct(a1[0].id);
        
        List<Contact> c1 =  DataFactory.createPartnerContactTestRecords('testTitle1','Yes', 1);
        c1[0].Email = 'foo1@bar.com';
        c1[0].AccountId = a1[0].id;
        insert c1;
        
        
        List<Opportunity> opp1 = DataFactory.createPartnerOpportunityTestRecords('test1','2', 1);
        opp1[0].Primary_Contact__c = c1[0].id;
        //insert opp1[0];
       
             
        resp = trac_RegisterOpportunityController.registerOpportunity(a1[0], c1[0], opp1[0]);
        //System.assertEquals(false, resp.Success); 
        //System.assertEquals(true, resp.Success, 'Register Opportunity should have returned success: ' + resp.ErrMsgs);
             
        // Verify contact's acct is set
        //System.assertEquals(a1[0].Id, c1[0].AccountId, 'Contact acct should be set to account that was passed in.');
             
        Set<Id> contactIds = new Set<Id>();
        contactIds.add(c1[0].Id);
        //if(contactIds.size() > 0)
        //trac_RegisterOpportunityController.getNewestContact(contactIds);
        Set<Id> acctIds = new Set<Id>();
        acctIds.add(a1[0].Id);
       // if(acctIds.size() > 0)
        //trac_RegisterOpportunityController.getNewestAcct(acctIds);
       
        //Creating test Opportunity 3rd test record
        List<Account> a2 = DataFactory.createPartnerAccountTestRecords('', 1);
        List<Contact> c2 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        List<Opportunity> opp2 = DataFactory.createPartnerOpportunityTestRecords('','2', 1);
        trac_RegisterOpportunityController.registerOpportunity(a2[0], c2[0], opp2[0]);
        //System.assertEquals(false, resp.Success);      
             
        //Creating test Opportunity 4th test record    
        List<Account> a3 = DataFactory.createPartnerAccountTestRecords('--None--', 1);
        insert a3;
        List<Contact> c3 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        c3[0].Accountid = a3[0].id;
        insert c3;
        List<Opportunity> opp3 = DataFactory.createPartnerOpportunityTestRecords('test','2', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a3[0], c3[0], opp3[0]);
        //System.assertEquals(false, resp.Success);
             
        //Creating test Opportunity 5th test record  
        List<Account> a4 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c4 =  DataFactory.createPartnerContactTestRecords('','Yes', 1);
        List<Opportunity> opp4 = DataFactory.createPartnerOpportunityTestRecords('test','2', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a4[0], c4[0], opp4[0]);
        //System.assertEquals(false, resp.Success);     
             
        //Creating test Opportunity 6th test record       
        List<Account> a5 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c5 =  DataFactory.createPartnerContactTestRecords('test','', 1);
        List<Opportunity> opp5 = DataFactory.createPartnerOpportunityTestRecords('test','2', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a5[0], c5[0], opp5[0]);
        //System.assertEquals(false, resp.Success);    
           
         //Creating test Opportunity 7th test record   
        List<Account> a6 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c6 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        List<Opportunity> opp6 = DataFactory.createPartnerOpportunityTestRecords('','2', 1);
        //resp = trac_RegisterOpportunityController.registerOpportunity(a5[0], c6[0], opp5[0]);
                    
        //Creating test Opportunity 8th test record       
        List<Account> a7 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c7 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        List<Opportunity> opp7 = DataFactory.createPartnerOpportunityTestRecords('Test','', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a6[0], c7[0], opp6[0]);
        //System.assertEquals(false, resp.Success);  
             
      //  System.assertEquals(true, resp.Success, 'Register Opportunity should have returned success: ' + resp.ErrMsgs);
        
        
        
//    }
      
    }
    
    
    /**@@
    #DESCRIPTION    :verify test opportunity record  
    #Paramaters     : No Parameters
    @@**/
    
    @isTest(seeAllData=false)
    private static void testRegisterOpportunity1() {
                 
        //Handling Duplicate Contact Scenario
        //Added by Jade Global Inc
        List<CRMfusionDBR101__Scenario__c> dBCList = new List<CRMfusionDBR101__Scenario__c>();
        List<CRMfusionDBR101__Scenario_Rule__c> dBCRuleList = new List<CRMfusionDBR101__Scenario_Rule__c>();
        
        CRMfusionDBR101__Scenario__c objDBCcon = DataFactory.createdBCTestRecords('Identifying duplicate Contacts', 'Contact', 'No');
        dBCList.add(objDBCcon);

        CRMfusionDBR101__Scenario_Rule__c objDBCRuleCon = DataFactory.createDBCRuleforLeadRelatedObject('Email', objDBCcon.id, 'Website', 'Website', 'Contact');
        dBCRuleList.add(objDBCRuleCon);      
            

            
        trac_RegisterOpportunityController.RegisterOpportunityResponse resp;
        //creating opportunity using partner user.
        list<user> lstuser =[Select id from user Where ContactId !=NUll AND isActive=true limit 1];
       //  system.runAs(lstuser[0]){
             
        // 1. Test unpopulated Contact
        list<Account> a = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Opportunity> opp = DataFactory.createPartnerOpportunityTestRecords('Test','23', 1);
        Contact c =new Contact();
        resp = trac_RegisterOpportunityController.registerOpportunity(a[0], c, opp[0]);
        System.assertEquals(false, resp.Success);
       
        // Due to conflict between Zendesk and DupeBlocker apps, cannot fully test DupeBlocker functionality
        // If issue is resolved, set "seeAllData=true" in annotation above
        
        // 2. Test new account, new contact, new opp
       
        List<Account> a1 = DataFactory.createPartnerAccountTestRecords('testIndustry1',1);
        a1[0].Website = 'www.google.com';
        insert a1;
        
        List<Contact> c1 =  DataFactory.createPartnerContactTestRecords('testTitle1','Yes', 1);
        c1[0].Email = 'foo1@bar.com';
        c1[0].AccountId = a1[0].id;
        insert c1;
        
        
        List<Opportunity> opp1 = DataFactory.createPartnerOpportunityTestRecords('test1','2', 1);
        opp1[0].Primary_Contact__c = c1[0].id;
        //insert opp1[0];
        
       
             
        resp = trac_RegisterOpportunityController.registerOpportunity(a1[0], c1[0], opp1[0]);
        //System.assertEquals(false, resp.Success); 
        //System.assertEquals(true, resp.Success, 'Register Opportunity should have returned success: ' + resp.ErrMsgs);
             
        // Verify contact's acct is set
        //System.assertEquals(a1[0].Id, c1[0].AccountId, 'Contact acct should be set to account that was passed in.');
             
        Set<Id> contactIds = new Set<Id>();
        contactIds.add(c1[0].Id);
        //if(contactIds.size() > 0)
        //trac_RegisterOpportunityController.getNewestContact(contactIds);
        Set<Id> acctIds = new Set<Id>();
        acctIds.add(a1[0].Id);
       // if(acctIds.size() > 0)
        //trac_RegisterOpportunityController.getNewestAcct(acctIds);
       
       List<Contact> c11 =  DataFactory.createPartnerContactTestRecords('testTitle1','Yes', 1);
        c11[0].Email = 'foo1@bar.com';
        c11[0].AccountId = a1[0].id;
        insert c11;
       
       
        //Creating test Opportunity 3rd test record
        List<Account> a2 = DataFactory.createPartnerAccountTestRecords('', 1);
        List<Contact> c2 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        List<Opportunity> opp2 = DataFactory.createPartnerOpportunityTestRecords('','2', 1);
        trac_RegisterOpportunityController.registerOpportunity(a2[0], c2[0], opp2[0]);
        //System.assertEquals(false, resp.Success);      
             
        //Creating test Opportunity 4th test record    
        List<Account> a3 = DataFactory.createPartnerAccountTestRecords('--None--', 1);
        insert a3;
        List<Contact> c3 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        c3[0].Accountid = a3[0].id;
        insert c3;
        List<Opportunity> opp3 = DataFactory.createPartnerOpportunityTestRecords('test','2', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a3[0], c3[0], opp3[0]);
        //System.assertEquals(false, resp.Success);
             
        //Creating test Opportunity 5th test record  
        List<Account> a4 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c4 =  DataFactory.createPartnerContactTestRecords('','Yes', 1);
        List<Opportunity> opp4 = DataFactory.createPartnerOpportunityTestRecords('test','2', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a4[0], c4[0], opp4[0]);
        //System.assertEquals(false, resp.Success);     
             
        //Creating test Opportunity 6th test record       
        List<Account> a5 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c5 =  DataFactory.createPartnerContactTestRecords('test','', 1);
        List<Opportunity> opp5 = DataFactory.createPartnerOpportunityTestRecords('test','2', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a5[0], c5[0], opp5[0]);
        //System.assertEquals(false, resp.Success);    
           
         //Creating test Opportunity 7th test record   
        List<Account> a6 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c6 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        List<Opportunity> opp6 = DataFactory.createPartnerOpportunityTestRecords('','2', 1);
        //resp = trac_RegisterOpportunityController.registerOpportunity(a5[0], c6[0], opp5[0]);
                    
        //Creating test Opportunity 8th test record       
        List<Account> a7 = DataFactory.createPartnerAccountTestRecords('testIndustry', 1);
        List<Contact> c7 =  DataFactory.createPartnerContactTestRecords('test','Yes', 1);
        List<Opportunity> opp7 = DataFactory.createPartnerOpportunityTestRecords('Test','', 1);
        resp = trac_RegisterOpportunityController.registerOpportunity(a6[0], c7[0], opp6[0]);
        //System.assertEquals(false, resp.Success);  
             
      //  System.assertEquals(true, resp.Success, 'Register Opportunity should have returned success: ' + resp.ErrMsgs);
        
        
//    }
      
    }
        
    
    
    /**@@
    #DESCRIPTION    :  test method to verify picklist values
    #Paramaters     : No Parameters
    @@**/
    private static void verifyPicklistOptions(List<Schema.PicklistEntry> expectedOptions, List<String> actualOptions) {
        
        // Build set of active expected opts
        Set<String> expectedOpts = new Set<String>();
        for (Schema.PicklistEntry pe : expectedOptions) {
            if (pe.isActive()) {
                expectedOpts.add(pe.getValue());
            }
        }
        
        System.assertEquals(expectedOpts.size(), actualOptions.size(), 'Incorrect number of picklist options');
        
        for (String actualOpt : actualOptions) {
            System.assert(expectedOpts.contains(actualOpt), 'Not a valid picklist option -- ' + actualOpt);  
        }
    }
    
   /**@@
    #DESCRIPTION    : getting test account records by Account Name
    #Paramaters     : No Parameters
    @@**/
    
    private static List<Account> queryAccountByName(String n) {
        List<Account> queryAccts = [SELECT Name, AnnualRevenue, Industry_Focus__c, BillingCountry, BillingState, Website
                                    FROM Account
                                    WHERE Name = :n];
        return queryAccts;                                    
    }//End of queryAccountByName Method
    
    /**@@
    #DESCRIPTION    : This Method used to added assert check for account fields working fine
    #Paramaters     : No Parameters
    @@**/
    
    private static void verifyAccount(Account expectedAcct, Account actualAcct) {
        System.assertEquals(expectedAcct.Name, actualAcct.Name, 'Name does not match.');
        System.assertEquals(expectedAcct.AnnualRevenue, actualAcct.AnnualRevenue, 'AnnualRevenue does not match.');
        System.assertEquals(expectedAcct.Adaptive_Industry__c, actualAcct.Adaptive_Industry__c, 'Industry does not match.');
        System.assertEquals(expectedAcct.BillingCountry, actualAcct.BillingCountry, 'BillingCountry does not match.');        
        System.assertEquals(expectedAcct.BillingState, actualAcct.BillingState, 'BillingState does not match.');  
        System.assertEquals(expectedAcct.Website, actualAcct.Website, 'Website does not match.'); 
    }//End of verifyAccounttest method
    
    /**@@
    #DESCRIPTION    : this Method used to added assert check for contact fields working fine
    #Paramaters     : No Parameters
    @@**/
    
    private static void verifyContact(Contact expectedContact, Contact actualContact) {
        System.assertEquals(expectedContact.FirstName, actualContact.FirstName, 'FirstName does not match.');
        System.assertEquals(expectedContact.LastName, actualContact.LastName, 'LastName does not match.');
        System.assertEquals(expectedContact.Title, actualContact.Title, 'Title does not match.');
        System.assertEquals(expectedContact.Phone, actualContact.Phone, 'Phone does not match.');
        System.assertEquals(expectedContact.Email, actualContact.Email, 'Email does not match.');
        System.assertEquals(expectedContact.Reason_for_change_Pain_Points__c, actualContact.Reason_for_change_Pain_Points__c, 'Reason_for_change_Pain_Points__c does not match.');
        System.assertEquals(expectedContact.ERP__c, actualContact.ERP__c, 'ERP__c does not match.');
        System.assertEquals(expectedContact.CRM__c, actualContact.CRM__c, 'CRM__c does not match.');
        System.assertEquals(expectedContact.HR__c, actualContact.HR__c, 'HR__c does not match.');
        System.assertEquals(expectedContact.Fiscal_Year_End__c, actualContact.Fiscal_Year_End__c, 'Fiscal_Year_End__c does not match.');
        System.assertEquals(expectedContact.Budgeted_Project__c, actualContact.Budgeted_Project__c, 'Budgeted_Project__c does not match.');
        System.assertEquals(expectedContact.Time_Frame__c, actualContact.Time_Frame__c, 'Time_Frame__c does not match.');
        /*System.assertEquals(expectedContact.Solution_Requirements__c, actualContact.Solution_Requirements__c, 'Solution_Requirements__c does not match.');
        System.assertEquals(expectedContact.Dashboard__c, actualContact.Dashboard__c, 'Dashboard__c does not match.');
        System.assertEquals(expectedContact.Expense_Planning__c, actualContact.Expense_Planning__c, 'Expense_Planning__c does not match.');
        System.assertEquals(expectedContact.Revenue_Planning__c, actualContact.Revenue_Planning__c, 'Revenue_Planning__c does not match.');
        System.assertEquals(expectedContact.Personnel_Planning__c, actualContact.Personnel_Planning__c, 'Personnel_Planning__c does not match.');
        System.assertEquals(expectedContact.Forecasting__c, actualContact.Forecasting__c, 'Forecasting__c does not match.');
        System.assertEquals(expectedContact.Consolidation__c, actualContact.Consolidation__c, 'Consolidation__c does not match.');
        System.assertEquals(expectedContact.Cash_Flow_Balance_Sheet__c, actualContact.Cash_Flow_Balance_Sheet__c, 'Cash_Flow_Balance_Sheet__c does not match.'); */
    }//End of verifyContact method
    
    
}//End of Test class