/**@@
#Batch CLASS NAME  :    BatchContactCampaignLastAssociateDate
#DESCRIPTION       :    This batch class is updating “Campaign Last Associated date” field value on Contact with Campaign Members Created Date, for the contacts which are Campaign Members.   
@@**/

public class BatchContactCampaignLastAssociateDate implements Database.Batchable<sObject>
{
    /**@@
    #DESCRIPTION     : This is Start method of apex batch class used to return list of all contacts with "Campaign Last Associated date" field value.
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    
    public Database.QueryLocator start(Database.BatchableContext BC)
    {   
        /**@@
		#DESCRIPTION   : query is a string type of variable used for query statement.
		@@**/
        String query ='select id, Campaign_Last_Associated_date__c from Contact';
        //return the list of all contacts with "Campaign Last Associated date" field value.
        return Database.getQueryLocator(query);
    
    }//End of start method
    
    /**@@
    #DESCRIPTION     : This execute method of batch class, which is updating “Campaign Last Associated date” field value on Contact with Campaign Members Created Date, for the contacts which are Campaign Members.
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
					   2) lstContacts(List<Contact>)	 : It is used to take a list of contacts which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext BC, List<Contact> lstContacts)
    {    
        /**@@
		#DESCRIPTION   : lstContactsUpdate is a list of contacts for which execute method is updating campaign last associated date.
		@@**/
        list<Contact> lstContactsUpdate = new list<Contact>();
        /**@@
		#DESCRIPTION   : mapContactCampaign is a map of contactid and camapign memeber.
		@@**/
		map<Id,CampaignMember> mapContactCampaign = new map<Id,CampaignMember>();
        
        //adding contactid and associated campaign Member in mapContactCampaign.
        for(CampaignMember objmem:[select id,CreatedDate,ContactId from CampaignMember where ContactId IN:lstContacts order by CreatedDate])
        {
            mapContactCampaign.put(objmem.ContactId,objmem);
        }//End of for loop
        
		for(Contact con:lstContacts)
        {
            if(mapContactCampaign.containsKey(con.Id))
            {
                /**@@
				#DESCRIPTION   : dT is a DateTime variable used to get a created date of campaign member.
				@@**/
                DateTime dT = mapContactCampaign.get(con.Id).CreatedDate;
                //Updating “Campaign Last Associated date” field value on Contact with Campaign Members Created Date.
                con.Campaign_Last_Associated_date__c = date.newinstance(dT.year(), dT.month(), dT.day());                
                lstContactsUpdate.add(con);
            }//End of if loop
        }//End of for loop
        
        if(!lstContactsUpdate.isEmpty())
            update lstContactsUpdate;      
    }//End of execute method  
    
	/**@@
    #DESCRIPTION     : This is a finish method of batch class, which executes after excution of execute method of batch class. 
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    public void finish(Database.BatchableContext BC)
    {

    }//End of finish method

}//End of batch class