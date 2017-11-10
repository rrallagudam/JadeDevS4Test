/**@@
#CLASS NAME     :   BatchSLA_Notification_ManagerScheduler
#DESCRIPTION    :   This is a Scheduler class for BatchSLA_Notification_Manager batch class.
@@**/

public class BatchSLA_Notification_ManagerScheduler implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchSLA_Notification_Manager batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchSLA_Notification_Manager objschclass = new BatchSLA_Notification_Manager();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class

    /*  Execute the below code in Anonymous window to Schedule the batch on every day  9 AM
     --------------------------------------------------------------------------------
            BatchSLA_Notification_ManagerScheduler objschclass = new BatchSLA_Notification_ManagerScheduler();
            String cronexpression ='0 0 9 ? * THU';
            system.schedule('BatchSLA_Notification Manager', cronexpression, objschclass);
      */