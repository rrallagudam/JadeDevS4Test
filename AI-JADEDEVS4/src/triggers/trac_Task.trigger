trigger trac_Task on Task (after insert, after update) {
    TriggerSettings__c ts = TriggerSettings.get();
    if(trigger.isAfter && ts.Task_Trigger_Enabled__c) {
        TaskTriggerHandler.onAfterInsertUpdate(trigger.new);
    }
}