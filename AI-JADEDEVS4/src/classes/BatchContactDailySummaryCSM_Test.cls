/**@@
#CLASS NAME     :   BatchContactDailySummaryCSM_Test
#DESCRIPTION    :   This is a test class for BatchContactDailySummaryCSM batch class.
@@**/

@isTest
public class BatchContactDailySummaryCSM_Test {
    /**@@
#DESCRIPTION     : Creating test records
#Paramaters      : None
@@**/
    
    @testSetup static void setup() {
        //insert custom setting
        DataFactory.insertCustomSetting();
        
        //insert user record
        list<user> userList= DataFactory.createUserTestRecords('test', 1);
        system.assertEquals(userList.size(), 1);
        
        
        //Insert account record
        List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        accList[0].Account_CSM__c = userList[0].id;
        update accList;
        system.assertEquals(accList.size(), 1);
        
        //Insert contact record
        List<Contact> conList=DataFactory.createContactTestRecords('Test Contact',accList[0].Id,2);
        Datetime dt = system.now()-1;
        Test.setCreatedDate(conList[0].id, dt);
        Test.setCreatedDate(conList[1].id, dt);
        system.debug(conList[0].CreatedDate);
        system.assertEquals(conList.size(), 2);
    }
    
    
    /**@@
#DESCRIPTION     : This is a test method used to create test data for BatchMarketingActivity batch class.
#Paramaters      : None
@@**/
    
    static testMethod void ContactDailySummaryCSM_Test() 
    {
        DataFactory.insertCustomSetting();
        //insert user record
        List<user> userList= [SELECT Id FROM user LIMIT 1];
        
        //Insert account record
        List<Account> accList = [SELECT Id FROM Account LIMIT 1];
        
        //insert contact record
        List<Contact> conList= [SELECT Id FROM Contact];
        
        
        Test.StartTest();
        Database.executeBatch(new BatchContactDailySummaryCSM());
        Test.stopTest();
    }//End of MarketingDailySummary_test
}//End of class