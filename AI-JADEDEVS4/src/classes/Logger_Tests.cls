@IsTest
public class Logger_Tests {

    @IsTest public static void basicTests(){
        System.assertEquals(0, Logger.clear());
        Logger.info('log info');
        List<Log__c> logEntries = [SELECT Id, Details__c FROM Log__c];
        System.assertEquals(1, logEntries.size());
        System.assertEquals('log info', logEntries[0].Details__c);
        
        Logger.error('test_id', 'Opportunity', 'Error Subject', 'Error details' );
        logEntries = [SELECT Id, Details__c FROM Log__c];
        System.assertEquals(2, logEntries.size());
        System.assertEquals(2, Logger.clear());
        
        MigrationResult result = new MigrationResult();
        result.Success = false;
        result.Id = 'test_id';
        result.SObjectType = 'Opportunity';
        result.Message = 'Error message';
        
        Log__c l = Logger.error('OrderMigrationStrategy', result);
        System.assert(l != null);
    }
}