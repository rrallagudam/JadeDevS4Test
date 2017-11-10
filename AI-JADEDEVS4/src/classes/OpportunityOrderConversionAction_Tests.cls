/**@@
#CLASS NAME                :    OpportunityOrderConversionAction_Tests
#DESCRIPTION                   :   Test class for "OpportunityOrderConversionAction"  
@@**/

@IsTest
public class OpportunityOrderConversionAction_Tests {

    @TestSetup static void init() {
        //TestData.setup();
    }
    
    @IsTest public static void basicTests(){
        //TestData data = new TestData();
        
        Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
        

        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount.Id);
        insert testContact;
                Product2 d3 = new Product2(
                Name = 'Multi-Year Subscription Discount - 2 Years',
                Description = 'MultiYear Discount SKU',
                Family = 'Subscription',
                Revenue_Type__c = 'Subscription',
                ProductCode = 'MYD3',
                SBQQ__SubscriptionBase__c = 'List',
                SBQQ__SubscriptionPricing__c = 'Fixed',
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionTerm__c = 36,
                SBQQ__SubscriptionType__c = 'One-time',
                IsActive = true);
        insert d3;
        
        ID pricebookId = Test.getStandardPricebookId();
      List<PricebookEntry> pbEntries = new List<PricebookEntry>();

            PricebookEntry entry = new PricebookEntry(
                    IsActive = true,
                    Pricebook2Id = pricebookId,
                    Product2Id = d3.Id,
                    UnitPrice = 100.00);
            insert (entry);        
        
    
        Opportunity testOpportunity = new Opportunity(Name='Test Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Prospecting',
                    Pricebook2Id=pricebookId,
                    CloseDate=Date.Today().AddDays(90),
                    SBQQ__Contracted__c = false,
                    Closed_Reasons__c = 'Other',
                    ARCHIVE_Subscription_Start_Date__c = system.today(),
                    Type = 'New Business');
        insert testOpportunity;
        OpportunityLineItem oppLine = new OpportunityLineItem(pricebookentryid=entry.ID,TotalPrice=2000,Quantity = 2,OpportunityID = testOpportunity.ID);
        insert oppLine;

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
        
        testOpportunity.SBQQ__PrimaryQuote__c = testQuote.Id;
        update testOpportunity;
        update testQuote;
        system.debug('testOpportunity@@@'+testOpportunity.Subscription_Start_Date__c);
        Map<String, String> orderFieldMap = FieldMapConfiguration.getByObjects('Opportunity', 'Order');
        System.assert(orderFieldMap.size() > 0);
        Map<String, String> lineFieldMap = FieldMapConfiguration.getByObjects('OpportunityLineItem', 'OrderItem');
        System.assert(lineFieldMap.size() > 0);
        
        AIOpportunity opp = new AIOpportunity().withSObject(testOpportunity);
        //System.assertEquals(2, opp.LineItems.size() );
        for(OpportunityLineItem item : opp.LineItems.values()){
            System.assert( item.UnitPrice != null);
            System.debug('UnitPrice = ' + item.UnitPrice);
        }
        
        // No Orders or line items prior to clone        
        integer count = database.countQuery('SELECT count() FROM Order');
        System.assertEquals(0, count);
        
        count = database.countQuery('SELECT count() FROM OrderItem');
        System.assertEquals(0, count);
        
                    Map<String, String> orderFieldMap1 = FieldMapConfiguration.getByObjects('Opportunity', 'Order');

        system.debug('orderFieldMap@@'+orderFieldMap1);
        
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ testOpportunity});
        
        // Post-conversion, confirm that Order record exists with Line items.
        count = database.countQuery('SELECT count() FROM Order');
        System.assertEquals(1, count);
        Order TestOrder = Database.query('SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order LIMIT 1');
        System.assertEquals(testOpportunity.Id, TestOrder.OpportunityId);
        System.assertEquals(testAccount.Id, TestOrder.AccountId);
        System.assertEquals( testOpportunity.Pricebook2Id, TestOrder.Pricebook2Id );
        System.assertEquals( testQuote.Id, TestOrder.Quote__c );
        System.assert( TestOrder.Subscription_Start_Date__c != null );
        System.assertEquals(TestOrder.EffectiveDate, TestOrder.Subscription_Start_Date__c );
        //System.assert( TestOrder.Subscription_End_Date__c != null );
        
        AIOrder o = new AIOrder().withSObject(TestOrder);
        //System.assertEquals(2, o.OrderItems.size());        
        
        // Execute conversion again and confirm no duplicates are created.
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ testOpportunity});
        count = database.countQuery('SELECT count() FROM Order');
        System.assertEquals(1, count);
        
        count = database.countQuery('SELECT count() FROM OrderItem');
        //System.assertEquals(2, count);
    }
     /**@@
        #TEST METHOD   : populateOppSpecialTermTest()
        #DESCRIPTION   : Populating the Internal Term from opportunity on Order creation
    @@**/
    public static testMethod void populateOppSpecialTermTest(){
    
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
                
        //Insert contact record
        List<Contact> contactList = DataFactory.createContactTestRecords('ContactTest',accList[0].Id,1);
        
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('TestOpportunity',1);
        
        List<Order> orderList = DataFactory.createOrderTestRecords('TestOrder', oppList[0].id, accList[0].id, 1);
        System.assertEquals(oppList[0].Special_Terms__c,'TestInternal Notes');
        
        delete orderList;
        undelete orderList;
     }//END OF METHOD   
     
     /**@@
        #TEST METHOD   : populateQuoteSpecialTermTest()
        #DESCRIPTION   : Populating the Special Term from Quote on Order creation
    @@**/
    public static testMethod void populateQuoteSpecialTermTest(){
    
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        
        //Insert contact record
        List<Contact> contactList = DataFactory.createContactTestRecords('ContactTest',accList[0].Id,1);
        
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('TestOpportunity',1);
        
        List<SBQQ__Quote__c> quoteList = DataFactory.createQuoteTestRecords(oppList[0].id,1);
        
        List<Order> orderList = DataFactory.createOrderTestRecords('TestOrder', oppList[0].id, accList[0].id, 1);
        System.assertEquals(orderList[0].Special_Terms__c,'TestOrder');
        
        delete orderList;
        undelete orderList;
        
     }//END OF METHOD
}