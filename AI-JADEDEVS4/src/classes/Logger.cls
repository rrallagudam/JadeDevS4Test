public class Logger {
    
    public static Integer clear(){
        List<Log__c> logs = [SELECT Id FROM Log__c];
        Integer count = logs.size();
        delete logs;
        return count;
    }
    
    public static Log__c info(String details){
        // TODO: Check custom setting before inserting (to enable declarative on/off)
        System.debug(details);
        Log__c l = new Log__c( 
            Details__c = details,
            Type__c = 'Info');
        insert l;
        return l;
    }
    
    public static Log__c info(String id, String sobjectType, String subject, String details){
        System.debug(details);
        Log__c l = new Log__c(
                ID__c = id,
                SObject_Type__c = sobjectType,
                Subject__c = subject,
                Type__c = 'Info',
                Details__c = details );
        insert l;
        return l;
    }
    
    public static Log__c error(String id, String sobjectType, String subject, String details){
        System.debug(details);
        Log__c l = new Log__c(
                ID__c = id,
                SObject_Type__c = sobjectType,
                Subject__c = subject,
                Type__c = 'Error',
                Details__c = details );
        insert l;
        return l;
    }
    
    public static Log__c error(String module, MigrationResult result){
        Log__c l = new Log__c(
                ID__c = result.Id,
                SObject_Type__c = result.SObjectType,
                Subject__c = module + ' ' + result.Message,
                Type__c = 'Error',
                Details__c = result.Message );
        insert l;
        return l;
    }
}