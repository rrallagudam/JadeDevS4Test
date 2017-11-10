/**@@
#TRIGGER NAME          :    QuoteDocumentTrigger
#HANDLER CLASS NAME    :    Trigger_QuoteDocument_Handler
#HELPER CLASS NAME     :    Trigger_QuoteDocument_Helper
#TEST CLASS            :    QuoteDocumentHandler_Tests 
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.   
@@**/
public class Trigger_QuoteDocument_Handler{
    
    /**@@
        #DESCRIPTION   : Before Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap
    @@**/ 
    public static void beforeInsertHandler(List<SBQQ__QuoteDocument__c> newList, Map<Id,SBQQ__QuoteDocument__c> newMap){
       
    }// END OF BEFORE INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : Before Update Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void beforeUpdateHandler(List<SBQQ__QuoteDocument__c> newList, Map<Id,SBQQ__QuoteDocument__c> newMap, List<SBQQ__QuoteDocument__c> oldList, Map<Id,SBQQ__QuoteDocument__c> oldMap){   
        
    }//END OF BEFORE UPDATE HANDLER
    
    
    /**@@
        #DESCRIPTION   : Before Delete Hanlder
        #Paramaters        : trigger.old, trigger.oldMap
    @@**/
    public static void beforeDeleteHandler(List<SBQQ__QuoteDocument__c> oldList, Map<Id,SBQQ__QuoteDocument__c> oldMap){
       
    }//END OF BEFORE DELETE HANDLER
    
    /**@@
        #DESCRIPTION   : After Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterInsertHandler(List<SBQQ__QuoteDocument__c> newList, Map<Id,SBQQ__QuoteDocument__c> newMap, List<SBQQ__QuoteDocument__c> oldList, Map<Id,SBQQ__QuoteDocument__c> oldMap){
        Trigger_QuoteDocument_Helper.OnAfterInsert(newList);
    }//END OF AFTER INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : After Update Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterUpdateHandler(List<SBQQ__QuoteDocument__c> newList, Map<Id,SBQQ__QuoteDocument__c> newMap, List<SBQQ__QuoteDocument__c> oldList, Map<Id,SBQQ__QuoteDocument__c> oldMap){

    }//END OF AFTER UPDATE HANDLER

    /**@@
        #DESCRIPTION   : After Delete Hanlder
        #Paramaters        : trigger.new,trigger.old, trigger.oldMap
    @@**/
    public static void afterDeleteHandler(List<SBQQ__QuoteDocument__c> newList, List<SBQQ__QuoteDocument__c> oldList, Map<Id,SBQQ__QuoteDocument__c> oldMap){
               
    }//END OF AFTER DELETE HANDLER
    /**@@
        #DESCRIPTION   : After Undelete Hanlder
        #Paramaters        : trigger.new,trigger.newMap
    @@**/
    public static void afterUnDeleteHandler(List<SBQQ__QuoteDocument__c> newList, Map<Id,SBQQ__QuoteDocument__c> newMap){
        
    }

}//END OF CLASS