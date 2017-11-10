/**@@
#TRIGGER NAME          :    OpportunityLineItemTrigger
#HANDLER CLASS NAME    :    Trigger_OpportunityLineItem_Handler
#HELPER CLASS NAME     :    Trigger_OpportunityLineItem_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/
trigger OpportunityLineItemTrigger on OpportunityLineItem (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    //This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().OpportunityLineItem_Automation__c){  
            
            if(trigger.isBefore){                
                if(trigger.isInsert){
                    Trigger_OpportunityLineItem_Handler.beforeInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                }
                else if(trigger.isDelete){
                }
            }else{
                if(trigger.isInsert){
                    Trigger_OpportunityLineItem_Handler.afterInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                }
                else if(trigger.isDelete){
                }
                else if(trigger.isUnDelete){
                }
            }//End of else            
       }//End of if Quote_Automation__c
    }//End of All if loop
}//End of trigger