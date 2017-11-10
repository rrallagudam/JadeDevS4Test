/**@@
#BATCH CLASS NAME  :    BatchLeadLastActivityDateMinusEloqua
#DESCRIPTION       :    This batch class is updating “Last Touch” field value on Lead with Task Created Date, for the Leads which has related Tasks and Tasks those are not created by “Eloqua” and “Pablo Gonzalez” user. 
@@**/

public class BatchLeadLastActivityDateMinusEloqua implements Database.Batchable<sObject>
{
    /**@@
    #DESCRIPTION     : This is start method of batch class used to return list of lead records with "Last Touch" field value.
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    public Database.QueryLocator start(Database.BatchableContext BC)
    {
        /**@@
        #DESCRIPTION   : query is a string type of variable used for query statement.
        @@**/
        String query ='select id, LastActivityDate_MinusEloqua__c from Lead';
        // return the list of all lead records with "Last Touch" field value.
        return Database.getQueryLocator(query);  
        
    }//End start method
    
    /**@@
    #DESCRIPTION     : This execute method of batch class, which is updating “Last Touch” field value on lead with Task Created Date, for the leads which has related Tasks and Tasks are not created by “Eloqua” and “Pablo Gonzalez” user.
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
                       2) lstLeads(List<Lead>)           : It is used to take a list of leads which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext BC, List<Lead> lstLeads)
    {  
        /**@@
        #DESCRIPTION   : lstLeadsUpdate is a list of leads for which execute method is updating "Last Touch" fields date value.
        @@**/
        list<Lead> lstLeadsUpdate = new list<Lead>();
        /**@@
        #DESCRIPTION   : mapContactTask is a map of lead ids and tasks.
        @@**/
        map<Id,Task> mapLeadTask = new map<Id,Task>();
        
        //adding lead id and associated tasks in mapLeadTask.
        for(Task objTask:[select id,ActivityDate,CreatedDate,Subject,Status,WhoId from Task where (CreatedById!=:Label.ELOQUA_USER_SF_ID AND CreatedById!=:Label.EXCLUDE_PABLO) AND WhoId IN:lstLeads order by CreatedDate])
        {
            mapLeadTask.put(objTask.WhoId,objTask);
        }//End of for loop

        for(Lead ol:lstLeads)
        {
            if(mapLeadTask.containsKey(ol.Id))
            {
                /**@@
                #DESCRIPTION   : dT is a DateTime variable used to get a created date of tasks.
                @@**/
                DateTime dT = mapLeadTask.get(ol.Id).CreatedDate;
                //Updating “Last Touch” field value on lead with tasks Created Date.
                ol.LastActivityDate_MinusEloqua__c = date.newinstance(dT.year(), dT.month(), dT.day());                
                lstLeadsUpdate.add(ol);
            }//End of if lop
        }//End of for loop
        if(!lstLeadsUpdate.isEmpty())
            update lstLeadsUpdate; 
        
    }// End execute method
    
    /**@@
    #DESCRIPTION     : This is a finish method of batch class, which executes after excution of execute method of batch class. 
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    public void finish(Database.BatchableContext BC)
    {

    }//End finish method

}//End Batch Class