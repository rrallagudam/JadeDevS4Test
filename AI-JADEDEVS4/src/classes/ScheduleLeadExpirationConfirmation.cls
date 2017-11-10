/**@@
#CLASS NAME     :   ScheduleLeadExpirationConfirmation
#DESCRIPTION    :   This is a Scheduler class for BatchExecLeadExpirationConfirmation batch class.
@@**/

public class ScheduleLeadExpirationConfirmation implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This execute method is used to execute BatchExecLeadExpirationConfirmation batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchExecLeadExpirationConfirmation objschclass = new BatchExecLeadExpirationConfirmation();
        database.executeBatch(objschclass, 10);
    }//End of execute method
}//End of class