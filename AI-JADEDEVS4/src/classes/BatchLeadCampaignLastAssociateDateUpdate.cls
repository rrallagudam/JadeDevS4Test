/**@@
#Batch CLASS NAME  :    BatchLeadCampaignLastAssociateDateUpdate
#DESCRIPTION       :    This batch class is updating “Campaign Last Associated date” field value on Lead with Campaign Members Created Date, for the Leads which are Campaign Members.   
@@**/

public class BatchLeadCampaignLastAssociateDateUpdate implements Database.Batchable<sObject>
{
     /**@@
    #DESCRIPTION     : This is a Start method for batch class which returns a lead record with "Campaign Last Associated Date" field value.
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    public Database.QueryLocator start(Database.BatchableContext BC)
    {   
        /**@@
		#DESCRIPTION   : query is a string type of variable used for query statement.
		@@**/         
        String query ='select id, Campaign_Last_Associated_date__c from Lead';
        //return the list of all leads with "Campaign Last Associated date" field value.
        return Database.getQueryLocator(query);
    }//End of start method

     /**@@
    #DESCRIPTION     : This execute method of batch class, which is updating “Campaign Last Associated date” field value on lead with Campaign Members Created Date, for the leads which are Campaign Members.
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
					   2) lstLeads(List<Lead>)	 : It is used to take a list of lead which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext BC, List<Lead> lstLeads)
    {
        /**@@
		#DESCRIPTION   : lstLeadsUpdate is a list of leads for which execute method is updating campaign last associated date.
		@@**/
        list<Lead> lstLeadsUpdate = new list<Lead>();
        /**@@
		#DESCRIPTION   : mapLeadCampaign is a map of leadid and camapign memeber.
		@@**/
        map<Id,CampaignMember> mapLeadCampaign = new map<Id,CampaignMember>();
        
        //adding leadid and associated campaign Member in mapContactCampaign.
        for(CampaignMember objmem:[select id,CreatedDate,LeadId from CampaignMember where LeadId IN:lstLeads order by CreatedDate])
        {
            mapLeadCampaign.put(objmem.LeadId,objmem);
        }//End of for loop

        for(Lead ol:lstLeads)
        {
            if(mapLeadCampaign.containsKey(ol.Id))
            {
                /**@@
				#DESCRIPTION   : dT is a DateTime variable used to get a created date of camapign member.
				@@**/
                DateTime dT = mapLeadCampaign.get(ol.Id).CreatedDate;
                //Updating “Campaign Last Associated date” field value on lead with Campaign Members Created Date.
                ol.Campaign_Last_Associated_date__c = date.newinstance(dT.year(), dT.month(), dT.day());                
                lstLeadsUpdate.add(ol);
            }//End of if loop
        }//End of for loop
        
        if(!lstLeadsUpdate.isEmpty())
            update lstLeadsUpdate; 
    }//End of execute method
    
    /**@@
    #DESCRIPTION     : This is a finish method of batch class, which executes after excution of execute method of batch class. 
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
	public void finish(Database.BatchableContext BC)
    {

    }//End of finish method
    
}//End of batch class