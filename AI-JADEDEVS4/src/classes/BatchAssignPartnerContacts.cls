/**@@
#Batch CLASS NAME  :    BatchAssignPartnerContacts
#DESCRIPTION       :    when Account DoD Updated Contact owners to Account owners
@@**/
public class BatchAssignPartnerContacts implements Database.Batchable<sObject> {
    /**@@
    #DESCRIPTION     : 
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    public Database.QueryLocator start(Database.BatchableContext BC)
    {  
        Set<Id> accIdsSet = new Set<Id>();
        List<Account> accList = [SELECT Id,DoD_Update__c FROM Account WHERE DoD_Update__c =true ];
        for(Account acc: accList){
            accIdsSet.add(acc.id);
        }
        String query = 'SELECT Id,Account.OwnerId, OwnerId FROM Contact WHERE AccountId In :accIdsSet AND IsNewAccountOnContact__c=true';
        system.debug('query>>>'+query);
        return Database.getQueryLocator(query);
    }
    /**@@
    #DESCRIPTION     : This execute method of batch class, 
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    2) lstContact(List<Contact>)      : It is used to take a list of Partner Contact which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext BC, List<Contact> lstContact)
    {
        List<Contact> contactToBeUpdated = new List<Contact>();
        system.debug('lstContact>>>'+lstContact);
           
        for(Contact con: lstContact){
            if(con.ownerId != con.Account.OwnerId){
                    con.OwnerId = con.Account.ownerId;
                    contactToBeUpdated.add(con);
                }
        }//End Of For  
        if(!contactToBeUpdated.isEmpty()){
            update contactToBeUpdated;
        }//End Of If
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