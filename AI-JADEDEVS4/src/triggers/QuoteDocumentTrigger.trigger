/**@@
#TRIGGER NAME          :    QuoteDocumentTrigger
#HANDLER CLASS NAME    :    Trigger_QuoteDocument_Handler
#HELPER CLASS NAME     :    Trigger_QuoteDocument_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/

trigger QuoteDocumentTrigger on SBQQ__QuoteDocument__c(before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    //This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Quote_Document_Automation__c){  
            
              if(trigger.isBefore){
                
                if(trigger.isInsert){
                    Trigger_QuoteDocument_Handler.beforeInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                    Trigger_QuoteDocument_Handler.beforeUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_QuoteDocument_Handler.beforeDeleteHandler(trigger.old, trigger.oldMap);
                }
            }else{
                if(trigger.isInsert){
                    Trigger_QuoteDocument_Handler.afterInsertHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUpdate){
                    Trigger_QuoteDocument_Handler.afterUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_QuoteDocument_Handler.afterDeleteHandler(trigger.new, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUnDelete){
                    Trigger_QuoteDocument_Handler.afterUnDeleteHandler(trigger.new, trigger.newMap);
                }
            }//End of else            
       }//End of if Quote_Document_Automation__c
    }//End of All if loop
}//End of trigger