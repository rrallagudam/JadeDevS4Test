trigger SubscriptionTrigger on SBQQ__Subscription__c (after insert, after update) {
	SubscriptionHandler handler = new SubscriptionHandler();
	TriggerSettings__c ts = TriggerSettings.get();
    
	if(Trigger.isInsert && Trigger.isAfter && ts.Subscription_Trigger_Enabled__c){
		handler.OnAfterInsert(Trigger.new);
        //handler.OnAfterInsertAsync( Trigger.newMap.keySet() );
	}
    else if(Trigger.isUpdate && Trigger.isAfter && ts.Subscription_Trigger_Enabled__c){
		handler.OnAfterUpdate(Trigger.new);
        //handler.OnAfterUpdateAsync( Trigger.newMap.keySet() );
	}
}