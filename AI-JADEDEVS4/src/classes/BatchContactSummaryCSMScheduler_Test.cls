/**@@
#CLASS NAME     :   BatchContactSummaryCSMScheduler_Test 
#DESCRIPTION    :   This is a test class for batchDailySummaryScheduler  class.
@@**/

@isTest
public class BatchContactSummaryCSMScheduler_Test {
     /**@@
    #DESCRIPTION     : This is  method used to test and schedule batch class
    #Paramaters      : SchedulableContext ctx
    @@**/   
    
     static testMethod void DailySummaryScheduler_test()
    {
        BatchContactDailySummaryCSMScheduler objschclass = new BatchContactDailySummaryCSMScheduler();
        String cronexpression ='0 0 9 * * ? *';
        system.schedule('BatchContactDailySummaryCMS', cronexpression, objschclass);
    }//end of method
}//end of class