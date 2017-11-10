@IsTest
public class OpportunityInstallmentsAction_Test {

   // @TestSetup static void init() {
        //TestData.setup();
   // }
    
    @IsTest public static void basicTests(){
        //TestData data = new TestData();
        
        // Setup a multiyear Quote and Opportunity.
        
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
        
        
        testQuote.Term_Years__c = '3';
        testQuote.SBQQ__SubscriptionTerm__c = 36;
        testQuote.Is_Multi_Year__c = True;
        update testQuote;
        
        testOpportunity = (Opportunity) SObjectUtils.get('Opportunity', testOpportunity.Id);
        // See TestData.cls for how the Quote line items roll up to this amount, synced on Opportunity
       // System.assertEquals(2600, testOpportunity.Amount);
        
        List<Installment__c> testInstallments = new List<Installment__c>();
        for(Integer i=0; i<3; i++){
            Installment__c iRecord = new Installment__c();
            iRecord.Quote__c = testQuote.Id;
            // TODO: Create lookup reference to Order and/or Contract
            iRecord.Payment_Due_Amount__c = 1000.00;
            iRecord.Payment_Due_Date__c = Date.today().addYears(i+1);
            testInstallments.add(iRecord);
        }
        testInstallments[2].Payment_Due_Amount__c = 600.00;
        insert testInstallments;
        
        testQuote = (SBQQ__Quote__c) SObjectUtils.get('SBQQ__Quote__c', testQuote.Id);
        System.assertEquals(3, testQuote.Total_Installments__c);
        System.assertEquals(2600, testQuote.Total_Installments_Amount__c);
        
        OpportunityInstallmentsAction.createInstallmentOpportunities(new List<Opportunity>{ testOpportunity });
        AIOpportunity closedOppty = new AIOpportunity().withId(testOpportunity.Id);        
        List<Opportunity> iOpptys = closedOppty.InstallmentOpportunities.values();
        system.debug('***iOpptys.size()***'+iOpptys.size());
       /* System.assertEquals(3, iOpptys.size());
        System.assert(1000 == iOpptys[0].Amount ||
                     600 == iOpptys[0].Amount);
        System.assert(1000 == iOpptys[1].Amount ||
                     600 == iOpptys[1].Amount);
        System.assert(1000 == iOpptys[2].Amount ||
                     600 == iOpptys[2].Amount);
       */ 
        testOpportunity = (Opportunity) SObjectUtils.get('Opportunity', testOpportunity.Id);
        //System.assertEquals('Closed Won - Installments', testOpportunity.StageName);
        List<Product2> listProd = DataFactory.createProductRecords('Installment Payment for Services', 'ZZ-0003', 1);
       
        system.assertEquals(listProd.size(), 1);
        List<Order> listOrder = DataFactory.createOrderTestRecords('orderName',testOpportunity.id ,testAccount.id , 1);
        system.assertEquals(listOrder.size(), 1);
    }
}