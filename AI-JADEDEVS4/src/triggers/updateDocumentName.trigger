trigger updateDocumentName on Attachment (after insert, after update) {
     if(trigger.isbefore){
     	if(trigger.isInsert){
        }
        else if(trigger.isUpdate){
        }
     }//End of if
     else{
        if(trigger.isInsert){
            //Trigger_Account_Handler.afterInsertHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
        }
        else if(trigger.isUpdate){
            
            //Trigger_Account_Handler.afterUpdateHandler(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
        }
    }//End of else if
}//End of trigger