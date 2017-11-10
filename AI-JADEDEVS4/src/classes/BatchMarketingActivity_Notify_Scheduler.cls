/**@@
#CLASS NAME     :   BatchMarketingActivity_Notify_Scheduler
#DESCRIPTION    :   This is a Scheduler class for BatchMarketingActivity_Notification batch class.
@@**/

public class BatchMarketingActivity_Notify_Scheduler implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchMarketingActivity_Notification batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchMarketingActivity_Notification objschclass = new BatchMarketingActivity_Notification();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class