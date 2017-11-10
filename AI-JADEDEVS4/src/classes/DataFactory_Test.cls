/**@@
#APEX CLASS NAME       :   DataFactory_Test 
#DESCRIPTION           :   This is test class for DataFactory utility class.
@@**/
@isTest
public class DataFactory_Test{
    /**@@
#DESCRIPTION     : This test method used to create test data for DataFactory Apex Class.
#Paramaters      : None
@@**/ 
    public static TestMethod void DataFactoryTest(){
        
        List<User> usrList = [Select id, userroleid, profile.name from User where Profile.name='System Administrator' AND userroleid!=null AND isActive=true limit 1];
        
        system.runas(usrList[0]){
            DataFactory.insertCustomSetting();
            
            //Insert account
            List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
            
            // Check for Account record inserted successfully or not
            accList = [SELECT id from Account LIMIT 1];
            system.assertEquals(accList.size(), 1);
            
            DataFactory.createAccountForException();
            DataFactory.createLeadTestRecords('Lead test',1);
            DataFactory.createLeadForDataDotCom('test',1);
            List<Contact> conList=DataFactory.createContactTestRecords('TestContact',accList[0].Id,1);
            // Check for Account record inserted successfully or not
            conList = [SELECT id from Contact LIMIT 1];
            system.assertEquals(conList.size(), 1);
            
            DataFactory.insertPortalUser(conList[0].id);
            
            DataFactory.createContactLifecycleTestRecords('Last Name',accList[0].id,CustomConstants.LifecycleMAL,1);
            //Insert user
            List<user> userList=DataFactory.createUserTestRecords('TestUser', 1);
            
            Test.startTest();
            //Insert Opportunity
            List<opportunity> oppList=DataFactory.createOpportunityTestRecords('TestOpportunity', 1);
            
            //Insert Order
            List<Order> orderList=DataFactory.createOrderTestRecords('TestOrder', oppList[0].Id, accList[0].Id, 1);
            orderList[0].EffectiveDate=Date.today();
            orderList[0].Status='Draft';
            
            //Insert Quote
            List<SBQQ__Quote__c> quoteList=DataFactory.createQuoteTestRecords(oppList[0].id, 1);
            quoteList[0].SBQQ__StartDate__c = system.today();
            quoteList[0].Quote_Term_Length__c = 4;
            Test.stopTest();
            
            DataFactory.createIndustryClassificationRecords('Test' ,1);
            
            List<Campaign> cmpList =    DataFactory.createCampaignWithStatus('Test','New',1);
            DataFactory.createCampaignMemberStatusTestRecord(cmpList[0].id,1);
            ID pricebookId = Test.getStandardPricebookId();
            DataFactory.createSBQQQuote(accList[0].Id, oppList[0].Id, pricebookId, 1);
            DataFactory.createBookingDetail(oppList[0], orderList[0], 1);
            
        }//End of runas
        
    }//End of method
    
    /**@@
#DESCRIPTION     : This test method used to cover this method - createOpportunityTestRecordsNew.
#Paramaters      : None
@@**/ 
    public static TestMethod void createOpportunityTestRecordsNewTest(){
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        // Check for Account record inserted successfully or not
        accList = [SELECT id from Account LIMIT 1];
        system.assertEquals(accList.size(), 1);
        
        List<Contact> conList=DataFactory.createContactTestRecords('TestContact',accList[0].Id,1);
        // Check for Account record inserted successfully or not
        conList = [SELECT id from Contact LIMIT 1];
        system.assertEquals(conList.size(), 1);
        
        DataFactory.createOpportunityTestRecordsNew('Test Opp', 'New', 'USD', accList[0].id, conList[0].id, 1);
        DataFactory.createOpportunityTestRecordsNew('Test Opp', 'New', 'USD', '', '', 1);
    }// End of createOpportunityTestRecordsNewTest
    
