trigger CampaignMemberTrigger on CampaignMember(after insert, before insert, before update) {
    TriggerSettings__c ts = TriggerSettings.get();
    if (trigger.isAfter && ts.CampaignTrigger_Enabled__c) {
        CampaignMemberTriggerHandler.AfterInsert(trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
    }
    if (trigger.isBefore && ts.CampaignTrigger_Enabled__c) {
        CampaignMemberTriggerHandler.BeforeInsertUpdate(trigger.new);
    }
}