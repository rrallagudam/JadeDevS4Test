/**@@
#CLASS NAME     :   BatchAssignPartnerOpportunities_Sch
#DESCRIPTION    :   This is a Scheduler class for BatchAssignPartnerOpportunities batch class.
@@**/

public class BatchAssignPartnerOpportunities_Sch implements Schedulable {
    
    /**@@
    #DESCRIPTION     : This is execute method used to execute BatchAssignPartnerOpportunities batch class.
    #Paramaters      : SchedulableContext ctx
    @@**/
    
    public void execute(SchedulableContext ctx) {
        BatchAssignPartnerOpportunities objschclass = new BatchAssignPartnerOpportunities();
        database.executeBatch(objschclass);
    }//End of execute method
}//End of class

/*
Integer intMinute = 15;
BatchAssignPartnerOpportunities_Sch objScheduleClass = new BatchAssignPartnerOpportunities_Sch();
String strCronExpression = '0 '+String.ValueOf(DateTime.Now().AddMinutes(intMinute).Minute())+' * * * ?';
String strJobId = system.schedule('Assign partner opportunities through batch class', strCronExpression, objScheduleClass);
*/