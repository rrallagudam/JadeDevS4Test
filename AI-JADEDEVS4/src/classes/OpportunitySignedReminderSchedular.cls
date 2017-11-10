/**@@
#APEX CLASS NAME   :   OpportunitySignedReminderSchedular  
#DESCRIPTION       :   This is a schedular class in which we are calling BatchReminderonSignedOpportunity batch class.
                        This class is scheduled from debug to execute after every 1 hour.
@@**/
global class OpportunitySignedReminderSchedular  Implements Schedulable
{
    /**@@
    #DESCRIPTION     : This is a excute method of scheduler class used to BatchReminderOnSignedOpportunity" call batch class.
    #Paramaters      : sc (Database.SchedulableContext) : It is a reference to the SchedulableContext object.
    @@**/
    global void execute(SchedulableContext sc)
    {
        Id batchJobId = Database.executeBatch(new BatchReminderonSignedOpportunity(), 10);
     }
    
}

/*
OpportunitySignedReminderSchedular osc= new OpportunitySignedReminderSchedular();
String cronStr = '0 59 * * * ?';
System.schedule('Reminder signed Opportunity Batch', cronStr, osc); 
*/