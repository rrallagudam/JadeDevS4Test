/**@@
#CLASS NAME     :   ScheduleOppExpirationNotification
#DESCRIPTION    :   This is a Scheduler class for BatchExecOppExpirationNotification batch class.
@@**/

public class ScheduleOppExpirationNotification implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This execute method is used to execute BatchExecOppExpirationNotification batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchExecOppExpirationNotification objschclass = new BatchExecOppExpirationNotification();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class