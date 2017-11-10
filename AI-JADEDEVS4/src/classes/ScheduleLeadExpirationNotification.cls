/**@@
#CLASS NAME     :   ScheduleLeadExpirationNotification
#DESCRIPTION    :   This is a Scheduler class for BatchExecLeadExpirationNotification batch class.
@@**/

public class ScheduleLeadExpirationNotification implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This execute method is used to execute BatchExecLeadExpirationNotification batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchExecLeadExpirationNotification objschclass = new BatchExecLeadExpirationNotification();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class