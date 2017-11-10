/*
 * Migration utility for transforming Quotes to match historical Opportunities.
 * Example usage:
 * String soql = 'SELECT Id,SBQQ__StartDate__c,SBQQ__EndDate__c,SBQQ__SubscriptionTerm__c,SBQQ__Opportunity2__r.ARCHIVE_Subscription_Start_Date__c,SBQQ__Opportunity2__r.ARCHIVE_Subscription_End_Date__c FROM SBQQ__Quote__c ORDER BY CreatedDate';
 * QuoteTransformationBatch batch = new QuoteTransformationBatch(soql);
    Database.ExecuteBatch(batch);
*/
global class QuoteTransformationBatch implements Database.Batchable<sObject>{
    global final String Query;
    
    global QuoteTransformationBatch(String q){
        Query=q;
    }

    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC,List<SBQQ__Quote__c> scope){
        for(SBQQ__Quote__c q : scope){
            if(q.SBQQ__Opportunity2__r.ARCHIVE_Subscription_Start_Date__c == null || 
               q.SBQQ__Opportunity2__r.ARCHIVE_Subscription_End_Date__c == null){
                   continue;
               }
            integer termMonths = q.SBQQ__Opportunity2__r.ARCHIVE_Subscription_Start_Date__c.monthsBetween(q.SBQQ__Opportunity2__r.ARCHIVE_Subscription_End_Date__c);
            if(termMonths == 0){
                termMonths = 1;
            }
            q.SBQQ__SubscriptionTerm__c = termMonths;
        }
        update scope;
    }

    global void finish(Database.BatchableContext BC){}
}