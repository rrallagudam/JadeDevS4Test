/**@@
#HANDLER CLASS NAME         :  Trigger_Account_Handler
#TRIGGER NAME               :  AccountTrigger
#HELPER CLASS NAME          :  Trigger_Account_Helper
#TEST CLASS                 :  AccountTriggerHandler_Test
#DESCRIPTION                :  This is used for different methods depends on trigger events   
@@**/
public with sharing class Trigger_Account_Handler{
    
    /**@@
    #DESCRIPTION       : Before Insert Hanlder
    #Paramaters        : trigger.new,trigger.newMap
    @@**/ 
    public static void beforeInsertHandler(List<Account> newList, Map<Id,Account> newMap){
        
        //Update billing state to two digit ISO code
        Trigger_Account_Helper.convertStateNamesOnAccount(newList);
        
    }//End of before Insert Handler
    
    /**@@
    #DESCRIPTION       : Before Update Hanlder
    #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void beforeUpdateHandler(List<Account> newList, Map<Id,Account> newMap, List<Account> oldList, Map<Id,Account> oldMap){   
        
        //Update billing state to two digit ISO code
        Trigger_Account_Helper.convertStateNamesOnAccount(newList);
        //NAICS Description and Adaptive industry update on account depends on NAICScode match with Industry Classification record.
        Trigger_Account_Helper.afterupdate(newmap,oldmap);
        
    }//End of Before Update Handler
    
    /**@@
    #DESCRIPTION       : After Insert Hanlder
    #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/ 
    public static void afterInsertHandler(List<Account> newList, Map<Id,Account> newMap, List<Account> oldList, Map<Id,Account> oldMap){
        //Account Team and Team role assignment
        Trigger_Account_Helper.afterinsert(newmap,oldmap);
        
        //########### Commented by Jade Global Inc on 22nd Aug 2017 #############
        //Method call to insert the data in AccountShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        AccountSharingForPartners.insertAccountShare(newList,oldMap);
        
    }//End of After Insert Handler
    
    /**@@
    #DESCRIPTION       : After Update Hanlder
    #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/ 
    public static void afterUpdateHandler(List<Account> newList, Map<Id,Account> newMap, List<Account> oldList, Map<Id,Account> oldMap){
        //Account Team and Team role assignment
        Trigger_Account_Helper.afterinsert(newmap, oldmap);
        //when Account status is changed to cancelled, update the status of all contact under that account to 'Unqualified' and Unqualified Reason to 'No Interest'.
        Trigger_Account_Helper.setContactStatusUnqualified(newMap, oldMap);
        //When a customer account's status is moved to Cancelled, all contacts should be re-assigned to the SDR Owner on the most recent Closed Won opportunity.
        Trigger_Account_Helper.reassignContactOwnershipCancelledAccounts(newList, oldMap);
        
        //########### Commented by Jade Global Inc on 22nd Aug 2017 #############
        //Method call to insert the data in AccountShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        //system.debug('after update account share');
        AccountSharingForPartners.insertAccountShare(newList,oldMap);
        
        
    }//End of After Update Handler
    
    
}// End of Handler Class