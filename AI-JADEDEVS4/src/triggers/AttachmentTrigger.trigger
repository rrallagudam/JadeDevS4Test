trigger AttachmentTrigger on Attachment (after insert) {       
    AttachmentTriggerhandler.afterInsert(trigger.new);      
}