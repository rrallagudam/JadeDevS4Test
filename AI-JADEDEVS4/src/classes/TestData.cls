public with sharing class TestData {
    public Campaign TestCampaign;
    public Account TestAccount;
    public Event TestEvents;        
    public Task TestTasks;    
    public Contact TestContact;
    public Lead TestLead;
    public ID TestPricebookID;
    public List<PricebookEntry> TestPricebookEntries;
    public List<Product2> TestProducts;
    public Opportunity TestOpportunity;
    public SBQQ__Quote__c TestQuote;
    public List<SBQQ__QuoteLine__c> TestQuoteLines;
    public List<SBQQ__Subscription__c> TestSubscriptions;
    public Contract TestContract;
    public List<Territory__c> TestTerritories;
    public List<Area__c> TestAreas;
    public List<Territory_Area__c> TestTerritoryAreas;
    public List<Industry_Classification__c> TestIndustryClassifications;    
    
    public TestData() {
        TestPricebookID = Test.getStandardPricebookId();
        
        String soql = 'SELECT ' + SObjectUtils.allFields('Campaign') + ' FROM Campaign LIMIT 1';
        TestCampaign = Database.query(soql);

        soql = 'SELECT ' + SObjectUtils.allFields('Account') + ' FROM Account LIMIT 1';
        TestAccount = Database.query(soql);

        soql = 'SELECT ' + SObjectUtils.allFields('Contact') + ' FROM Contact LIMIT 1';
        TestContact = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('Lead') + ' FROM Lead LIMIT 1';
        TestLead = Database.query(soql);

        soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity LIMIT 1';
        TestOpportunity = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('SBQQ__Quote__c') + ',SBQQ__Account__r.Name,SBQQ__Account__r.Id FROM SBQQ__Quote__c LIMIT 1';
        TestQuote = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('SBQQ__QuoteLine__c') + ',SBQQ__Quote__r.SBQQ__MasterContract__c FROM SBQQ__QuoteLine__c';
        TestQuoteLines = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('Product2') + ' FROM Product2';
        TestProducts = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('PricebookEntry') + ' FROM PricebookEntry';
        TestPricebookEntries = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('Contract') + ' FROM Contract LIMIT 1';
        TestContract = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('SBQQ__Subscription__c') + ' FROM SBQQ__Subscription__c';
        TestSubscriptions = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('Territory__c') + ' FROM Territory__c';
        TestTerritories = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('Area__c') + ' FROM Area__c';
        TestAreas = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('Territory_Area__c') + ' FROM Territory_Area__c';
        TestTerritoryAreas = Database.query(soql);

        soql = 'SELECT ' + SObjectUtils.allFields('Industry_Classification__c') + ' FROM Industry_Classification__c';
        TestIndustryClassifications = Database.query(soql);
    }

    public static void setup(){
        initTriggerSettings();
        Campaign testCampaign = new Campaign(Name='Test Campaign');
        insert testCampaign;

        Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
         
        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount.Id);
        insert testContact;
            
        Lead testLead = new Lead(Company='Test Company',
                        FirstName = 'LeadFName',
                        LastName='LeadLName',
                        Email='leadunit@test.com');
        insert testLead;
                
        ID pricebookId = Test.getStandardPricebookId();
        
        final Integer SERVICE_PRODUCT = 0;
        List<Product2> testProducts = new List<Product2>();
        Product2 serviceProduct = new Product2(
                Name = 'Service',
                Description = 'Test services product',        
                Family = 'Service',
                Revenue_Type__c = 'Service',
                ProductCode = 'TEST-SERVICE',
                IsActive = true);
        testProducts.add(serviceProduct);
        
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
        
        List<PricebookEntry> pbEntries = new List<PricebookEntry>();
        for(Product2 testProd : testProducts){
            PricebookEntry entry = new PricebookEntry(
                    IsActive = true,
                    Pricebook2Id = pricebookId,
                    Product2Id = testProd.Id,
                    UnitPrice = 100.00);
            pbEntries.add(entry);
        }
        insert pbEntries; // TODO: This throws UNABLE_TO_LOCK_ROW exception in unit tests.
        
        Opportunity testOpportunity = new Opportunity(Name='Test Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Prospecting',
                    Pricebook2Id=pricebookId,
                    CloseDate=Date.Today().AddDays(90),
                    SBQQ__Contracted__c = false,
                    Closed_Reasons__c = 'Other',
                    Type = 'New Business');
        insert testOpportunity;
        
        list<Event> otestEvents = new list<Event>();
        list<Task> otesttasks = new list<Task>();
        
        otestEvents.add( new Event(ActivityDateTime=system.now(),DurationInMinutes=25, whatID=testAccount.ID,Subject='test Subject'));        
        otestEvents.add( new Event(ActivityDateTime=system.now(),DurationInMinutes=25, whoid=testContact.ID,Subject='test Subject'));
        otestEvents.add( new Event(ActivityDateTime=system.now(),DurationInMinutes=25, whatID=testOpportunity.ID,Subject='test Subject'));        
        
        otesttasks.add( new Task(Priority='low',status='new', whatID=testAccount.ID,Subject='test Subject'));        
        otesttasks.add( new Task(Priority='low',status='new', whoid=testContact.ID,Subject='test Subject'));
        otesttasks.add( new Task(Priority='low',status='new', whatID=testOpportunity.ID,Subject='test Subject'));        
         insert otestEvents;
         insert otesttasks;      
        
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
                SBQQ__Product__c = testProducts[SERVICE_PRODUCT].Id,
                SBQQ__Quantity__c = 1,
                SBQQ__ListPrice__c = 100.00);
        quoteLines.add(serviceLine);
        
        SBQQ__QuoteLine__c subscriptionLine = new SBQQ__QuoteLine__c(        
                SBQQ__Quote__c = testQuote.Id,
                SBQQ__Product__c = testProducts[SUBSCRIPTION_PRODUCT].Id,
                SBQQ__Quantity__c = 25,
                SBQQ__SubscriptionCategory__c = 'Software',
                SBQQ__SubscriptionPricing__c = 'Fixed Price',
                SBQQ__DefaultSubscriptionTerm__c = 12,
                SBQQ__SubscriptionTerm__c = 12,
                SBQQ__ListPrice__c = 100.00);
        quoteLines.add(subscriptionLine);
        insert quoteLines;
        
        SBQQ__QuoteTemplate__c quoteTemplate = new SBQQ__QuoteTemplate__c();
        quoteTemplate.Name = 'Order Template';
        insert quoteTemplate;
        
        SBQQ__QuoteDocument__c quoteDoc = new SBQQ__QuoteDocument__c(
            SBQQ__QuoteTemplate__c = quoteTemplate.Id,
            SBQQ__Quote__c = testQuote.Id,
            SBQQ__Opportunity__c = testOpportunity.Id
            );
        insert quoteDoc;
        
        Contract tContract = new Contract(
                AccountId = testAccount.Id,
                ContractTerm = 12,
                StartDate = Date.today(),
                SBQQ__Opportunity__c = testOpportunity.Id,
                SBQQ__Quote__c = testQuote.Id,
                Status = 'Draft'
            );
        insert tContract;
        
        List<SBQQ__Subscription__c> subscriptions = new List<SBQQ__Subscription__c>();
        SBQQ__Subscription__c sub1 = new SBQQ__Subscription__c();
        sub1.SBQQ__Contract__c = tContract.Id;
        sub1.SBQQ__Quantity__c = 25;
        sub1.SBQQ__NetPrice__c = 2500.00;
        sub1.SBQQ__Product__c = testProducts[SUBSCRIPTION_PRODUCT].Id;
        subscriptions.add(sub1);
        
        SBQQ__Subscription__c sub2 = new SBQQ__Subscription__c();
        sub2.SBQQ__Contract__c = tContract.Id;        
        sub2.SBQQ__Quantity__c = 1;
        sub2.SBQQ__NetPrice__c = 100.00;
        
        subscriptions.add(sub2);
        insert subscriptions;
        
        List<Territory__c> territoryList = new List<Territory__c>();
        Territory__c westTerritory = new Territory__c();
        westTerritory.Name = 'West';
        westTerritory.Type__c = 'Lead';
        westTerritory.User__c = UserInfo.getUserId();
        westTerritory.Owner_Role__c = 'SDR';
        //westTerritory.Revenue_Band__C = 'Below $100M';
        territoryList.add(westTerritory);                
        
        Territory__c eastTerritory = new Territory__c();
        eastTerritory.Name = 'East';
        eastTerritory.Type__c = 'Lead';
        eastTerritory.User__c = UserInfo.getUserId();
        eastTerritory.Owner_Role__c = 'SDR';
        //eastTerritory.Revenue_Band__C = 'Above $100M';
        territoryList.add(eastTerritory);
        
        insert territoryList;
        
        List<Area__c> areaList = new List<Area__c>();
        Integer MAX_ZIP_CODES = 5;
        Integer BASE_ZIP_CODE = 10000;
        for(Integer i = 0; i < MAX_ZIP_CODES; i++){
            Area__c areaRecord = new Area__c();
            areaRecord.Active__c = true;
            areaRecord.Name = String.valueOf(BASE_ZIP_CODE + i);
            areaRecord.ZipCode__c = String.valueOf(BASE_ZIP_CODE + i);
            areaRecord.Key__c = 'Lead:' + areaRecord.ZipCode__c; 
            areaList.add(areaRecord);
        }
        
        BASE_ZIP_CODE = 50000;
        for(Integer i = 0; i < MAX_ZIP_CODES; i++){
            Area__c areaRecord = new Area__c();
            areaRecord.Active__c = true;
            areaRecord.Name = String.valueOf(BASE_ZIP_CODE + i);
            areaRecord.ZipCode__c = String.valueOf(BASE_ZIP_CODE + i);
            areaRecord.state__c = 'CA';
            areaRecord.Key__c = 'Lead:' + areaRecord.ZipCode__c; 
            areaList.add(areaRecord);
        }
        
        insert areaList;
        
        List<Territory_Area__c> territoryAreaList = new List<Territory_Area__c>();
        for(Area__c a : areaList){
            Territory_Area__c tArea = new Territory_Area__c();
            tArea.Area__c = a.Id;
            tArea.Key__c = 'Lead:' + a.Id;
            
            if(a.ZipCode__c.startsWith('1')){
                tArea.Territory__c = eastTerritory.Id;
            } else {
                tArea.Territory__c = westTerritory.Id;
            }
            if(a.ZipCode__c.Equals('50002') || a.ZipCode__c.Equals('50004')){
                tArea.Territory__c = eastTerritory.Id;
            }
            if(a.ZipCode__c.Equals('50003') || a.ZipCode__c.Equals('50005')){
                tArea.Territory__c = westTerritory.Id;
            }
            territoryAreaList.add(tArea);
        }
        insert territoryAreaList;

        List<Industry_Classification__c> industryList = new List<Industry_Classification__c>();
            Industry_Classification__c testClassi = new Industry_Classification__c();            
                testClassi.NAICS_Code__c = '01238';
                testClassi.NAICS_Description__c = 'Wheat Farming';
                testClassi.Adaptive_Industry__c = 'Agriculture, Forestry, Fishing';                        
                industryList.add(testClassi);
            insert industryList;
                
    }
    
    public static List<Product2> getProductsByFamily(String family){
        return [SELECT Id, Name FROM Product2 WHERE Family=:family];
    }
    
    public static void initTriggerSettings(){
        List<TriggerSettings__c> settingsList = TriggerSettings__c.getall().values();
        if(settingsList != null && settingsList.size() > 0){
            return;
        }
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
        insert settings;
    }
}