@IsTest
public class MigrationUtils_Tests {

    @TestSetup static void init() {
        
    }
    
    @IsTest public static void testPBEntries(){        
        Product2 testProd = new Product2(Name='Test Product', ProductCode='ProdCode', Family='Subscription', Revenue_Type__c = 'Subscription', IsActive=True);
        insert testProd;
        Id pricebookId = Test.getStandardPricebookId();
        List<PricebookEntry> entries = MigrationUtils.CreateDefaultPricebookEntries(pricebookId);
        System.assert(entries.size() > 0);
        
        List<Product2> products = MigrationUtils.updateProductSubscriptionFields();
        System.assert( products.size() > 0);
        
        products = MigrationUtils.updateProductFamily();
        System.assert( products.size() > 0);
        
        List<Product2> discountProducts = MigrationUtils.provisionDiscountProducts();
        System.assert(discountProducts.size() > 0);
        
        TestData.setup();
        TestData data = new TestData();
        MigrationUtils.cleanAccount( data.TestAccount.Id );
        
        MigrationUtils.purgeProducts();
    }
    
    @IsTest public static void batchDeleteTests(){
        TestData.setup();
        TestData data = new TestData();
        
        Test.startTest();
        String query = 'select id from Opportunity';
        BatchDelete delBatch = new BatchDelete(query);
        Id BatchProcessId = Database.ExecuteBatch(delBatch);
        Test.stopTest();
    }
    
    @IsTest public static void contractConversionTests(){
        TestData.setup();
        TestData data = new TestData();
        
        Test.startTest();
        String query = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        OpportunityContractBatch b = new OpportunityContractBatch(query);
        Contract c = b.toContract( data.TestOpportunity );
        System.assert( c != null);
        
        data.TestOpportunity.ARCHIVE_Subscription_Start_Date__c = Date.today();
        data.TestOpportunity.ARCHIVE_Subscription_End_Date__c = Date.today().addYears(1);
        SBQQ__Quote__c q = b.toQuote( data.TestOpportunity );
        System.assert( q != null );
        
        String soql = 'SELECT ' + SObjectUtils.allFields('OpportunityLineItem') + ' FROM OpportunityLineItem';
        List<OpportunityLineItem> lineItems = Database.query(soql);
        b.getLineItems(data.TestOpportunity, lineItems);
        
        List<SBQQ__QuoteLine__c> quoteLines = b.buildQuoteLinesFromQuote(data.TestQuote, data.TestOpportunity, lineItems);
        
        Id BatchProcessId = Database.ExecuteBatch(b);
        Test.stopTest();
    }
}