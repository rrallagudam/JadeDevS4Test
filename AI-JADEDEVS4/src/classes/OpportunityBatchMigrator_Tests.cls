@IsTest
public class OpportunityBatchMigrator_Tests {   
        
    private static Opportunity createTestOpportunity(TestData data){
        ID pricebookId = Test.getStandardPricebookId();
        Opportunity testOpp = new Opportunity(Name='Test Archive Opportunity',
                    AccountId=data.TestAccount.Id,
                    StageName='Closed Won',
                    SBQQ__PrimaryQuote__c = data.TestQuote.Id,
                    Pricebook2Id=pricebookId,
                    CloseDate=Date.Today().AddDays(-365),
                    Old_ID__c = 'migrated_id',
                    SBQQ__Contracted__c = false,
                    ARCHIVE_Total_Contract_Amount__c = 10000.00,
                    ARCHIVE_Subscription_Start_Date__c = Date.Today().AddDays(-365),
                    ARCHIVE_Subscription_End_Date__c = Date.Today(),
                    ARCHIVE_Subscription_Term__c = 12,
                    Type = 'New Business',
					Closed_Reasons__c = 'Other',                                              
                    Order_Type__c = 'Existing: Add-On');
        insert testOpp;
        
        OpportunityLineItem item = new OpportunityLineItem(
            OpportunityId = testOpp.Id,
            Quantity = 1,
            TotalPrice = 100.00,
            PricebookEntryId = data.TestPricebookEntries[1].Id);
        insert item;
        
        return testOpp;
    }
    
    @IsTest public static void DateRangeTermTests(){
        Date startDate = Date.valueOf('2014-03-31');
        Date endDate = Date.valueOf('2017-02-01');
        
        integer termMonths = startDate.monthsBetween(endDate);
        System.assertEquals(35, termMonths);
    }
    
    @IsTest public static void QuoteMigrationStrategyTests(){
        TestData.setup();
        TestData data = new TestData();
        Opportunity testOpp = createTestOpportunity(data);
        String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        
        Product2 subscriptionProduct = [SELECT Id,Revenue_Type__c FROM Product2 WHERE Id =:data.TestPricebookEntries[1].Product2Id LIMIT 1];
        System.assertEquals('Subscription', subscriptionProduct.Revenue_Type__c);
        
        List<SBQQ__Subscription__c> subscriptions = [SELECT Id,SBQQ__Contract__c FROM SBQQ__Subscription__c];
        System.assertEquals(2, subscriptions.size());
        
        Test.startTest();
        
        QuoteMigrationStrategy strategy = new QuoteMigrationStrategy();
        System.assertEquals(false, strategy.validate( data.TestOpportunity ).Success );
        System.assertEquals(true, strategy.validate( testOpp ).Success );
        OpportunityBatchMigrator batch = new OpportunityBatchMigrator(soql, strategy);        
        Database.ExecuteBatch(batch);
        Test.stopTest();
        
        testOpp = (Opportunity)SObjectUtils.get('Opportunity', testOpp.Id);
        System.assertEquals(true, testOpp.IsClosed);
        System.assertEquals(true, testOpp.IsWon);
        System.assert(testOpp.Old_ID__c != null);
        System.assertEquals(false, testOpp.SBQQ__Contracted__c);
        System.assert(testOpp.Roll_Up_Subscription_Revenue__c != null && testOpp.Roll_Up_Subscription_Revenue__c > 0.00);
        
        // Expecting SteelBrick to automatically create Quote Line Items from Opportunity Products
        SBQQ__Quote__c q = [SELECT Id FROM SBQQ__Quote__c WHERE SBQQ__Opportunity2__c=:testOpp.Id LIMIT 1];
        SBQuote quote = new SBQuote().withId( q.Id );
        System.assert( quote != null );
        List<SBQQ__QuoteLine__c> quoteLines = quote.LineItems;
        System.assertEquals(1, quoteLines.size());
    }
    
     @IsTest public static void OrderMigrationStrategyTests(){
        TestData.setup();
        TestData data = new TestData();
        Opportunity testOpp = createTestOpportunity(data);
        System.assertEquals(0, Database.countQuery('SELECT count() FROM Order') );
        Test.startTest();
        String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        OrderMigrationStrategy strategy = new OrderMigrationStrategy();
        OpportunityBatchMigrator batch = new OpportunityBatchMigrator(soql, strategy);
        Id BatchProcessId = Database.ExecuteBatch(batch);
         
        InstallmentMigrationStrategy installmentsJob = new InstallmentMigrationStrategy();
        batch = new OpportunityBatchMigrator(soql, installmentsJob);
        BatchProcessId = Database.ExecuteBatch(batch);
         
        Test.stopTest();
        System.assertEquals(1, Database.countQuery('SELECT count() FROM Order') );
        
        soql = 'SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order LIMIT 1';
        Order o = Database.query(soql);
        System.assert( o != null);
    }
    
    @IsTest public static void ContractMigrationStrategyTests(){
        TestData.setup();
        TestData data = new TestData();
        Opportunity testOpp = createTestOpportunity(data);
        integer count = Database.countQuery('SELECT count() FROM Contract');
        System.debug('Contract count (pre) = ' + count);
        Test.startTest();
        String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        ContractMigrationStrategy strategy = new ContractMigrationStrategy();
        OpportunityBatchMigrator batch = new OpportunityBatchMigrator(soql, strategy);
        Id BatchProcessId = Database.ExecuteBatch(batch);
        Test.stopTest();
        count = Database.countQuery('SELECT count() FROM Contract');
        System.debug('Contract count (post) = ' + count);
        System.assert(count > 0);
    }
  
    @IsTest public static void RenewalMigrationStrategyTests(){
        TestData.setup();
        TestData data = new TestData();
        Opportunity testOpp = createTestOpportunity(data);
        Test.startTest();
        String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        RenewalMigrationStrategy strategy = new RenewalMigrationStrategy();
        OpportunityBatchMigrator batch = new OpportunityBatchMigrator(soql, strategy);
        Id BatchProcessId = Database.ExecuteBatch(batch);
        Test.stopTest();
    }
    
    @IsTest public static void OpportunityTypeMigrationStrategyTests(){
        TestData.setup();
        TestData data = new TestData();
        Opportunity testOpp = createTestOpportunity(data);
        Test.startTest();
        String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        OpportunityTypeMigrationStrategy strategy = new OpportunityTypeMigrationStrategy();
        OpportunityBatchMigrator batch = new OpportunityBatchMigrator(soql, strategy);
        Id BatchProcessId = Database.ExecuteBatch(batch);
        Test.stopTest();
        testOpp = (Opportunity)SObjectUtils.get('Opportunity', testOpp.Id);
        System.assertEquals('Add-On', testOpp.Type);
    }
    
    @IsTest public static void OpportunityProductMigrationStrategyTests(){
        TestData.setup();
        TestData data = new TestData();
        Opportunity testOpp = createTestOpportunity(data);
        Test.startTest();
        String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        OpportunityProductMigrationStrategy strategy = new OpportunityProductMigrationStrategy();
        OpportunityBatchMigrator batch = new OpportunityBatchMigrator(soql, strategy);
        Id BatchProcessId = Database.ExecuteBatch(batch);
        Test.stopTest();
    }
}