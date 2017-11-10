/**@@
#CLASS NAME     :   BatchSLA_NotificationScheduler
#DESCRIPTION    :   This is a Scheduler class for BatchSLA_Notification batch class.
@@**/

public class BatchSLA_NotificationScheduler implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchSLA_Notification batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchSLA_Notification objschclass = new BatchSLA_Notification();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class

/*  Execute the below code in Anonymous window to Schedule the batch on every day  9 AM
 --------------------------------------------------------------------------------
        BatchSLA_NotificationScheduler objschclass = new BatchSLA_NotificationScheduler();
        String cronexpression ='0 0 9 ? * MON-FRI';
        system.schedule('BatchSLA_Notification', cronexpression, objschclass);
  */