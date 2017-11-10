/**@@
#CLASS NAME     :   BatchAssignPartnerContacts_Scheduler
#DESCRIPTION    :   This is a Scheduler class for BatchAssignPartnerContacts batch class.
@@**/

public class BatchAssignPartnerContacts_Scheduler implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchAssignPartnerContacts batch class.
    #Paramaters      : SchedulableContext sc
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchAssignPartnerContacts objschclass = new BatchAssignPartnerContacts();
        database.executeBatch(objschclass);
    }//End of execute method
    
    
}//End of class


/*
Integer intMinute = 15;
BatchAssignPartnerContacts_Scheduler objScheduleClass = new BatchAssignPartnerContacts_Scheduler();
String strCronExpression = '0 '+String.ValueOf(DateTime.Now().AddMinutes(intMinute).Minute())+' * * * ?';
String strJobId = system.schedule('Assign contacts through batch class', strCronExpression, objScheduleClass);
*/