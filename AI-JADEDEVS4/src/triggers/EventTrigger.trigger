trigger EventTrigger on Event (after insert,after update) {
    TriggerSettings__c ts = TriggerSettings.get();
   if(trigger.isAfter && ts.Event_Trigger_Enabled__c){
          EventTriggerHandler.onAfterInsertUpdate(trigger.new);        
    }
}