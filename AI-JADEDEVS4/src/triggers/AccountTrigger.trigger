/**@@
#TRIGGER NAME          :    AccountTrigger
#HANDLER CLASS NAME    :    Trigger_Account_Handler
#HELPER CLASS NAME     :    Trigger_Account_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/

trigger AccountTrigger on Account (before insert,before update,after insert,after update) {
    
    //This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Account_Automation__c){  
            if(trigger.isbefore){
                if(trigger.isInsert){
                    Trigger_Account_Handler.beforeInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                    Trigger_Account_Handler.beforeUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
            }//End of if
            else{
                if(trigger.isInsert){
                    Trigger_Account_Handler.afterInsertHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUpdate){
                    
                    Trigger_Account_Handler.afterUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
            }//End of else if
        }// End of Account_Automation__c
    }//End of All__c
}//End of AccountTrigger