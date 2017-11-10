global class AccountActivityBatch implements Database.Batchable<sObject> {
    
	global Database.QueryLocator start(Database.BatchableContext BC) {
		String query = 'SELECT Id,Name,Description,Account_Notes__c,Note_test__c FROM Account WHERE Old_ID__c!=null';
		return Database.getQueryLocator(query);
	}
   
    global void execute(Database.BatchableContext BC, List<Account> scope) {
		List<Task> upsertTasks = new List<Task>();
		for(Account acct : scope){
            if(acct.Description != null){
                upsertTasks.add( createTask(acct, 'Description', acct.Description) );
            }
            if(acct.Account_Notes__c != null){
                upsertTasks.add( createTask(acct, 'AccountNote', acct.Account_Notes__c) );
            }
            if(acct.Note_test__c != null){
                upsertTasks.add( createTask(acct, 'LegacyNote', acct.Note_test__c) );
            }
		}
        upsert upsertTasks Migration_ID__c; // Prevents creating multiple activities on subsequent executions (intended to be one-time only migration)
	}
    
    public Task createTask(Account acct, String fieldType, String notes){
        Task t = new Task();
		t.WhatId = acct.Id;
		t.Subject = 'Conversation Notes (Archives)';
		t.Description = notes;
		t.Type = 'Conversation Notes';
		t.Priority = 'Normal';
		t.Status = 'Completed';
		t.Migration_ID__c = acct.Id + ':Notes:' + fieldType;
		return t;
    }
    
	global void finish(Database.BatchableContext BC) {
        
	}
}