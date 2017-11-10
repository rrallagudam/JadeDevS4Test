@IsTest
public class BookingDetailAction_Test {

    @TestSetup static void init() {
        //Insert custom settings
        DataFactory.insertCustomSetting();
        
       // TestData.setup();
TriggerSettings__c settings = new TriggerSettings__c();
        settings.Name = 'Settings';
        settings.Account_Trigger_Enabled__c = false;
        settings.Contact_Trigger_Enabled__c = True;
        settings.CampaignTrigger_Enabled__c = True;
        settings.Event_Trigger_Enabled__c = True;
        settings.Lead_Trigger_Enabled__c = True;
        settings.Opportunity_Line_Item_Trigger_Enabled__c = True;
        settings.Opportunity_Trigger_Enabled__c = true;
        settings.Quote_Document_Trigger_Enabled__c = True;
        settings.Quote_Line_Trigger_Enabled__c = True;
        settings.Quote_Trigger_Enabled__c = True;
        settings.Subscription_Trigger_Enabled__c = True;
        settings.Task_Trigger_Enabled__c = True;
        settings.BookingDetail_Trigger_Enabled__c = true;
        insert settings;
               
    }
    
   
    @IsTest public static void termTests(){
        System.assertEquals(1, BookingDetailAction.getTermYears(1));
        System.assertEquals(1, BookingDetailAction.getTermYears(6));
        System.assertEquals(1, BookingDetailAction.getTermYears(9));
        System.assertEquals(1, BookingDetailAction.getTermYears(12));
        
        System.assertEquals(2, BookingDetailAction.getTermYears(13));
        System.assertEquals(2, BookingDetailAction.getTermYears(16));
        System.assertEquals(2, BookingDetailAction.getTermYears(22));
        System.assertEquals(2, BookingDetailAction.getTermYears(24));
        
        System.assertEquals(3, BookingDetailAction.getTermYears(25));
        System.assertEquals(3, BookingDetailAction.getTermYears(30));
        System.assertEquals(3, BookingDetailAction.getTermYears(36));
        
        System.assertEquals(4, BookingDetailAction.getTermYears(37));
    }
    
    
        
    @IsTest public static void basicTests(){
        //TestData data = new TestData();
        test.startTest();
         Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
         
        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount.Id);
        insert testContact;
        
        ID pricebookId = Test.getStandardPricebookId();
         List<Product2> TestProducts = new list<Product2>();
        final Integer SUBSCRIPTION_PRODUCT = 1;
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
        testProducts.add(prod);
        
        Product2 f1 = new Product2(
                Name = 'Free Months - 1',
                Description = 'Free Month SKU',        
                Family = 'Subscription',
                Revenue_Type__c = 'Subscription',
                ProductCode = 'Free Months - 1',
                SBQQ__SubscriptionBase__c = 'List',
                SBQQ__SubscriptionPricing__c = 'Fixed',
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionTerm__c = 1,
                SBQQ__SubscriptionType__c = 'One-time',
                IsActive = true);
        testProducts.add(f1);
        
        Product2 f2 = new Product2(
                Name = 'Free Months - 2',
                Description = 'Free Month SKU',        
                Family = 'Subscription',
                Revenue_Type__c = 'Subscription',
                ProductCode = 'Free Months - 2',
                SBQQ__SubscriptionBase__c = 'List',
                SBQQ__SubscriptionPricing__c = 'Fixed',
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionTerm__c = 2,
                SBQQ__SubscriptionType__c = 'One-time',
                IsActive = true);
        testProducts.add(f2);
        
        Product2 f3 = new Product2(
                Name = 'Free Months - 3',
                Description = 'Free Month SKU',
                Family = 'Subscription',
                Revenue_Type__c = 'Subscription',
                ProductCode = 'Free Months - 3',
                SBQQ__SubscriptionBase__c = 'List',
                SBQQ__SubscriptionPricing__c = 'Fixed',
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionTerm__c = 3,
                SBQQ__SubscriptionType__c = 'One-time',
                IsActive = true);
        testProducts.add(f3);
        
        Product2 d2 = new Product2(
                Name = 'Multi-Year Subscription Discount - 2 Years',
                Description = 'MultiYear Discount SKU',
                Family = 'Subscription',
                Revenue_Type__c = 'Subscription',
                ProductCode = 'MYD2',
                SBQQ__SubscriptionBase__c = 'List',
                SBQQ__SubscriptionPricing__c = 'Fixed',
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionTerm__c = 24,
                SBQQ__SubscriptionType__c = 'One-time',
                IsActive = true);
        testProducts.add(d2);
        
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
        testProducts.add(d3);
        
