/**@@
#CLASS NAME     :   BatchContactDailySummaryCSMScheduler
#DESCRIPTION    :   This is a Scheduler class for BatchDailySummary batch class.
@@**/

public class BatchContactDailySummaryCSMScheduler implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchContactDailySummaryCSM batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchContactDailySummaryCSM objschclass = new BatchContactDailySummaryCSM();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class

/*  Execute the below code in Anonymous window to Schedule the batch on every day  9 AM
 --------------------------------------------------------------------------------
        BatchContactDailySummaryCSMScheduler objschclass = new BatchContactDailySummaryCSMScheduler();
        String cronexpression ='0 0 9 * * ? *';
        system.schedule('BatchContactDailySummaryCMS', cronexpression, objschclass);
  */