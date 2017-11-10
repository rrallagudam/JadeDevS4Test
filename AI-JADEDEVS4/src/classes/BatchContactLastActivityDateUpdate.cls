/**@@
#Batch CLASS NAME  :    BatchContactLastActivityDateUpdate
#DESCRIPTION       :    This batch class is updating “Last Touch” field value on contact with Task Created Date, for the contacts which has related Tasks and Tasks are not created by “Eloqua” and “Pablo Gonzalez” user.  
@@**/

public class BatchContactLastActivityDateUpdate implements Database.Batchable<sObject>
{
    /**@@
    #DESCRIPTION     : This is start method of batch class used to return list of contact records with "Last Touch" field value.
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    public Database.QueryLocator start(Database.BatchableContext BC)
    {
        /**@@
        #DESCRIPTION   : query is a string type of variable used for query statement.
        @@**/
        String query ='select id, LastActivityDate_MinusEloqua__c from Contact';
        //return the list of all contact with "Last Touch" field value. 
        return Database.getQueryLocator(query);   
    }//End of start method
    
     /**@@
    #DESCRIPTION     : This execute method of batch class, which is updating “Last Touch” field value on contact with Task Created Date, for the contacts which has related Tasks and Tasks are not created by “Eloqua” and “Pablo Gonzalez” user.
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
                       2) lstContacts(List<Contact>)     : It is used to take a list of contacts which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext BC, List<Contact> lstContacts)
    {
        /**@@
        #DESCRIPTION   : lstContactsUpdate is a list of contacts for which execute method is updating "Last Touch" fields date value.
        @@**/
        list<Contact> lstContactsUpdate = new list<Contact>();
        /**@@
        #DESCRIPTION   : mapContactTask is a map of contact ids and tasks.
        @@**/
        map<Id,Task> mapContactTask = new map<Id,Task>();
       
        //adding contact id and associated tasks in mapContactTask.
        for(Task objTask:[select id,ActivityDate,CreatedDate,Subject,Status,WhoId from Task where (CreatedById!=:Label.ELOQUA_USER_SF_ID AND CreatedById!=:Label.EXCLUDE_PABLO) AND WhoId IN:lstContacts order by CreatedDate])
        {
            mapContactTask.put(objTask.WhoId,objTask);
        }// End for loop

        for(Contact con:lstContacts)
        {
            if(mapContactTask.containsKey(con.Id))
            {
                /**@@
                #DESCRIPTION   : dT is a DateTime variable used to get a created date of tasks.
                @@**/
                DateTime dT = mapContactTask.get(con.Id).CreatedDate;
                //Updating “Last Touch” field value on Contact with tasks Created Date.
                con.LastActivityDate_MinusEloqua__c = date.newinstance(dT.year(), dT.month(), dT.day());                
                lstContactsUpdate.add(con);
            }//End if loop
        }//End for loop
        
        if(!lstContactsUpdate.isEmpty())
            update lstContactsUpdate;      
    }// End of execute method
    
    //Finish method of batch class
    
    /**@@
    #DESCRIPTION     : This is a finish method of batch class, which executes after excution of execute method of batch class. 
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    public void finish(Database.BatchableContext BC)
    {

    }//End of execute method

}//End of batch class