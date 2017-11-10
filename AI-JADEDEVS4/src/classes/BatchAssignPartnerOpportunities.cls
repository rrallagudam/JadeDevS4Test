/**@@
#Batch CLASS NAME  :    BatchAssignPartnerOpportunities
#DESCRIPTION       :    when Account DoD Updated Opportunity owners to Account owners
@@**/
public class BatchAssignPartnerOpportunities implements Database.Batchable<sObject> {
    /**@@
    #DESCRIPTION     : 
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    public Database.QueryLocator start(Database.BatchableContext BC)
    {  
        Set<Id> accIdsSet = new Set<Id>();
        List<Account> accList = [SELECT Id,DoD_Update__c FROM Account WHERE DoD_Update__c =true];
        for(Account acc: accList){
            accIdsSet.add(acc.id);
        }
        
        String query = 'Select id, ownerid, Account.OwnerID from Opportunity where AccountId IN :accIdsSet and IsNewAccountOnOpportunity__c = true';
        return Database.getQueryLocator(query);
    }
    /**@@
    #DESCRIPTION     : This execute method of batch class, 
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
                       2) lstOpportunity(List<Opportunity>)      : It is used to take a list of Partner Opportunity which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext BC, List<Opportunity> lstOpportunity)
    {
        List<opportunity> opportunityToBeUpdated = new List<opportunity>();
        for(Opportunity opp: lstOpportunity)
        {
            if(opp.ownerId != opp.Account.OwnerId){
                opp.OwnerId = opp.Account.ownerId;
                opportunityToBeUpdated.add(opp);
            }
        }
        //Update opportunityToBeUpdated Owner to Account Owner
        if(!opportunityToBeUpdated.isEmpty()){
            update opportunityToBeUpdated;
        }//End of If
    }
    /**@@
    #DESCRIPTION     : This is a finish method of batch class, which executes after excution of execute method of batch class. 
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    public void finish(Database.BatchableContext BC)
    {
        System.debug('**Finish**');
    }//End of finish method
    
}