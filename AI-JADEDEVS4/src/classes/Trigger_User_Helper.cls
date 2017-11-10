/**@@
#TRIGGER NAME          :    User_Trigger_OPTIMIZED 
#HANDLER CLASS NAME    :    Trigger_User_Handler
#HELPER CLASS NAME     :    Trigger_User_Helper
#TEST CLASS            :    User_Trigger_Test
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/
public class Trigger_User_Helper{

    //BELOW ARE THE MASTER/FINAL LISTS AND MAP TO BE USED FOR DML OPERATION
    public static boolean runOnce = false;

    /**@@
        #DESCRIPTION     : Displaying portal username and super user checkbox on contact's custom fields
        #Paramaters        : trigger.newList, trigger.oldMapList
     @@**/

     public static void displayUserIdonContact(List<User> newList, Map<Id, User> oldMapList){
         try{
             system.debug(newList);
            if(runOnce == false){
                 
                 List<Contact> userContacts = new List<Contact>();
                 List<User> userListNew = [select id,Username, ContactId, isActive, IsPrmSuperUser from User where id in: newList and ContactId != null and (Contact.Account_Type__c = :CustomConstants.AccountTypePartner OR contact.Account_Type__c = :CustomConstants.AccountTypePartnerProspect)];
                 system.debug(userListNew);
                for (User userObj : userListNew) {
                    system.debug(userObj);
                    // on insert, update the contact
                    // on update, if the username, the super user checkbox, or active checkbox changed, update the contact
                     if (trigger.isInsert || (trigger.isUpdate && oldMapList != null && (userObj.Username != oldMapList.get(userObj.id).Username || userObj.isActive != oldMapList.get(userObj.id).isActive || userObj.IsPrmSuperUser != oldMapList.get(userObj.id).IsPrmSuperUser))) {
                         userContacts.add(new Contact(
                            Id = userObj.ContactId,
                            Portal_User_Name__c = userObj.Username,
                        	Partner_Super_User__c = userObj.IsPrmSuperUser ));
                    }
                 }
                 if(!userContacts.isEmpty()){
                     string strContactToUpdate = JSON.serializePretty(userContacts);
                     updateContacts(strContactToUpdate);
                 }
               
              }
          }//End of try
          Catch(Exception e){
              ExceptionHandlingEmail.sendEmailonException(e);
          }
          runOnce = true;
      }
      /**@@
        #DESCRIPTION     : Updating contacts
        #Paramaters        : String
      @@**/
      @future
      public static void updateContacts(String contactString){
          try{
              list<contact> contactToUpdate = new list<contact>();
              contactToUpdate = (list<contact>)JSON.deserializeStrict(contactString, list<contact>.class);
              if(!contactToUpdate.isEmpty()){
                  update contactToUpdate;
              }
         }//End of try
         Catch(Exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
         }
      }//End of the updateContacts method
}//END OF THE CLASS