/**@@
#TRIGGER NAME          :    OpportunityLineItemTrigger
#HANDLER CLASS NAME    :    Trigger_OpportunityLineItem_Handler
#HELPER CLASS NAME     :    Trigger_OpportunityLineItem_Helper
#TEST CLASS            :    OpportunityLineItemTriggerHandler_Tests
#DESCRIPTION           :    This handler class will handles all the trigger events and make call to the helper class to handling the appropriate logic.   
@@**/
public class Trigger_OpportunityLineItem_Handler{
    
    /**@@
        #DESCRIPTION   : Before Insert Hanlder
        #Paramaters    : trigger.new,trigger.newMap
    @@**/ 
    public static void beforeInsertHandler(List<OpportunityLineItem> newList, Map<Id,OpportunityLineItem> newMap){
        Trigger_OpportunityLineItem_Helper.OnBeforeInsert(newList);
    }// END OF BEFORE INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : After Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterInsertHandler(List<OpportunityLineItem> newList, Map<Id,OpportunityLineItem> newMap){
        Trigger_OpportunityLineItem_Helper.OnAfterInsert(newList);
    }//END OF AFTER INSERT HANDLER

}//END OF CLASS