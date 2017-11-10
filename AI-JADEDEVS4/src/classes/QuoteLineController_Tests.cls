@IsTest
public class QuoteLineController_Tests {
    
    
    @IsTest public static void basicTests(){
    Test.starttest();
        Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
        
        ID pricebookId = Test.getStandardPricebookId();
        
        Opportunity testOpportunity = new Opportunity(Name='Test Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Prospecting',
                    Pricebook2Id=pricebookId,
                    CloseDate=Date.Today().AddDays(90),
                    SBQQ__Contracted__c = false,
                    Closed_Reasons__c = 'Other',
                    Type = 'New Business');
        insert testOpportunity;
        
        Product2 prod = new Product2(
        Name = 'Product',
        Description = 'Test subscription product',        
        Family = 'Subscription',
        Revenue_Type__c = 'Subscription',
        ProductCode = 'TEST-SUBSCRIPTION',              
        SBQQ__SubscriptionBase__c = 'List',
        SBQQ__SubscriptionPricing__c = 'Fixed',
        SBQQ__SubscriptionCategory__c = 'Software',
        SBQQ__SubscriptionTerm__c = 12,
        SBQQ__SubscriptionType__c = 'Renewable',
        IsActive = true);
        insert prod;
        
        SBQQ__Quote__c testQuote = new SBQQ__Quote__c(
                SBQQ__Opportunity2__c = testOpportunity.Id,
                SBQQ__PriceBook__c = pricebookId,
                SBQQ__Account__c = testAccount.Id,
                SBQQ__Type__c = 'Quote',
                SBQQ__Primary__c = true,
                SBQQ__SubscriptionTerm__c = 12,
                Term_Years__c = '1',
                SBQQ__StartDate__c = Date.Today() );
        insert testQuote;
        
        final Integer MAX_QUOTE_LINES = 5;
        List<SBQQ__QuoteLine__c> quoteLines = new List<SBQQ__QuoteLine__c>();
        SBQQ__QuoteLine__c serviceLine = new SBQQ__QuoteLine__c(
                SBQQ__Quote__c = testQuote.Id,
                SBQQ__SubscriptionScope__c = 'Quote',
                SBQQ__Product__c = prod.Id,
                SBQQ__Quantity__c = 1,
                SBQQ__ListPrice__c = 100.00);
        quoteLines.add(serviceLine);
        
        SBQQ__QuoteLine__c subscriptionLine = new SBQQ__QuoteLine__c(        
                SBQQ__Quote__c = testQuote.Id,
                SBQQ__Product__c = prod.Id,
                SBQQ__Quantity__c = 25,
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionPricing__c = 'Fixed Price',
                SBQQ__DefaultSubscriptionTerm__c = 12,
                SBQQ__SubscriptionTerm__c = 12,
                SBQQ__ListPrice__c = 100.00);
        quoteLines.add(subscriptionLine);
        insert quoteLines;
        
        ApexPages.Standardcontroller controller = new ApexPages.Standardcontroller(testQuote);
        QuoteLineController objQuote = new QuoteLineController(controller);
        //objQuote.a = data.TestQuote;
        objQuote.search();
        objQuote.deleteid = serviceLine.Id;
        objQuote.deletetask();
        Test.stoptest();
    }
}