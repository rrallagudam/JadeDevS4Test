public class MultiYearDiscountAction {
        @InvocableMethod(
        label='Adds/Removes MultiYear discount line items to a quote.'
        description='Quote.Term_Years__c isChanged=True triggers this re-evaluation of multi-year discount product SKUs.')
    public static void handleMultiYearDiscount(List<SBQQ__Quote__c> quoteRecord) {        
        Set<ID> quoteIDs = new Set<ID>();
        for(SBQQ__Quote__c q : quoteRecord){ 
            //Logger.info(q.Id, 'Quote', 'Entering Multi-Year discount action', '');
            quoteIDs.add(q.Id);
        }
                
        // Get all quote lines with a multi-year SKU.
        String PRODUCT_CODE_MATCH = 'MYD%';
        List<SBQQ__QuoteLine__c> allQuoteLines = [SELECT Id, SBQQ__Quote__c,SBQQ__Product__c,SBQQ__Quantity__c,SBQQ__ListPrice__c,SBQQ__Product__r.ProductCode FROM SBQQ__QuoteLine__c WHERE SBQQ__Product__r.ProductCode LIKE :PRODUCT_CODE_MATCH AND SBQQ__Quote__c IN :quoteIDs];
        
        List<Product2> discountProducts = [SELECT Id, ProductCode FROM Product2 WHERE IsActive=True AND ProductCode LIKE :PRODUCT_CODE_MATCH];
        List<SBQQ__QuoteLine__c> updateLines = new List<SBQQ__QuoteLine__c>();
        List<SBQQ__QuoteLine__c> createLines = new List<SBQQ__QuoteLine__c>();
        List<SBQQ__QuoteLine__c> deleteLines = new List<SBQQ__QuoteLine__c>();
        for(SBQQ__Quote__c q : quoteRecord){
            SBQQ__QuoteLine__c discountLine = getDiscountLine(q, allQuoteLines);
                        
            if( quoteQualifiesForDiscount(q) == false ){
                if(discountLine != null){
                    deleteLines.add(discountLine);
                }
                continue;
            }
            
            // Quote qualifies for a multi-year discount.
            // Determine if an existing QuoteLine needs updating, or new one needs creating.
            double discountAmount = 0.0;
            if(q.Term_Years__c == '2'){
                discountAmount = q.Year_2_Discount_Amount__c;
                //Logger.info(q.Id, 'Quote', 'Applying Year 2 Discount', 'Discount amount = ' + q.Year_2_Discount_Amount__c);
            }
            else if(q.Term_Years__c == '3'){
                discountAmount = q.Year_3_Discount_Amount__c;
                //Logger.info(q.Id, 'Quote', 'Applying Year 3 Discount', 'Discount amount = ' + q.Year_3_Discount_Amount__c);
            }
            discountAmount = 1 - (discountAmount + 1); // Create a negative amount. Adds 1 to correct for one-off rounding error.
            
            if(discountLine != null && quoteTermMatchesDiscountLine(q, discountLine)){
                discountLine.SBQQ__ListPrice__c = discountAmount;
                //Logger.info(discountLine.Id, 'QuoteLineItem', 'Updating existing QuoteLine', 'DiscountAmount = ' + discountAmount);
                updateLines.add(discountLine);
                continue;
            }
            // Term of quote has changed. Delete this discount line and create a new one.
            if(discountLine != null){
                //Logger.info(discountLine.Id, 'QuoteLineItem', 'Deleting existing QuoteLine', 'Term changed. Deleting existing line item');
                deleteLines.add(discountLine);
            }
            
            System.debug('Quote Term: ' + q.Term_Years__c);
            // Create a new line item
            SBQQ__QuoteLine__c newDiscountLine = new SBQQ__QuoteLine__c(
                SBQQ__Quote__c = q.Id,
                SBQQ__SubscriptionScope__c = 'Quote',
                SBQQ__Product__c = getProductByTerm(q.Term_Years__c, discountProducts),
                SBQQ__Quantity__c = 1,
                SBQQ__ListPrice__c = discountAmount);
            createLines.add(newDiscountLine);
            Logger.info(q.Id, 'QuoteLineItem', 'Creating a new QuoteLineItem', 'DiscountAmount = ' + discountAmount);
            System.debug(newDiscountLine);
        }
        
        if(createLines.size() > 0){
            System.debug('Inserting ' + createLines.size() + ' lines');
            insert createLines;
        }
        if(updateLines.size() > 0){
            System.debug('Updating ' + updateLines.size() + ' lines');
            update updateLines;    
            List<Database.SaveResult> results = Database.update(updateLines);
            Integer record=0;
            for(Database.SaveResult result : results){
                if(!result.Success){                    
                    for(Database.Error err : result.getErrors()) {
                        Logger.error(result.getId(), 'QuoteLineItem', 'QuoteLine Update Error', err.getMessage() );
                        //System.debug(err.getStatusCode() + ': ' + err.getMessage());
                        //System.debug('Account fields that affected this error: ' + err.getFields());
                    }
                } else {
                    SBQQ__QuoteLine__c ql = updateLines[record];
                    //Logger.info(ql.Id, 'QuoteLineItem', 'QuoteLineItem updated', 'QuoteLineItem.SBQQ__ListPrice__c=' + ql.SBQQ__ListPrice__c + ' QuoteLineItem.SBQQ__Quantity__c=' + ql.SBQQ__Quantity__c);
                }
                record++;
            }
        }
        if(deleteLines.size() > 0){
            System.debug('Deleting ' + deleteLines.size() + ' lines');
            delete deleteLines;    
        }
    }
    
    public static boolean quoteQualifiesForDiscount(SBQQ__Quote__c q){
        boolean qualifies = true;
        if(q.Term_Years__c == null || q.Term_Years__c == ''){
            qualifies = false;
        }
        else if( Integer.valueOf(q.Term_Years__c) < 2 ){
            qualifies = false;
        }
        else if(q.Is_Multi_Year__c == false){
            qualifies = false;
        }
        else if(q.Term_Years__c == '2' && (q.Year_2_Discount__c == null || q.Year_2_Discount__c == 0.0)){
            qualifies = false;
        }
        else if(q.Term_Years__c == '3' && (q.Year_3_Discount__c == null || q.Year_3_Discount__c == 0.0)){
            qualifies = false;
        }
        return qualifies;
    }
    
    public static boolean quoteTermMatchesDiscountLine(SBQQ__Quote__c quote, SBQQ__QuoteLine__c quoteLine){
        return quoteLine.SBQQ__Product__r.ProductCode.contains(quote.Term_Years__c);
    }
    
    public static SBQQ__QuoteLine__c getDiscountLine(SBQQ__Quote__c quote, List<SBQQ__QuoteLine__c> quoteLines){
        List<SBQQ__QuoteLine__c> returnLines = new List<SBQQ__QuoteLine__c>();
        for(SBQQ__QuoteLine__c line : quoteLines){
            if(line.SBQQ__Quote__c == quote.Id){
                returnLines.add(line);
            }
        }
        if(returnLines.size() > 0){
            return returnLines[0];
        } else {
            return null;
        }
    }
    
   /* Expects 2 Product SKUs to exist in the ProductCode format: MYD{x}
    * Where {x} is a value between 2-3
    */
    public static ID getProductByTerm(String term, List<Product2> discountProducts){
        String productCode = 'MYD' + term;
        for(Product2 prod : discountProducts){
            if(prod.ProductCode == productCode){
                return prod.Id;
            }
        }
        return null;
    }
}