        insert testProducts;
                     
        
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
        
        TestQuote.Is_Multi_Year__c = True;
        TestQuote.Term_Years__c = '3';
        TestQuote.Free_Months__c = '2';
        TestQuote.Quote_Term_Length__c   = 10;
        update TestQuote;
        
        TestQuote = (SBQQ__Quote__c)SObjectUtils.get('SBQQ__Quote__c', TestQuote.Id);
//        System.assertEquals(38, data.TestQuote.SBQQ__SubscriptionTerm__c); // 3 years = 36 months + 2 free months = 38
        // Note: Above calculation depends on Quote workflow rule to update the SubscriptionTerm.
        
        TestOpportunity = (Opportunity)SObjectUtils.get('Opportunity', TestOpportunity.Id);
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ TestOpportunity});

        String oid = TestOpportunity.Id;
        system.debug('****OID***'+oid);
        //String soql = 'SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order WHERE OpportunityId=:oid';
        String soql = 'SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order';        
        List<Order> orderList = Database.query(soql);
        System.assertEquals(1, orderList.size());
        // SteelBrick subscription term includes free months, but booking details term should not.
       // System.assertEquals(38, orderList[0].Term_Months__c);
        
        List<Booking_Detail__c> details = BookingDetailAction.createBookingDetails(orderList[0]);
        //System.assertEquals(3, details.size());
        
        soql = 'SELECT ' + SObjectUtils.allFields('Booking_Detail__c') + ' FROM Booking_Detail__c ORDER BY Booking_Year__c ASC';
        details = Database.query(soql);
        
        for(Integer i=0; i < details.size(); i++){
            Booking_Detail__c bd = details[i];
            System.assert(bd.Booking_Year__c == (i+1));
            System.assert(bd.Is_First_Year__c == (i==0));
            System.assert(bd.Is_Last_Year__c == ( (i+1) == details.size()));
            
            System.assert(bd.Subscription_Start_Date__c != null);
            System.assert(bd.Subscription_End_Date__c != null);
            // SteelBrick subscription term includes free months, but booking details term should not.
            System.assertEquals(36, bd.Subscription_Term_Months__c);
            
            System.assert(bd.Annual_Months_Accrued__c == (i*12));
            System.assert(bd.Order__c != null);
            System.assert(bd.Opportunity__c != null);
            System.assert(bd.Quote__c != null);
            System.assert(bd.Unique_Key__c != null);
            System.assertEquals(false, bd.Is_Installment__c);
            System.assert(bd.Booking_End_Date__c > bd.Booking_Start_Date__c);
            System.assert(bd.ACV__c != 0);
            
            if(bd.Is_First_Year__c){
                System.assertEquals(0.00, bd.Contracted_Renewal_ARR__c);
                System.assert(bd.Total_New_ARR__c > 0.00);
            } else {
                System.assert(bd.Contracted_Renewal_ARR__c != 0.00);
                System.assertEquals(0.00, bd.Total_New_ARR__c);
            }
        }
        Trigger_BookingDetail_Helper.bookingDetailTriggerHandler_flag = false;
        Booking_Detail__c bd = new Booking_Detail__c();
            bd.Opportunity__c = TestOpportunity.ID;
            bd.Order__c = orderList[0].ID;
            bd.Quote__c = TestQuote.ID;            
            bd.Unique_Key__c = orderList[0].ID + '1';
            insert bd;
        update bd;            
                test.stopTest();
    } 
    
    @IsTest public static void batchMigrationTests(){
        //TestData data = new TestData();
        test.startTest(); 
         Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
         
        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount.Id);
        insert testContact;
        
        ID pricebookId = Test.getStandardPricebookId();
        Product2 f1 = new Product2(
                Name = 'Free Months - 2',
                Description = 'Free Month SKU',        
                Family = 'Subscription',
                Revenue_Type__c = 'Subscription',
                ProductCode = 'Free Months - 1',
                SBQQ__SubscriptionBase__c = 'List',
                SBQQ__SubscriptionPricing__c = 'Fixed',
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionTerm__c = 1,
                SBQQ__SubscriptionType__c = 'One-time',
                IsActive = true);
        insert f1;                
                        
        
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
                       
        TestQuote.Is_Multi_Year__c = True;
        TestQuote.Term_Years__c = '3';
        TestQuote.Free_Months__c = '2';
        update TestQuote;
        
        TestQuote = (SBQQ__Quote__c)SObjectUtils.get('SBQQ__Quote__c', TestQuote.Id);
