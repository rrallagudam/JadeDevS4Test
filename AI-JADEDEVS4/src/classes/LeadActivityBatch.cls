/**@@
#BATCH CLASS NAME  :    LeadActivityBatch
#DESCRIPTION       :    This batch class is used to create 4 Event Activities related to lead record where “old Id” field value on Lead is not equal to NULL. 
						Those 4 Events are as follows: 
                            •	Create event activity for first meeting,
                            •	Create event activity for completed meeting date,
                            •	Create event activity for trial,
                            •	Create event activity for Reason Recycled.
                              
@@**/

global class LeadActivityBatch implements Database.Batchable<sObject> {

    /**@@
    #DESCRIPTION     : This is a Start method of Batch class which returns a String of leads with respective fields used in query where Old ID is not equal to Null.
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
	global Database.QueryLocator start(Database.BatchableContext BC) 
    {
        String query = 'SELECT Id,Name,CreatedDate,' +
                'x1st_meeting_completed_date__c,x1st_meeting_credit__c,X1st_Meeting_Credit__r.Name,x1st_meeting_reschedules__c,x1st_meeting_scheduled_date__c,x1st_meeting_source__c,' + 
                'enterprise_trial__c,trial_created_date__c,trial_key__c,trial_username__c,reason_for_recycled__c FROM Lead WHERE Old_ID__c!=null';
        //returns a list of leads with respective fields used in query where Old ID is not equal to Null.
        return Database.getQueryLocator(query); 
        
    }//End start method

    /**@@
    #DESCRIPTION     : This method return a list of leads from Start method and creates 4 event activities for those retured lead records.those 4 event activies are created for first meeting, completed meeting date, trial, Reason Recycled.
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
					   2) scope(List<Lead>)	             : It is used to take a list of leads which are returned from start method of batch class. 
    @@**/
	global void execute(Database.BatchableContext BC, List<Lead> scope) 
    {
        List<Event> upsertEvents = new List<Event>();
        for(Lead l : scope)
        {
            // Create event activity for first meeting
            if(l.x1st_meeting_scheduled_date__c != null){
                Event evt = new Event();
                evt.WhoId = l.Id;
                evt.Subject = 'Scheduled First Meeting';
                evt.Type = 'Meeting';
                evt.StartDateTime = l.x1st_meeting_scheduled_date__c;
                evt.DurationInMinutes = 60;
                evt.Description = 'Meeting source: ' + l.x1st_meeting_source__c + '\r' +
                        'Credited To: ' + l.x1st_meeting_credit__r.Name + '\r' +
                        'Reschedule Notes: ' + l.x1st_meeting_reschedules__c;
                evt.Migration_ID__c = l.Id + ':1stMeeting';
                upsertEvents.add(evt);
            }//End of if loop
            
            // Create event activity for completed meeting date
            if(l.x1st_meeting_completed_date__c != null)
            {
                Event evt = new Event();
                evt.WhoId = l.Id;
                evt.Subject = 'First Meeting Completed';
                evt.Type = 'Meeting';
                evt.StartDateTime = l.x1st_meeting_completed_date__c;
                evt.EndDateTime = l.x1st_meeting_completed_date__c;
                evt.Description = '(Migrated from old Salesforce Org)';
                evt.Migration_ID__c = l.Id + ':1stMeetingCompleted';
                upsertEvents.add(evt);
            }//End of if loop
            
            // Create event activity for trial
            if(l.trial_created_date__c != null)
            {                
                Event evt = new Event();
                evt.WhoId = l.Id;
                evt.Subject = 'Trial Created';
                evt.Type = 'Trial';
                evt.StartDateTime = l.trial_created_date__c;
                evt.DurationInMinutes = 60;
                evt.Description = 'Trial user: ' + l.trial_username__c + ' with trial key: ' + l.trial_key__c;
                evt.Migration_ID__c = l.Id + ':TrialCreated';
                upsertEvents.add(evt);
            }//End of if loop
            
            // Create event activity for Reason Recycled
            if(l.reason_for_recycled__c != null)
            {               
                Event evt = new Event();
                evt.WhoId = l.Id;
                evt.Subject = 'Lead Recycled (Archived)';
                evt.Type = 'Other';
                evt.StartDateTime = l.CreatedDate;
                evt.DurationInMinutes = 60;
                evt.Description = 'Archived note: Lead was recycled in previous Salesforce org. Reason: ' + l.Reason_for_Recycled__c;
                evt.Migration_ID__c = l.Id + ':ReasonRecycled';
                upsertEvents.add(evt);
            }//End of if loop
        }//End of for loop
        // Prevents creating multiple activities on subsequent executions (intended to be one-time only migration)
        upsert upsertEvents Migration_ID__c; 
    
    }//End of execute method

	/**@@
    #DESCRIPTION     : This is a finish method of batch class, which executes after excution of execute method of batch class. 
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    global void finish(Database.BatchableContext BC) 
    {

    }//End of finish method
}//End of batch class