    /**@@
#DESCRIPTION     : This test method used to cover this method - insertRunAsUser.
#Paramaters      : None
@@**/ 
    public static TestMethod void insertRunAsUserTest(){
        List<User> lstRunasUser = DataFactory.insertRunAsUser();
        
        // Check for User record inserted successfully or not
        List<User> usrList = [SELECT id from User where id =: lstRunasUser[0].id LIMIT 1];
        system.assertEquals(usrList.size(), 1);
    }// End of createOpportunityTestRecordsNewTest
    
    
    /**@@
#DESCRIPTION     : This test method used to cover this method - createdBCTestRecords.
#Paramaters      : None
@@**/ 
    public static TestMethod void createdBCTestRecordsTest(){
        DataFactory.createdBCTestRecords('Identifying duplicate Lead Based on Email (Quick Conversion)', 'Lead', 'No');
    }// End of createdBCTestRecords
    
    
    /**@@
#DESCRIPTION     : This test method used to cover this method - createDBCRule.
#Paramaters      : None
@@**/ 
    public static TestMethod void createDBCRuleTest(){
        CRMfusionDBR101__Scenario__c objDBC5 = DataFactory.createdBCTestRecords('Identifying duplicate Lead Based on Email (Quick Conversion)', 'Lead', 'No');
        DataFactory.createDBCRule('Email', objDBC5.id, 'Lead');
        
        // Check for CRMfusionDBR101__Scenario__c record inserted successfully or not
        List<CRMfusionDBR101__Scenario__c> dbScenario = [SELECT id from CRMfusionDBR101__Scenario__c LIMIT 1];
        system.assertEquals(dbScenario.size(), 1);
    }// End of createdBCTestRecords
    
    
    /**@@
#DESCRIPTION     : This test method used to cover this method - createDBCRuleforLeadRelatedObject.
#Paramaters      : None
@@**/ 
    public static TestMethod void createDBCRuleforLeadRelatedObjectTest(){
        CRMfusionDBR101__Scenario__c objDBC = DataFactory.createdBCTestRecords('Identifying Accounts With Open Opptys (Quick Conversion)', 'Lead to Account', 'No');
        DataFactory.createDBCRuleforLeadRelatedObject('Company', objDBC.id, 'Name', 'Account Name', 'Lead to Account');
        
        // Check for CRMfusionDBR101__Scenario__c record inserted successfully or not
        List<CRMfusionDBR101__Scenario__c> dbScenario = [SELECT id from CRMfusionDBR101__Scenario__c LIMIT 1];
        system.assertEquals(dbScenario.size(), 1);
    }// End of createDBCRuleforLeadRelatedObjectTest
    
    /**@@
#DESCRIPTION     : This test method used to cover this method - CreateDScenariosCustomSetting.
#Paramaters      : None
@@**/ 
    public static TestMethod void CreateDScenariosCustomSettingTest(){
        CRMfusionDBR101__Scenario__c objDBC = DataFactory.createdBCTestRecords('Identifying Accounts With Open Opptys (Quick Conversion)', 'Lead to Account', 'No');
        
        List<CRMfusionDBR101__Scenario__c> lstScenarios = [SELECT id, CRMfusionDBR101__Scenario_Type__c FROM CRMfusionDBR101__Scenario__c];
        DataFactory.CreateDScenariosCustomSetting(lstScenarios);
        
        // Check for CRMfusionDBR101__Scenario__c record inserted successfully or not
        List<CRMfusionDBR101__Scenario__c> dbScenario = [SELECT id from CRMfusionDBR101__Scenario__c LIMIT 1];
        system.assertEquals(dbScenario.size(), 1);
    }// End of CreateDScenariosCustomSetting
    
    
    /**@@
#DESCRIPTION     : This test method used to cover this method - createTaskTestRecords.
#Paramaters      : None
@@**/ 
    public static TestMethod void createTaskTestRecordsTest(){
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        // Check for Account record inserted successfully or not
        accList = [SELECT id from Account LIMIT 1];
        system.assertEquals(accList.size(), 1);
        List<Contact> conList=DataFactory.createContactTestRecords('TestContact',accList[0].Id,1);
        
        // Check for Account record inserted successfully or not
        conList = [SELECT id from Contact LIMIT 1];
        system.assertEquals(conList.size(), 1);
        
        DataFactory.createTaskTestRecords(conList[0].id, system.userinfo.getuserid(), 1);
        DataFactory.createTaskTestRecordswithEloqua(conList[0].id, system.userinfo.getuserid(), 1);
        DataFactory.createBusinessDays();
        DataFactory.createQuoteTemplateRecord('test',1);
        DataFactory.createProductRecords('tetsss','123ws',1);
        //DataFactory.createRenewalOpportunityTestRecords('test',1);
        
    }// End of createTaskTestRecords
    
