/**@@
#CLASS NAME     :   BatchDailySummaryScheduler_Test 
#DESCRIPTION    :   This is a test class for batchDailySummaryScheduler  class.
@@**/

@isTest
public class BatchDailySummaryScheduler_Test {
     /**@@
    #DESCRIPTION     : This is  method used to test and schedule batch class
    #Paramaters      : SchedulableContext ctx
    @@**/   
    
     static testMethod void DailySummaryScheduler_test()
    {
        BatchDailySummaryScheduler objschclass = new BatchDailySummaryScheduler();
        String cronexpression ='0 0 9 * * ? *';
        system.schedule('BatchContactDailySummary', cronexpression, objschclass);
    }//end of method
}//end of class