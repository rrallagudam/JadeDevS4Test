/**@@
#TRIGGER NAME          :    OpportunityTrigger
#HANDLER CLASS NAME    :    Trigger_Opportunity_Handler
#HELPER CLASS NAME     :    Trigger_Opportunity_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/

trigger OpportunityTrigger on Opportunity (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    //This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Opportunity_Automation__c){  
            
            if(Trigger_Opportunity_Helper.returnonInstallmentOpp){return;}
            if(trigger.isBefore){
                
                if(trigger.isInsert){
                    Trigger_Opportunity_Handler.beforeInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                    Trigger_Opportunity_Handler.beforeUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_Opportunity_Handler.beforeDeleteHandler(trigger.old, trigger.oldMap);
                }
            }else{
                if(trigger.isInsert){
                    Trigger_Opportunity_Handler.afterInsertHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUpdate){
                    Trigger_Opportunity_Handler.afterUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_Opportunity_Handler.afterDeleteHandler(trigger.new, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUnDelete){
                    Trigger_Opportunity_Handler.afterUnDeleteHandler(trigger.new, trigger.newMap);
                }
            }//End of else            
       }//End of if Opportunity_Automation__c
    }//End of All if loop
}//End of trigger