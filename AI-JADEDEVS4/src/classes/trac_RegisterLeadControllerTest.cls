/**@@
#CLASS NAME    :  trac_RegisterLeadControllerTest
#DESCRIPTION   : This is test class which covers 'trac_RegisterLeadController' Class  
@@**/

@isTest
public class trac_RegisterLeadControllerTest{
    
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
    #DESCRIPTION    : Verify that picklist options are returned correctly for Industry, Follow_Up__c, MDF_Sourced_Lead__c fields
    #Paramaters     : No Parameters
    @@**/

    @isTest
    static void testInitFields() 
    {
       
         // Call initFields
        trac_RegisterLeadController.InitFieldsResponse resp = trac_RegisterLeadController.initFields();

        // 1. Verify Industry Focus options
        verifyPicklistOptions(Lead.Adaptive_Industry__c.getDescribe().getPicklistValues(), resp.IndustryFocusOptions);

        // 2. Verify Follow Up
        verifyPicklistOptions(Lead.Partner_Referal_Follow_Up__c.getDescribe().getPicklistValues(), resp.FollowUpOptions);

        // 3. Verify MDF Sourced Lead
        verifyPicklistOptions(Lead.MDF_Sourced_Lead__c.getDescribe().getPicklistValues(), resp.MDFOptions);

    }//End of testInitFields()
    
   
    /**@@
    #DESCRIPTION    :  Create a test record of Account and Contact
    #Paramaters     : No Parameters
    @@**/
    @isTest(seeAllData=false)
    public static void testRegisterLead()
     {      
         trac_RegisterLeadController.RegisterLeadResponse resp;
         list<user> lstuser =[Select id from user Where ContactId !=NUll AND isActive=true limit 1];
         system.runAs(lstuser[0]){
            //Create a lead record 
           List<Lead> leadRec2 = DataFactory.createLeadTestRecords('leadLastName',1);
           List<Lead> leadRec1 = DataFactory.createPartnerLeadTestRecords('leadLastName', 'testCompany', 'testIndustry', '4','testemail@test.com' ,1);
           resp = trac_RegisterLeadController.registerLead(leadRec1[0]);
           
           List<Lead> leadRec3 = DataFactory.createPartnerLeadTestRecords('leadLastName', 'testCompany', 'testIndustry', '3','testemail@test.com' , 1);
           List<DupeBlocker_Scenarios__c> lstDS = [SELECT id FROM DupeBlocker_Scenarios__c];
           delete lstDS;
           trac_RegisterLeadController.RegisterLeadResponse resp1 = trac_RegisterLeadController.registerLead(leadRec3[0]);
       
           }
             List<Lead> leadRec3 = DataFactory.createPartnerLeadTestRecords('leadLastName', 'testCompany', 'testIndustry', '3','testemail@test.com' , 1);
             
             List<DupeBlocker_Scenarios__c> lstDS = [SELECT id FROM DupeBlocker_Scenarios__c];
             delete lstDS;
             
             trac_RegisterLeadController.RegisterLeadResponse resp1 = trac_RegisterLeadController.registerLead(leadRec3[0]);
       
            //Create a lead record 
           List<Lead> l1 =DataFactory.createPartnerLeadTestRecords('leadLastName', 'testCompany', '--None--', '','testemail@test.com' , 1);
         
            //Create a lead record 
           List<Lead> l2=DataFactory.createPartnerLeadTestRecords('', 'testCompany', 'testIndustry', '4','testemail@test.com' , 1);
         
            //Create a lead record 
           List<Lead>l3=DataFactory.createPartnerLeadTestRecords('leadLastName', 'testCompany', 'testIndustry', '','testemail@test.com' , 1);
         
           //Create a lead record 
           List<Lead> l4=DataFactory.createPartnerLeadTestRecords('leadLastName', '', 'testIndustry', '4','testemail@test.com' , 1);
        
        resp = trac_RegisterLeadController.registerLead(l1[0]);
        system.assertEquals(false,resp.success);
         
        resp = trac_RegisterLeadController.registerLead(l2[0]);
        system.assertEquals(false,resp.success);
         
        resp = trac_RegisterLeadController.registerLead(l3[0]);
        system.assertEquals(false,resp.success);
         
        resp = trac_RegisterLeadController.registerLead(l4[0]);
        system.assertEquals(false,resp.success);
       
    }//End of testRegisterLead()
    

    /**@@
    #DESCRIPTION    : This method is used to verify the expected option and actual option of picklist values
    #Paramaters     : 1)expectedOptions (List<Schema.PicklistEntry>):This provide the ExpectedPicklist Options. 2)actualOptions (List<String>)
    @@**/
    private static void verifyPicklistOptions(List<Schema.PicklistEntry> expectedOptions, List<String> actualOptions) 
    {
        // Build set of active expected opts
        Set<String> expectedOpts = new Set<String>();
        for (Schema.PicklistEntry pe : expectedOptions)
        {
            if (pe.isActive())
            {
                expectedOpts.add(pe.getValue());
            }//End of If
        }//End of for
        
        System.assertEquals(expectedOpts.size(), actualOptions.size(), 'Incorrect number of picklist options');

        for (String actualOpt : actualOptions) 
        {
            System.assert(expectedOpts.contains(actualOpt), 'Not a valid picklist option -- ' + actualOpt);  
        }//End of for
    }//End of verifyPicklistOptions()
}//End of trac_RegisterLeadControllerTest()