    /**@@
    #DESCRIPTION     : This test method used to cover methods - createFeedItem and createFeedComment.
    #Paramaters      : None
    @@**/ 
    public static TestMethod void createFeedItemandFeedCommentTest(){
        
        List<Lead> leadList = DataFactory.createLeadTestRecords('Test Lead', 1);
        
        List<FeedItem> fiList = DataFactory.createFeedItem(leadList[0].id, 3);
        
        List<FeedComment> fcList = DataFactory.createFeedComment(fiList[0].id, 2);        
    }
    
    public static TestMethod void createpartnerLead(){
        DataFactory.createPartnerLeadTestRecords('leadLastName', 'testCompany', 'testIndustry', 'MDFNum','Test', 1);
        DataFactory.createContractTestRecords(1);
        DataFactory.createPartnerContactTestRecords('test','test',1);
        DataFactory.createPartnerAccountTestRecords('test',1);
        DataFactory.createPartnerOpportunityTestRecords('test','test',1);        
    } 
     
    /**@@
    #DESCRIPTION     : This test method used to cover methods - createOpportunityTestRecords1.
    #Paramaters      : None
    @@**/
    public static TestMethod void createOpportunityTestRecords1_Test(){
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords1('Test Opportunity', 1);   
    }
    
    /**@@
    #DESCRIPTION     : This test method used to cover methods - createOpportunityWithRenewedContract.
    #Paramaters      : None
    @@**/
    public static TestMethod void createOpportunityWithRenewedContract_Test(){
        List<Opportunity> oppList = DataFactory.createOpportunityWithRenewedContract('Test Opportunity', 1);
    }

    /**@@
    #DESCRIPTION     : This test method used to cover methods - createRenewalOpportunityTestRecords.
    #Paramaters      : None
    @@**/
    public static TestMethod void createRenewalOpportunityTestRecords_Test(){ 
        //List<Opportunity> oppList = DataFactory.createRenewalOpportunityTestRecords('Test Opportunity', 1); 
    }
    
    
    /**@@
    #DESCRIPTION     : This test method used to cover methods - createQuoteDocumentRecord.
    #Paramaters      : None
    @@**/
    public static TestMethod void createQuoteDocumentRecord_Test(){        
       List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('TestQuoteDocOpp', 1);
       List<SBQQ__Quote__c> quoteList = DataFactory.createQuoteTestRecords(oppList[0].id, 1);
       List<SBQQ__QuoteTemplate__c> quoteTemplateList = DataFactory.createQuoteTemplateRecord('TestOrderTemplate', 1);
       List<SBQQ__QuoteDocument__c> quoteDocList =  DataFactory.createQuoteDocumentRecord('TestQuoteDoc', quoteTemplateList[0].id, quoteList[0].id, oppList[0].id, 1); 
    }
    
    /**@@
    #DESCRIPTION     : This test method used to cover methods - createUserTestRecordsWithRole.
    #Paramaters      : None
    @@**/
    public static TestMethod void createUserTestRecordsWithRole_Test(){
        List<User> userList =  DataFactory.createUserTestRecordsWithRole('test lastname', 1);
    }
    
    /**@@
    #DESCRIPTION     : This test method used to cover methods - createUserTestRecordsWithRole.
    #Paramaters      : None
    @@**/
    public static TestMethod void createOpportunityTestRecordsWithoutUserInsert_Test(){
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        List<Contact> conList=DataFactory.createContactTestRecords('TestContact',accList[0].Id,1);
        List<Opportunity> oppList =  DataFactory.createOpportunityTestRecordsWithoutUserInsert('test lastname', 1, accList, conList); 
    }
}//End of class