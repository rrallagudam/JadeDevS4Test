/**@@
#TRIGGER NAME          :    UserTrigger 
#HANDLER CLASS NAME    :    Trigger_User_Handler
#HELPER CLASS NAME     :    Trigger_User_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/

trigger UserTrigger on User (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    //This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().User_Automation__c ){
            if(trigger.isBefore){
               /* if(trigger.isInsert){
                }
                else if(trigger.isUpdate){
                 }*/
                
            }//End of IF
            else{
                if(trigger.isInsert){
                    Trigger_User_Handler.afterInsertHandler(trigger.new);
                }
                else if(trigger.isUpdate){
                    Trigger_User_Handler.afterUpdateHandler(trigger.new, trigger.oldMap);
                }
            }//End of else
        }//End of User_Automation__C
    }//ENnd of All__c
}//End of trigger