@IsTest
public class QuoteTriggerHandler_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void basicTests(){
        TestData data = new TestData();
        
        data.TestQuote.Is_Multi_Year__c = True;
        data.TestQuote.Term_Years__c = '1';
        data.TestQuote.Year_1_Discount__c = 10.0;
        update data.TestQuote;
        // Owner assertions
        QuoteTriggerHandler handler = new QuoteTriggerHandler();
        handler.updateApprovers( new List<SBQQ__Quote__c>{ data.TestQuote } );
        
        handler.OnBeforeUpdate(new List<SBQQ__Quote__c>(), new List<SBQQ__Quote__c>{data.TestQuote}, new Map<ID, SBQQ__Quote__c>());
    }
}