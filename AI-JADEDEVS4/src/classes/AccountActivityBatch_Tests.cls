@IsTest
public class AccountActivityBatch_Tests {
    
	@IsTest public static void basicTests(){
        TestData.initTriggerSettings();
        Account testAccount = new Account(Name= 'Test Account', 
                                          Status__c='Active', 
                                          Old_ID__c='old_id',
                                          Description='conversation notes',
                                          Account_Notes__c = 'Account notes',
                                          Note_test__c = 'Test notes');
        insert testAccount;
        
		Test.startTest();
		AccountActivityBatch batch = new AccountActivityBatch();
		Database.executeBatch(batch);
		Test.stopTest();
		
       	Integer i = [SELECT COUNT() FROM Task WHERE WhatId=:testAccount.Id];
		System.assertEquals(3, i);
	}
}