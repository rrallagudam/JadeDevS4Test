@IsTest
public class SubscriptionHandler_Tests {

    @TestSetup static void init() {
        //TestData.setup();
    }
    
    @IsTest public static void basicTests(){
        //TestData data = new TestData();
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
                
        Contract tContract = new Contract(
                AccountId = testAccount.Id,
                ContractTerm = 12,
                StartDate = Date.today(),
                SBQQ__Opportunity__c = testOpportunity.Id,
                SBQQ__Quote__c = testQuote.Id,
                Status = 'Draft'
            );
        insert tContract;
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
                
         List<SBQQ__Subscription__c> subscriptions = new List<SBQQ__Subscription__c>();
        SBQQ__Subscription__c sub1 = new SBQQ__Subscription__c();
        sub1.SBQQ__Contract__c = tContract.Id;
        sub1.SBQQ__Quantity__c = 25;
        sub1.SBQQ__NetPrice__c = 2500.00;
        sub1.SBQQ__Product__c = prod.Id;
        subscriptions.add(sub1);
        
        SBQQ__Subscription__c sub2 = new SBQQ__Subscription__c();
        sub2.SBQQ__Contract__c = tContract.Id;        
        sub2.SBQQ__Quantity__c = 1;
        sub2.SBQQ__NetPrice__c = 100.00;
        
        subscriptions.add(sub2);
        insert subscriptions;
        
        
        // Test data created 2 subscriptions on this contract. Assert that fields are rolled up in INSERT.
        //System.assert(tContract.TotalNetPrice__c > 0.0);
        //System.assertEquals(0.0, tContract.TotalMarkupAmount__c);
        
        SubscriptionHandler handler = new SubscriptionHandler();
        //System.assert( handler.getContractSOQL() != null);
        
        subscriptions[0].SBQQ__MarkupAmount__c = 100.00;
        update subscriptions[0];
        //data = new TestData();
        
        //System.assert(tContract.TotalNetPrice__c > 0.0);
        //System.assert(tContract.TotalMarkupAmount__c > 0.0);
    }
}