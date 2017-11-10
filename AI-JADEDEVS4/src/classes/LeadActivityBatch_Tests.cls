/**@@
#Test CLASS NAME   :    LeadActivityBatch_Tests
#DESCRIPTION       :    This is a test class of LeadActivityBatch apex batch class.
@@**/

@IsTest
public class LeadActivityBatch_Tests 
{
    /**@@
    #DESCRIPTION     : It is a testMethod used to create test data for above mentioned batch class.
    #Paramaters      : None
    @@**/
    @IsTest public static void basicTests(){
        TestData.initTriggerSettings();
        Lead l = new Lead();
        l.FirstName = 'Test';
        l.LastName = 'Lead';
        l.Company = 'Test Company';
        l.Email = 'lead@unit.test.com';
        l.Old_ID__c='old_id';
        l.X1st_Meeting_Scheduled_Date__c = Date.today();
        l.x1st_meeting_completed_date__c = Date.today();
        l.trial_created_date__c = Date.today();
        l.reason_for_recycled__c = 'Reason';
        insert l;
        
        Test.startTest();
        LeadActivityBatch batch = new LeadActivityBatch();
        Database.executeBatch(batch);
        Test.stopTest();
        
        Integer i = [SELECT COUNT() FROM Event];
        System.assert(i > 0);
    }//End of test method
    
}//End of test class