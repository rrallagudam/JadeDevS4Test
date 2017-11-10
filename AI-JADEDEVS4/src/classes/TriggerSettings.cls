public class TriggerSettings {
    
	public static TriggerSettings__c get(){
		List<TriggerSettings__c> settingsList = TriggerSettings__c.getall().values();
		if(settingsList == null || settingsList.size() == 0){
			return defaultSettings();
		} else {
			return settingsList[0];   
		}
	}
    
    @TestVisible private static TriggerSettings__c defaultSettings(){
        TriggerSettings__c settings = new TriggerSettings__c();
        settings.Name = 'Settings';
        settings.Account_Trigger_Enabled__c = True;
        settings.Contact_Trigger_Enabled__c = True;
        settings.Event_Trigger_Enabled__c = True;
        settings.Lead_Trigger_Enabled__c = True;
        settings.Opportunity_Line_Item_Trigger_Enabled__c = True;
        settings.Opportunity_Trigger_Enabled__c = True;
        settings.Quote_Document_Trigger_Enabled__c = True;
        settings.Quote_Line_Trigger_Enabled__c = True;
        settings.Quote_Trigger_Enabled__c = True;
        settings.Subscription_Trigger_Enabled__c = True;
        settings.Task_Trigger_Enabled__c = True;
        return settings;
    }
}