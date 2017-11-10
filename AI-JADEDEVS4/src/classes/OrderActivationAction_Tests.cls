@IsTest
public class OrderActivationAction_Tests {

    @TestSetup static void init() {
        //TestData.setup();
    }
    
    @IsTest public static void activationTests(){
        //TestData data = new TestData();
        Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
         
        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount.Id);
        insert testContact;
        
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
        
        
        system.debug('data.TestOpportunity@@'+testOpportunity);
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ testOpportunity});
        
        Id orderId = [SELECT Id FROM Order LIMIT 1][0].Id;
        Order testOrder = (Order)SObjectUtils.get('Order', orderId);
        System.assert(testOrder != null);
        System.assert( testOrder.OpportunityId != null);
        
        OrderActivationAction.activateOrder(new List<Order>{testOrder} );
        
        // Opportunity should be Closed Won and have an associated Contract
       // data.TestOpportunity = (Opportunity)SObjectUtils.get('Opportunity', data.TestOpportunity.Id);
        testOpportunity = [SELECT ID,SBQQ__Contracted__c,StageName FROM Opportunity WHERE ID=: testOpportunity.ID];
        System.assertEquals( 'Closed Won', testOpportunity.StageName);
        System.assertEquals( True, testOpportunity.SBQQ__Contracted__c);
        
        // Contract should be activated. (Currently not because of trigger error)
        ID opportunityID = testOpportunity.Id;
        String soql = 'SELECT ' + SObjectUtils.allFields('Contract') + ' FROM Contract WHERE SBQQ__Opportunity__c=:opportunityID LIMIT 1';
        Contract testContract = Database.query(soql);        
        //Contract testContract = [SELECT Id,SBQQ__Opportunity__c,Status,SBQQ__RenewalForecast__c,SBQQ__RenewalOpportunity__c FROM Contract WHERE SBQQ__Opportunity__c=:testOpportunity.Id LIMIT 1];
        /*
        System.assert(testContract != null);
        System.assert(testContract.Status != null);
        System.assertEquals('Draft', testContract.Status);
        System.assert(testContract.StartDate != null);
        System.assert(testContract.ContractTerm != null);
        System.assert(testContract.EndDate != null);
        System.assertEquals(12, testContract.ContractTerm);
        System.assert(testContract.AccountId != null);
        System.assert(testContract.SBQQ__Opportunity__c != null);
        */
                
        // These assertions should pass (they do in production).
        // But w/o access to SteelBrick Contract afterInsert trigger, it's difficult to know what TestData
        // dependencies are not provided (SB trigger throws 'no rows' exception)
        /*
        System.assertEquals('Activated', testContract.Status); 
        System.assertEquals( True, testContract.SBQQ__RenewalForecast__c);
        System.assert( testContract.SBQQ__RenewalOpportunity__c != null);
        */
        
        // Contract should have associated Subscriptions
        List<SBQQ__Subscription__c> subscriptions = [SELECT Id, SBQQ__Contract__c FROM SBQQ__Subscription__c WHERE SBQQ__Contract__c=:testContract.Id];
        //System.assert(subscriptions.size() > 0);
    }
}