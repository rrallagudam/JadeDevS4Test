/**@@
#TRIGGER NAME          :    ContactTrigger 
#HANDLER CLASS NAME    :    Trigger_Contact_Handler
#HELPER CLASS NAME     :    Trigger_Contact_Helper
#TEST CLASS            :    ContactTriggerHandler_Test, ContactTriggerHandlerWOsharing_Tests and UserCreationForPortalsHelper_Tests
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the    appropriate logic.   
@@**/
public class Trigger_Contact_Handler{
    
    /**@@
        #DESCRIPTION   : Before Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap
    @@**/ 
    public static void beforeInsertHandler(List<Contact> newList, Map<Id,Contact> newMap){
        Trigger_Contact_Helper.OnBeforeInsert(newList);
        
        // Determine if Qualified or New (future proofing for Quick Conversion)
       Trigger_Contact_Helper.setNewContactStatus(newList);
        
        //Update Contact Lifecycle based on its status.
        Trigger_Contact_Helper.setContactLifecycleOnStatusChange(newList, null);
        
        //Update Contact Lifecycle based on opportunity stage or account status
        Trigger_Contact_Helper.setContactLifecycleOnOpptyStage(newList, null);
        
        //Populate the timestamp field based on Lifecycle
        Trigger_Contact_Helper.populateTimestampLifecycle(newList, null);
        
        //Update mailing state to two digits ISO Code
        Trigger_Contact_Helper.convertMailingStateNamesOnContact(newList);
        
        //Update Email Opt-Out
        Trigger_Contact_Helper.setEmailOptOut(newList);
        
    }// END OF BEFORE INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : Before Update Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void beforeUpdateHandler(List<Contact> newList, Map<Id,Contact> newMap, List<Contact> oldList, Map<Id,Contact> oldMap){   
        
        //Set Contact Restored
        Trigger_Contact_Helper.setContactStatusRestored(newList, oldMap);
        
        //Update Contact Lifecycle based on its status.
        Trigger_Contact_Helper.setContactLifecycleOnStatusChange(newList, oldMap);
        
        //Update Contact Lifecycle based on opportunity stage or account status
        Trigger_Contact_Helper.setContactLifecycleOnOpptyStage(newList, oldMap);
        
        //Populate the timestamp field based on Lifecycle
        Trigger_Contact_Helper.populateTimestampLifecycle(newList, oldMap);

        //Update mailing state to two digits ISO Code
        Trigger_Contact_Helper.convertMailingStateNamesOnContact(newList);
        
        //Update Email Opt-Out
        Trigger_Contact_Helper.setEmailOptOut(newList);
        
    }//END OF BEFORE UPDATE HANDLER
    
    
    /**@@
        #DESCRIPTION   : Before Delete Hanlder
        #Paramaters        : trigger.old, trigger.oldMap
    @@**/
    public static void beforeDeleteHandler(List<Contact> oldList, Map<Id,Contact> oldMap){
        //AWAITING FOR YOU...
    }//END OF BEFORE DELETE HANDLER
    
    /**@@
        #DESCRIPTION   : After Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterInsertHandler(List<Contact> newList, Map<Id,Contact> newMap, List<Contact> oldList, Map<Id,Contact> oldMap){
        Trigger_Contact_Helper.afterinsert(newmap,null);
        Trigger_Contact_Helper.UserCreationHelperMethod(newMap.values(),null);
          
        //########### Commented by Jade Global Inc on 22nd Aug 2017 #############
        //Method call to insert the data in ContactShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        ContactSharingForPartners.insertContactShare(newList,null);
        
    }//END OF AFTER INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : After Update Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterUpdateHandler(List<Contact> newList, Map<Id,Contact> newMap, List<Contact> oldList, Map<Id,Contact> oldMap){
        Trigger_Contact_Helper.afterinsert(newmap,oldmap);
        Trigger_Contact_Helper.UserCreationHelperMethod(newMap.values(),oldmap);
     
        //########### Commented by Jade Global Inc on 22nd Aug 2017 #############
        //Method call to insert the data in ContactShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        ContactSharingForPartners.insertContactShare(newList,OldMap);
        
    }//END OF AFTER UPDATE HANDLER

    /**@@
        #DESCRIPTION   : After Delete Hanlder
        #Paramaters        : trigger.new,trigger.old, trigger.oldMap
    @@**/
    public static void afterDeleteHandler(List<Contact> newList, List<Contact> oldList, Map<Id,Contact> oldMap){
               
    }//END OF AFTER DELETE HANDLER
    /**@@
        #DESCRIPTION   : After Undelete Hanlder
        #Paramaters        : trigger.new,trigger.newMap
    @@**/
    public static void afterUnDeleteHandler(List<Contact> newList, Map<Id,Contact> newMap){
        
    }

}//END OF CLASS