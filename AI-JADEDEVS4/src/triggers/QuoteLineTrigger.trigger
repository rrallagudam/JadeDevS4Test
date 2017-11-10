trigger QuoteLineTrigger on SBQQ__QuoteLine__c (before insert, before update, after insert, after update) {

    QuoteLineTriggerHandler handler = new QuoteLineTriggerHandler();
    TriggerSettings__c ts = TriggerSettings.get();
    
    if(Trigger.isInsert && Trigger.isBefore && ts.Quote_Line_Trigger_Enabled__c){
        handler.OnBeforeInsert(Trigger.new);
    }
    if(Trigger.isInsert && Trigger.isAfter && ts.Quote_Line_Trigger_Enabled__c){
        handler.OnAfterInsert(Trigger.new);
        //QuoteTriggerHandler.OnAfterInsertAsync(Trigger.newMap.keySet());
    }
    
    if(Trigger.isUpdate && Trigger.isBefore && ts.Quote_Line_Trigger_Enabled__c){
        handler.OnBeforeUpdate(Trigger.old, Trigger.new, Trigger.newMap);
    }
    if(Trigger.isUpdate && Trigger.isAfter && ts.Quote_Line_Trigger_Enabled__c){
        handler.OnAfterUpdate(Trigger.old, Trigger.new, Trigger.newMap);
        //AccountTriggerHandler.OnAfterUpdateAsync(Trigger.newMap.keySet());
    }
}