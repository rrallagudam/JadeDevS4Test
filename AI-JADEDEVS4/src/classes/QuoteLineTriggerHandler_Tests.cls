@IsTest
public class QuoteLineTriggerHandler_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void basicTests(){
        TestData data = new TestData();
                
        data.TestQuote.Is_Multi_Year__c = True;
        data.TestQuote.Term_Years__c = '1';
        data.TestQuote.SBQQ__SubscriptionTerm__c = 12;
        data.TestQuote.Year_1_Discount__c = 10.0;
        // Force recalc of line items by changing the term
        update data.TestQuote;
        data.TestQuote = Database.query('SELECT ' + SObjectUtils.allFields('SBQQ__Quote__c') + ' FROM SBQQ__Quote__c LIMIT 1');
        data.TestQuoteLines = Database.query('SELECT ' + SObjectUtils.allFields('SBQQ__QuoteLine__c') + ',SBQQ__Quote__r.SBQQ__MasterContract__c FROM SBQQ__QuoteLine__c');
        
        System.assertEquals(12, data.TestQuote.SBQQ__SubscriptionTerm__c);
    }
}