/**@@
#CLASS NAME     :   BatchMarketingActivity_Test
#DESCRIPTION    :   This is a test class for BatchMarketingActivity batch class.
@@**/
@isTest
    public class BatchMarketingActivity_Test {     
    /**@@
        #DESCRIPTION     : Creating test records
        #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        User u=[SELECT id from User WHERE Id = :CustomConstants.EloquaUserId];
        system.debug(u);
        system.runAs(u){
            //insert user record
            list<user> userList= DataFactory.createUserTestRecords('userLastName', 1);
            system.assertEquals(userList.size(), 1);
            
            //insert Lead record
            List<Lead> leadList=DataFactory.createLeadTestRecords('leadLastName', 1);
            system.assertEquals(leadList.size(), 1);
                
            //Insert account record
            List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
            system.assertEquals(accList.size(), 1);
            
            //Insert contact record
            List<Contact> conList=DataFactory.createContactTestRecords('Test Contact',accList[0].Id,1);
            system.assertEquals(conList.size(), 1);
            
            //insert task record
            list<Task> tsk= DataFactory.createTaskTestRecords(conList[0].id,userList[0].id, 1);
            
            Datetime yesterday = system.now()-0.5;
            Test.setCreatedDate(tsk[0].Id, yesterday);
            
            system.assertEquals(tsk.size(), 1);
            
             //insert task record
            list<Task> tsk1= DataFactory.createTaskTestRecords(leadList[0].id,userList[0].id, 1);
            
            Datetime yesterday1 = system.now()-0.5;
            Test.setCreatedDate(tsk1[0].Id, yesterday1);
           
            system.assertEquals(tsk1.size(), 1);
        }
    }
            
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for BatchMarketingActivity batch class.
    #Paramaters      : None
    @@**/
    static testMethod void MarketingDailySummary_test(){
        //insert contact record
        List<Contact> conList= [SELECT Id FROM Contact LIMIT 1];
        
        //insert lead record
        List<Lead> leadList= [SELECT Id FROM Lead LIMIT 1];
        
        //insert task record
        List<Task> tskList= [SELECT Id FROM Task];
        //insert user record
        List<user> userList= [SELECT Id FROM user LIMIT 1];
        
        
        //Insert account record
        List<Account> accList = [SELECT Id FROM Account LIMIT 1];
        
        
        Test.StartTest();
        //Datetime dt = System.now()-1;
        //List<Task> t=[select id ,whoid ,who.Name ,subject,Type from task where createdDate >=:dt AND Status='Completed' AND (NOT Subject LIKE '%Unsubscribe%') AND CreatedBy.Name='Eloqua'];
        //system.assertEquals(t.size(), 10);
        Database.executeBatch(new BatchMarketingActivity());
        Test.stopTest();        
    }//End of MarketingDailySummary_test
    
    /**@@
    #DESCRIPTION     : This is  method used to test and schedule batch class
    #Paramaters      : SchedulableContext ctx
    @@**/    
    static testMethod void DailySummaryScheduler_test(){
        BatchMarketingActivityScheduler objschclass = new BatchMarketingActivityScheduler();
        String cronexpression ='0 0 8 * * ? *';
        system.schedule('BatchMarketingActivity', cronexpression, objschclass);
    }//end of method
 }//End of class