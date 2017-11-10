/**@@
#CLASS NAME    :    MigrationContactsToLead
#DESCRIPTION           :    Migrating contacts to Lead based on conditions.   
@@**/
public class MigrationContactsToLead{
    
    /**@@
    #DESCRIPTION   : To create new Account Team member with 'SDR' team role.
    #Paramaters        : trigger.newMap,trigger.oldMap
    @@**/
    public static void moveContactsToLead(List<Account> newList){
        try{
            for(Account accObj : newList){
                //if(Number_Closed_Lost_Opportunities__c, Number_Closed_Opportunities__c, Number_Closed_Won_Opportunities__c, Number_of_Open_New_Opportunities__c, Number_of_Open_Opportunities__c)
            }
        }
        Catch(Exception e){
            System.debug('********'+e);
        }
    }//END OF METHOD
}//END OF CLASS