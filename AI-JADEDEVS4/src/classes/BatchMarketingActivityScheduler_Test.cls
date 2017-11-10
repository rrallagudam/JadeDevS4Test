/**@@
#CLASS NAME     :   BatchMarketingActivityScheduler_Test 
#DESCRIPTION    :   This is a test class for BatchMarketingActivityScheduler  class.
@@**/

@isTest
public class BatchMarketingActivityScheduler_Test {
     /**@@
    #DESCRIPTION     : This is  method used to test and schedule batch class
    #Paramaters      : SchedulableContext ctx
    @@**/   
    
     static testMethod void DailySummaryScheduler_test()
    {
 		BatchMarketingActivityScheduler objschclass = new BatchMarketingActivityScheduler();
        String cronexpression ='0 0 8 * * ? *';
        system.schedule('BatchMarketingDailySummary', cronexpression, objschclass);
    }//end of method
}//end of class