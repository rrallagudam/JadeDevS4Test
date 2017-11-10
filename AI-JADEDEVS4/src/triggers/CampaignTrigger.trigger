/**@@
#TRIGGER NAME          :    CampaignTrigger
#HANDLER CLASS NAME    :    Trigger_Campaign_Handler
#HELPER CLASS NAME     :    Trigger_Campaign_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the    appropriate logic.   
@@**/

trigger CampaignTrigger on Campaign (before insert, before update, after insert, after update) {
//This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Campaign_Automation__c ){
            if(trigger.isBefore){
                if(trigger.isInsert){
                    Trigger_Campaign_Handler.beforeInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                    Trigger_Campaign_Handler.beforeUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    //Trigger_Campaign_Handler.beforeDeleteHandler(trigger.old, trigger.oldMap);
                }
            }else{
                if(trigger.isInsert){                    
                    Trigger_Campaign_Handler.afterInsertHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                    
                }
                else if(trigger.isUpdate){
                    Trigger_Campaign_Handler.afterUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    //Trigger_Campaign_Handler.afterDeleteHandler(trigger.new, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUnDelete){
                    //Trigger_Campaign_Handler.afterUnDeleteHandler(trigger.new, trigger.newMap);
                }
            }//End of else
        }//End of Campaign_Automation__c flag
    }//End of All__c flag
}//End of trigger