//        System.assertEquals(38, data.TestQuote.SBQQ__SubscriptionTerm__c); // 3 years = 36 months + 2 free months = 38
        // Note: Above calculation depends on Quote workflow rule to update the SubscriptionTerm.
        
        TestOpportunity = (Opportunity)SObjectUtils.get('Opportunity', TestOpportunity.Id);
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ TestOpportunity});

        String soql = 'SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order';
        BookingDetailsBatchMigrator batch = new BookingDetailsBatchMigrator(soql);
        Database.ExecuteBatch(batch);
        test.stoptest();                
    }
     @IsTest public static void basicTests2(){
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
    
    @IsTest public static void provisionBookingDetails_Test(){
        
         //Insert custom settings
        DataFactory.insertCustomSetting();
        
        ID pricebookId = Test.getStandardPricebookId();   
        
        //Insert account record
        List<Account> oacc =DataFactory.createAccountTestRecords('Test Account', 1);
        system.assertEquals(oacc.size(), 1);
        
        //Insert Contact record
        List<Contact> ocon= DataFactory.createContactTestRecords('LName', oacc[0].id, 1);
        system.assertEquals(ocon.size(), 1);
        
        //Insert Opportunity record
        List<opportunity> oppListProspect = DataFactory.createOpportunityTestRecords('Test Prospecting' , 1);
        oppListProspect[0].Type = 'New';
        oppListProspect[0].StageName = CustomConstants.OpportunityStageSentToOrders;
        update oppListProspect;
        Test.startTest();
        
        List<SBQQ__Quote__c> lstSBQuote = DataFactory.createSBQQQuote(oacc[0].Id, oppListProspect[0].Id, pricebookId, 1);
                
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ oppListProspect[0] });
        
        Order TestOrder = Database.query('SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order LIMIT 1');
               
        List<Order> orderRecords = new List<Order>();
        
        orderRecords.add(TestOrder);
        BookingDetailAction.provisionBookingDetails(orderRecords);
        
        
        SBQQ__Quote__c objQuote = new SBQQ__Quote__c(id=TestOrder.Quote__c);
        objQuote.Quote_Term_Length__c = null;
        objQuote.SBQQ__StartDate__c = null;
        update objQuote;
        Test.stopTest();
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ oppListProspect[0] });
        
        TestOrder = Database.query('SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order LIMIT 1');
        
        orderRecords = new List<Order>();
        orderRecords.add(TestOrder);
        BookingDetailAction.provisionBookingDetails(orderRecords);
    }
    
    @IsTest public static void bookingDetailsDelete_Test(){
        
         //Insert custom settings
        DataFactory.insertCustomSetting();
        
        ID pricebookId = Test.getStandardPricebookId();   
        
        //Insert account record
        List<Account> oacc =DataFactory.createAccountTestRecords('Test Account', 1);
        system.assertEquals(oacc.size(), 1);
        
        //Insert Contact record
        List<Contact> ocon= DataFactory.createContactTestRecords('LName', oacc[0].id, 1);
        system.assertEquals(ocon.size(), 1);
        
        //Insert Opportunity record
        List<opportunity> oppListProspect = DataFactory.createOpportunityTestRecords('Test Prospecting' , 1);
        oppListProspect[0].Type = 'New';
        oppListProspect[0].StageName = CustomConstants.OpportunityStageSentToOrders;
        update oppListProspect;
        Test.startTest();
        
        List<SBQQ__Quote__c> lstSBQuote = DataFactory.createSBQQQuote(oacc[0].Id, oppListProspect[0].Id, pricebookId, 1);
                
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ oppListProspect[0] });
        
        Order TestOrder = Database.query('SELECT ' + SObjectUtils.allFields('Order') + ' FROM Order LIMIT 1');
        
        oppListProspect[0].StageName = CustomConstants.OpportunityStageCW;
        update oppListProspect;
        
        List<Booking_Detail__c> bookingDetailList = DataFactory.createBookingDetail(oppListProspect[0], TestOrder, 1);
           
        delete bookingDetailList[0];
        
    }
    
}