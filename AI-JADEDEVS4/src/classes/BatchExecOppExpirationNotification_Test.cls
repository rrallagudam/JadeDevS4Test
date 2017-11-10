/**@@
#CLASS NAME     :   BatchExecOppExpirationNotification_Test
#DESCRIPTION    :   This is a test class for BatchExecOppExpirationNotification batch class & ScheduleOppExpirationNotification Schedular class.
@@**/

@isTest
    public class BatchExecOppExpirationNotification_Test {        
    /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        //Insert custom settings
        DataFactory.insertCustomSetting();
        
        // Create Test Account record
        List<Account> oacc = DataFactory.createAccountTestRecords('Test Account', 1);
        
        // Create Test Contact record
        List<Contact> ocon = DataFactory.createContactTestRecords('Test contact',oacc[0].ID ,1);
           
        // Create Test Opportunity record
        list<Opportunity> lstOpp=DataFactory.createOpportunityTestRecords('Test',1);
        
        list<Opportunity>  lstOpp1= DataFactory.createOpportunityTestRecords('test',1);
        lstOpp1[0].Partner_Contact__c = ocon[0].id;
        lstOpp1[0].Last_Activity_Date__c = System.today()-23;
        update lstOpp1;
        
    }    
        
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for BatchDailySummary batch class.
    #Paramaters      : None
    @@**/
    static testMethod void OppExpirationNotification_test(){

        Test.StartTest();
        Database.executeBatch(new BatchExecOppExpirationNotification());
        Test.stopTest();
    }//End of DailySummary_test
    
    /**@@
    #DESCRIPTION     : This is  method used to test and schedule batch class
    #Paramaters      : SchedulableContext ctx
    @@**/    
    static testMethod void ScheduleOppExpirationNotification_test(){
        ScheduleOppExpirationNotification objschclass = new ScheduleOppExpirationNotification();
        String cronexpression ='0 0 9 * * ? *';
        system.schedule('BatchExecOppExpirationNotification', cronexpression, objschclass);
    }//end of method
 }//End of classs