/**
 * Event trigger
 * @description Trigger for Event object
 * @author Thomas Diego Prananta, Traction on Demand
 * @date Sept 21, 2016
 */
trigger trac_Event on Event (after insert, after update) {
	TriggerSettings__c ts = TriggerSettings.get();
	if(ts.Event_Trigger_Enabled__c) {
		trac_Events.triggerHandler();
	}
}