/**@@
#CLASS NAME     :   BatchMarketingActivityScheduler
#DESCRIPTION    :   This is a Scheduler class for BatchMarketingActivity batch class.
@@**/

public class BatchMarketingActivityScheduler implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchMarketingActivitybatch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchMarketingActivity objschclass = new BatchMarketingActivity();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class

/*  Execute the below code in Anonymous window to Schedule the batch on every day  8 AM
 --------------------------------------------------------------------------------
        BatchMarketingActivityScheduler objschclass = new BatchMarketingActivityScheduler();
        String cronexpression ='0 0 8 * * ? *';
        system.schedule('BatchMarketingDailySummary', cronexpression, objschclass);
  */