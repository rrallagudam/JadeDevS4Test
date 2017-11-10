/**@@
#Batch CLASS NAME  :    BatchPortarUserNamePopulate
#DESCRIPTION       :    Related to SOZO - 143: (Display Username on Partner Contact).
                        As Username field value will be blank for existing User because functionality was built in User trigger.
                        This batch class is used to update existing contacts Community User Name with associated user's username.
@@**/
public class BatchPortarUserNamePopulate implements Database.Batchable<sObject>
{
    /**@@
    #DESCRIPTION     : This is start method of batch class used to return list of all the users where user contact record type is Partner or Prospect.
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    public Database.QueryLocator start(Database.BatchableContext BC)
    {   
        String query ='select id,Username,contactid from user where contactid != null and contact.Portal_User_Name__c = null and (contact.Account_Type__c=\'Partner\' or contact.Account_Type__c=\'Partner Prospect\')';
        //return list of all the users where user contact record type is Partner or Prospect
        return Database.getQueryLocator(query);
    }//End of start method
    
    /**@@
    #DESCRIPTION     : This execute method of batch class, updating existing user contacts 'Community User Name' with associated user's username. 
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
                       2) lstUser(List<User>)            : It is used to take a list of users which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext BC, List<User> lstUser)
    {
        List<contact> ListContactToUpdate=new List<contact>();
        Contact objContact;
        for(user u:lstUser)
        {           
            objContact = new Contact(id=u.Contactid);
            //updating existing contact's 'Community User Name' with associated user's username
            objContact.Portal_User_Name__c = u.Username;
            ListContactToUpdate.add(objContact);            
        }//End of for loop
        System.debug('**ListContactToUpdate**'+ListContactToUpdate);
        if(!ListContactToUpdate.isEmpty())
        {
            update ListContactToUpdate; 
            System.debug('**ListContactToUpdate**'+ListContactToUpdate);
        }//End of if statement
    }//End of Execute method
    
    
     /**@@
    #DESCRIPTION     : This is a finish method of batch class, which executes after excution of execute method of batch class. 
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    public void finish(Database.BatchableContext BC)
    {
        System.debug('**Finish**');
    }//End of finish method
    
}