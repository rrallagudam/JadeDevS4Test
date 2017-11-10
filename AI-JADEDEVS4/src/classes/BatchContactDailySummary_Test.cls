/**@@
#CLASS NAME     :   BatchContactDailySummary_Test
#DESCRIPTION    :   This is a test class for BatchDailySummary batch class.
@@**/

@isTest
    public class BatchContactDailySummary_Test {
        
        /**@@
        #DESCRIPTION     : Creating test records
        #Paramaters      : None
    @@**/
    @testSetup static void setup() {
       
        list<user> userList= DataFactory.createUserTestRecords('userLastName', 1);
        userList[0].isActive=true;
        update userList;
        system.assertEquals(userList.size(), 1);
        
        //Insert acount
        List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        accList[0].Account_CSM__c = userList[0].id;
        update accList;
        system.assertEquals(accList[0].Account_CSM__c, userList[0].id);
        
        //Insert contact
        List<Contact> conList=DataFactory.createContactTestRecords('Test Contact',accList[0].Id,1);
        Datetime yesterday = system.now()-1;
        Test.setCreatedDate(conList[0].Id, yesterday);
        system.assertEquals(conList.size(), 1);
    }
    
        
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for BatchDailySummary batch class.
    #Paramaters      : None
    @@**/
  static testMethod void DailySummary_test() 
    {
            //insert user record
            List<user> userList= [SELECT Id FROM user LIMIT 1];
            
            //Insert account
            List<Account> accList = [SELECT Id FROM Account LIMIT 1];
            
            //insert contact
            List<Contact> conList= [SELECT Id FROM Contact LIMIT 1];
            
            Test.StartTest();
            Database.executeBatch(new BatchContactDailySummary());
            Test.stopTest();
    }//End of DailySummary_test
 }//End of class