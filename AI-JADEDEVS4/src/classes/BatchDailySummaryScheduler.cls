/**@@
#CLASS NAME     :   BatchDailySummaryScheduler
#DESCRIPTION    :   This is a Scheduler class for BatchDailySummary batch class.
@@**/

public class BatchDailySummaryScheduler implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchDailySummary batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchContactDailySummary objschclass = new BatchContactDailySummary();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class

/*  Execute the below code in Anonymous window to Schedule the batch on every day  9 AM
 --------------------------------------------------------------------------------
        BatchDailySummaryScheduler objschclass = new BatchDailySummaryScheduler();
        String cronexpression ='0 0 9 * * ? *';
        system.schedule('BatchContactDailySummary', cronexpression, objschclass);
  */