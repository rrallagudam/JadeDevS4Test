/**@@
#TRIGGER NAME          :    BookingDetailTrigger
#HANDLER CLASS NAME    :    Trigger_BookingDetail_Handler
#HELPER CLASS NAME     :    Trigger_BookingDetail_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/
trigger BookingDetailTrigger on Booking_Detail__c(before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    //This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Booking_Detail_Automation__c){  
           
            if(trigger.isBefore){
                
                if(trigger.isInsert){
                    Trigger_BookingDetail_Handler.beforeInsertHandler(trigger.new, trigger.newMap);
                }
                else if(trigger.isUpdate){
                    Trigger_BookingDetail_Handler.beforeUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_BookingDetail_Handler.beforeDeleteHandler(trigger.old, trigger.oldMap);
                }
            }else{
                if(trigger.isInsert){
                    Trigger_BookingDetail_Handler.afterInsertHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUpdate){
                    Trigger_BookingDetail_Handler.afterUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                else if(trigger.isDelete){
                    Trigger_BookingDetail_Handler.afterDeleteHandler(trigger.new, trigger.old, trigger.oldMap);
                }
                else if(trigger.isUnDelete){
                    Trigger_BookingDetail_Handler.afterUnDeleteHandler(trigger.new, trigger.newMap);
                }
            }//End of else            
            
        }//End of if Booking_Detail_Automation__c
    }//End of All if loop
}//End of trigger