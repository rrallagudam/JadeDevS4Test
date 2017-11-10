public with sharing class MigrationUtils {
    /*
    Method for creating default standard pricebook entries
    */
    public static List<PricebookEntry> CreateDefaultPricebookEntries(ID pricebookId){
        List<PricebookEntry> pbEntryList = new List<PricebookEntry>();
        
        List<Product2> productList = [SELECT Id, Name FROM Product2 WHERE IsActive=True];
        for(Product2 prod : productList){
            PricebookEntry entry = new PricebookEntry();
            entry.Pricebook2Id = pricebookId;
            entry.Product2Id = prod.Id;
            entry.UnitPrice = 0.0;
            pbEntryList.add(entry);
        }
        insert pbEntryList;
        return pbEntryList;
    }
    
    public static List<Product2> updateProductFamily(){
        List<Product2> products = [SELECT Id,SBQQ__SubscriptionBase__c,SBQQ__SubscriptionPricing__c,SBQQ__SubscriptionCategory__c,SBQQ__SubscriptionTerm__c,SBQQ__SubscriptionType__c,Revenue_Type__c,Family FROM Product2];
        for(Product2 prod : products){
            if(prod.Revenue_Type__c == 'Subscription'){
                prod.Family = 'Subscription';
                prod.SBQQ__SubscriptionBase__c = 'List';
                prod.SBQQ__SubscriptionPricing__c = 'Fixed';
                prod.SBQQ__SubscriptionCategory__c = 'Software';
                prod.SBQQ__SubscriptionTerm__c = 12;
                prod.SBQQ__SubscriptionType__c = 'Renewable';
            } else {
                prod.Family = 'Service';
                prod.SBQQ__SubscriptionBase__c = null;
                prod.SBQQ__SubscriptionPricing__c = null;
                prod.SBQQ__SubscriptionCategory__c = null;
                prod.SBQQ__SubscriptionTerm__c = null;
                prod.SBQQ__SubscriptionType__c = null;
            }
        }
        update products;
        return products;
    }
    
    public static List<Product2> updateProductSubscriptionFields(){
        List<Product2> products = [SELECT Id,SBQQ__SubscriptionBase__c,SBQQ__SubscriptionPricing__c,SBQQ__SubscriptionCategory__c,SBQQ__SubscriptionTerm__c,SBQQ__SubscriptionType__c FROM Product2 WHERE Revenue_Type__c='Subscription'];
        for(Product2 prod : products){
            prod.SBQQ__SubscriptionBase__c = 'List';
            prod.SBQQ__SubscriptionPricing__c = 'Fixed';
            prod.SBQQ__SubscriptionCategory__c = 'Software';
            prod.SBQQ__SubscriptionTerm__c = 12;
            prod.SBQQ__SubscriptionType__c = 'Renewable';
        }
        update products;
        return products;
    }
    
    public static List<Product2> provisionDiscountProducts(){
        List<Product2> discountProducts = new List<Product2>();
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
        discountProducts.add(f1);
        
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
        discountProducts.add(f2);
        
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
        discountProducts.add(f3);
        
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
        discountProducts.add(d2);
        
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
        discountProducts.add(d3);
        
        insert discountProducts;
        return discountProducts;
    }
    
    public static void cleanAccount(ID accountID){
        List<Opportunity> opportunityList = [SELECT Id FROM Opportunity WHERE AccountId=:accountID];        
        delete opportunityList;
        
        List<Contract> contractList = [SELECT Id,AccountId FROM Contract WHERE AccountId=:accountID];
        delete contractList;
        /*
        List<Booking_Detail__c> bookingDetails = [SELECT Id, Opportunity__c,Opportunity__r.AccountId FROM Booking_Detail__c WHERE Opportunity__r.AccountId=:accountId];
        delete bookingDetails;
        */
        List<SBQQ__Subscription__c> subscriptionList = [SELECT Id,SBQQ__Account__c FROM SBQQ__Subscription__c WHERE SBQQ__Account__c=:accountID];
        delete subscriptionList;
        
        List<SBQQ__Quote__c > quoteList = [SELECT Id,SBQQ__Account__c FROM SBQQ__Quote__c WHERE SBQQ__Account__c=:accountID];
        delete quoteList;
        
        List<SBQQ__QuoteLine__c> quoteLineList = [SELECT Id,SBQQ__Quote__r.SBQQ__Account__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__r.SBQQ__Account__c=:accountID];
        delete quoteLineList;
    }
    
    /*
     * Many fields on Product/Pricebook objects cannot be updated.
     * This method purges all Product related data prior to a re-import.
     */
    public static void purgeProducts(){
        List<OpportunityLineItem> lineItems = [SELECT Id FROM OpportunityLineItem];
        DELETE lineItems;
                                
        List<Opportunity> opportunities = [SELECT Id FROM Opportunity];
        DELETE opportunities;
        
        List<PricebookEntry> pricebookEntries = [SELECT Id FROM PricebookEntry];
        DELETE pricebookEntries;
        
        List<Pricebook2> pricebooks = [SELECT Id FROM Pricebook2];
        DELETE pricebooks;
        
        List<Product2> products = [SELECT Id FROM Product2];
        DELETE products;
    }
}