/*
 * Quote trigger actions that do not require Process builder flexibility.
 */
trigger QuoteTrigger on SBQQ__Quote__c (before insert, before update, after update) {
    QuoteTriggerHandler handler = new QuoteTriggerHandler();
   // TriggerSettings__c ts = TriggerSettings.get();
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Quote_Automation__c ){
    
    if(Trigger.isUpdate && Trigger.isBefore){
        handler.OnBeforeUpdate(Trigger.old, Trigger.new, Trigger.newMap);
    }
    }
    }
}