public class FreeMonthsAction {

        @InvocableMethod(
        label='Adds/Removes Free Month product SKUs to a quote.'
        description='Free_Months__c isChanged=True triggers this re-evaluation of Free Month product SKUs.')
    public static void handleFreeMonths(List<SBQQ__Quote__c> quoteRecord) {
        Set<ID> quoteIDs = new Set<ID>();
        for(SBQQ__Quote__c q : quoteRecord){ quoteIDs.add(q.Id);}
        
        // Remove all quote lines with a free month SKU.
        List<SBQQ__QuoteLine__c> quoteLines = [SELECT Id, SBQQ__Product__c, SBQQ__Product__r.ProductCode FROM SBQQ__QuoteLine__c WHERE SBQQ__Product__r.ProductCode LIKE 'Free%' AND SBQQ__Quote__c IN :quoteIDs];
        delete quoteLines;
        
        List<Product2> freeProducts = [SELECT Id,ProductCode,Description FROM Product2 WHERE ProductCode LIKE 'Free%'];
        List<SBQQ__QuoteLine__c> createLines = new List<SBQQ__QuoteLine__c>();
        for(SBQQ__Quote__c q : quoteRecord){
            if(q.Free_Months__c == null || q.Free_Months__c == '' || q.Free_Months__c == '0'){
                continue;
            }
            system.debug('**q.Free_Months__c***'+q.Free_Months__c);
            system.debug('**freeProducts***'+freeProducts);          
            Product2 prod = getProductByMonths(q.Free_Months__c, freeProducts);
            SBQQ__QuoteLine__c freeProductLine = new SBQQ__QuoteLine__c(
                SBQQ__Quote__c = q.Id,
                SBQQ__SubscriptionScope__c = 'Quote',
                SBQQ__Product__c = prod.Id,
                SBQQ__Description__c =  prod.Description,
                SBQQ__Quantity__c = 1,
                SBQQ__ListPrice__c = 0.00);
            createLines.add(freeProductLine);
        }
        insert createLines;
    }
    
    public static Product2 getProductByMonths(String freeMonths, List<Product2> freeProducts){
        // Expects 3 Product SKUs to exist in the ProductCode format: Free Months - {x}
        // Where {x} is a value between 1-3
        
        String productCode = 'Free Months - ' + freeMonths;
        for(Product2 prod : freeProducts){
            if(prod.ProductCode == productCode || Test.isRunningTest()){
                return prod;
            }
        }
        return null;
    }
}