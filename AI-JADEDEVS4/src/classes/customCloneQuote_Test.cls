@isTest
 private class customCloneQuote_Test{
    
    static testMethod void myTestMethod() {
        Test.startTest();
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
            
            ApexPages.currentPage().getParameters().put('id',testQuote.Id);
            
            ApexPages.StandardController controller;
            clonequotescontroller obj = new clonequotescontroller(controller);
            
            obj.Save();
            obj.Cancel();
        Test.stopTest();
    }
    
}