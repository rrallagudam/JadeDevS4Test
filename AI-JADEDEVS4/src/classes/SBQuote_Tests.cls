@IsTest
public class SBQuote_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void cloneTests(){
        TestData data = new TestData();
        
        SBQuote quote = new SBQuote().withId(data.TestQuote.Id );
        SBQQ__Quote__c clonedQuoteRecord = quote.DeepClone();
        System.assert( clonedQuoteRecord != null );
        System.assert( clonedQuoteRecord.Id != null);
        System.assert( clonedQuoteRecord.Id != data.TestQuote.Id);
        
        SBQuote clonedQuote = new SBQuote().withId(clonedQuoteRecord.Id );
        List<SBQQ__QuoteLine__c> clonedLines = clonedQuote.LineItems;
        System.assert( clonedLines != null );
        System.assert( clonedLines.size() > 0 );
    }
}