@IsTest
public class TriggerSettings_Tests {

    @IsTest public static void basicTests(){
        TriggerSettings__c defaultSettings = TriggerSettings.defaultSettings();
        System.assert(defaultSettings != null);
        
        List<TriggerSettings__c> settingsList = TriggerSettings__c.getall().values();
		System.assertEquals(0, settingsList.size());
        
        TriggerSettings__c ts = TriggerSettings.get();
        System.assert(ts != null); // Default settings.
        
        TriggerSettings__c settings = new TriggerSettings__c();
        settings.Name = 'Settings';
        settings.Account_Trigger_Enabled__c = true;
        settings.Lead_Trigger_Enabled__c = true;
        insert settings;
        
        System.assertEquals(True, settings.Account_Trigger_Enabled__c);
        System.assertEquals(True, settings.Lead_Trigger_Enabled__c);
        
        Map<String, TriggerSettings__c> settingsMap = TriggerSettings__c.getall();
        System.assertEquals(1, settingsMap.size());
        
        ts = TriggerSettings.get();
        System.assert(ts != null);
        System.assertEquals(True, ts.Account_Trigger_Enabled__c);
        System.assertEquals(True, ts.Lead_Trigger_Enabled__c);
        
        System.assertequals(true, TriggerSettings.get().Lead_Trigger_Enabled__c);
    }
}