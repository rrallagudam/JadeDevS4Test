/**@@
#TRIGGER NAME          :    ContactTrigger 
#HANDLER CLASS NAME    :    Trigger_Contact_Handler
#HELPER CLASS NAME     :    Trigger_Contact_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the    appropriate logic.   
#DESIGNED BY           :    Jade Global
@@**/

trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
//This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    
       if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Contact_Automation__c ){
            if(trigger.isBefore){
                
                if(trigger.isInsert){
                    Trigger_Contact_Handler.beforeInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                    Trigger_Contact_Handler.beforeUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_Contact_Handler.beforeDeleteHandler(trigger.old, trigger.oldMap);
                }
            }else{
                if(trigger.isInsert){
                    Trigger_Contact_Handler.afterInsertHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUpdate){
                    Trigger_Contact_Handler.afterUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_Contact_Handler.afterDeleteHandler(trigger.new, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUnDelete){
                    Trigger_Contact_Handler.afterUnDeleteHandler(trigger.new, trigger.newMap);
                }
            }//End of else
        }//End of Contact_Automation__c flag
    }//End of All__c flag
}//End of trigger