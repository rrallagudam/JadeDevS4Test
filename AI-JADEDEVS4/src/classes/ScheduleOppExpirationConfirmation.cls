/**@@
#CLASS NAME     :   ScheduleOppExpirationConfirmation
#DESCRIPTION    :   This is a Scheduler class for BatchExecOppExpirationConfirmation batch class.
@@**/

public class ScheduleOppExpirationConfirmation implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This execute method is used to execute BatchExecOppExpirationConfirmation batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchExecOppExpirationConfirmation objschclass = new BatchExecOppExpirationConfirmation();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class