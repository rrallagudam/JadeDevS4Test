/**@@
#CLASS NAME     :   BatchExecLeadExpirationNotification_Test
#DESCRIPTION    :   This is a test class for BatchExecLeadExpirationNotification batch class & ScheduleLeadExpirationNotification Schedular class.
@@**/

@isTest
    public class BatchExecLeadExpirationNotification_Test {        
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
           
        // Create Test Lead record
        list<Lead> lstLead=DataFactory.createLeadTestRecords('Test',1);
        
        
        list<Lead>  lstLead1= DataFactory.createLeadTestRecords('test',1);
        lstLead1[0].Partner_Contact__c = ocon[0].id;
        lstLead1[0].Partner_Last_Activity_Date__c = System.today()-53;
        update lstLead1;
        
    }    
        
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for BatchDailySummary batch class.
    #Paramaters      : None
    @@**/
    static testMethod void LeadExpirationNotification_test(){

        Test.StartTest();
        
		Database.executeBatch(new BatchExecLeadExpirationNotification());
		
        Test.stopTest();
    }//End of DailySummary_test
    
    /**@@
    #DESCRIPTION     : This is  method used to test and schedule batch class
    #Paramaters      : SchedulableContext ctx
    @@**/    
    static testMethod void ScheduleLeadExpirationNotification_test(){
        ScheduleLeadExpirationNotification objschclass = new ScheduleLeadExpirationNotification();
        String cronexpression ='0 0 9 * * ? *';
        system.schedule('BatchExecOppExpirationNotification', cronexpression, objschclass);
    }//end of method
 }//End of classs