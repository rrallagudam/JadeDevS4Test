@IsTest
public class TestData_Tests {
    
    @IsTest public static void basicTests(){
        System.assert( SObjectUtils.allFields('Lead') != null );        
        TestData.setup();
        TestData data = new TestData();
        
        Account acct = (Account)SObjectUtils.get('Account', data.TestAccount.Id);
        System.assertEquals(data.TestAccount.Id, acct.Id);
        
        String fields = SObjectUtils.allFields('Account', new Set<String>());
        System.assert(fields != null);
        fields = SObjectUtils.allCreatableFields('Account', new Set<String>());
        System.assert(fields != null);
        
        System.assert(data != null);
        System.assert(data.TestAccount != null);
        System.assert(data.TestCampaign != null);
        System.assert(data.TestContact != null);
        System.assert(data.TestLead != null);
        System.assert(data.TestPricebookId != null);
        System.assert(data.TestOpportunity != null);
        System.assert(data.TestOpportunity.SBQQ__PrimaryQuote__c != null);
        System.assert(data.TestQuote != null);
        System.assert(data.TestQuoteLines != null);
        System.assert(data.TestQuoteLines.size() > 0);
        System.assert(data.TestProducts != null);
        System.assert(data.TestProducts.size() > 0);
        System.assert(data.TestPricebookEntries != null);
        System.assert(data.TestPricebookEntries.size() > 0);
        System.assert(data.TestContract != null);
        System.assert(data.TestSubscriptions != null);
        System.assert(data.TestSubscriptions.size() > 0);
        System.assert(data.TestTerritories.size() > 0);
        System.assert(data.TestAreas.size() > 0);
        System.assertEquals('10000', data.TestAreas[0].ZipCode__c);
        System.assert(data.TestTerritoryAreas.size() > 0);
        
        System.assert( TestData.getProductsByFamily('Subscription').size() > 0 );
        
        // Assert that quote line trigger copy to Opportunity? A: Yes
        ID oppID = data.TestOpportunity.Id;
        integer count = database.countQuery('SELECT count() FROM OpportunityLineItem WHERE OpportunityId=:oppID');
        System.assert(count == data.TestQuoteLines.size());
        
        // Test the Contract afterUpdate trigger
        data.TestContract.Status = 'Activated';
        data.TestContract.SBQQ__RenewalForecast__c = true;
        data.TestContract.SBQQ__RenewalTerm__c = 12;
        //update data.TestContract;
    }
}