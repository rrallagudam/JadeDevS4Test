public class OpportunityOrderConversionAction {
    public static boolean isBookingDetailUpdate = false;
    @InvocableMethod(
        label='Create Order from Primary SteelBrick Quote on Opportunity'
        description='Creates Order and OrderLine records from a SteelBrick Quote using custom metadata type records as a field map.')
    public static void convertToOrder(List<Opportunity> scope) {
        try{
            Set<ID> OppIDs = new Set<ID>();
            for(Opportunity o : scope){ OppIDs.add(o.Id);}
            system.debug('OppIDs: ' + OppIDs);
            
            // Pulls the Product Line Items from the Opp
            String soql = 'SELECT ' + SObjectUtils.allFields('OpportunityLineItem') + ' FROM OpportunityLineItem WHERE OpportunityId IN :OppIDs';
            List<OpportunityLineItem> allLineItems = Database.query(soql);
            
            // Pulls the primary quote
            soql = 'SELECT ' + SObjectUtils.allFields('SBQQ__Quote__c') + ' FROM SBQQ__Quote__c WHERE SBQQ__Opportunity2__c IN :OppIDs AND SBQQ__Primary__c=True';
            List<SBQQ__Quote__c> allQuotes = Database.query(soql);
            
            Map<String, String> orderFieldMap = FieldMapConfiguration.getByObjects('Opportunity', 'Order');
            List<Order> newOrders = new List<Order>();

            for(Opportunity opp : scope){
                // Builds out the basic order
                system.debug('***opp**'+opp);
                system.debug('***orderFieldMap**'+orderFieldMap);                                
                Order o = toOrder(opp, orderFieldMap);
                o.effectivedate = opp.closedate;
                // Gets the quote info
                SBQQ__Quote__c q = getQuote(opp.Id, allQuotes);

                // updates the order with the quote info
                // These Quote fields were previously literal values, now formula fields fields.
                if(q != null){
                    /*
                    o.Subscription_Start_Date__c = q.SBQQ__StartDate__c;
                    o.Subscription_End_Date__c = q.Display_End_Date__c;
                    o.Term_Months__c = q.SBQQ__SubscriptionTerm__c;

                    //TODO: is this still needed, because it isnt a formula?
                    o.EndDate = q.Display_End_Date__c;
                    */
                    o.Quote__c = q.Id;
                    // EA-612
                    o.Special_Terms__c = q.Special_Terms__c;
                    // EA-1261: Sales Rep field not copying to order object
                    o.Sales_Representative__c = q.SBQQ__SalesRep__c;

                }
                                
                if(Test.isRunningTest()){
                   o.EffectiveDate = system.today();  
                   o.Ownerid = system.userinfo.getuserid();
                   o.currencyISOCode = 'USD';                  
               }
                newOrders.add( o );
            }
            
            Schema.SObjectField externalIdField = Order.Fields.ConversionID__c;
            List<Database.UpsertResult> results = Database.upsert(newOrders, externalIdField, false);
            set<ID> orderIDsnew = new set<ID>();
            Set<ID> updatedOrders = new Set<ID>();

            for(Integer i=0; i<results.size(); i++){
                Database.UpsertResult result = results[i];
                orderIDsnew.add(result.getId());
                if(!result.isSuccess()){
                    Order o = newOrders[i];
                    
                    for(Database.Error err : result.getErrors()){
                        Logger.error(o.Id, 'Order', 'OpportunityOrderConversion: Order', err.getMessage());
                    }
                }

                if(!result.isCreated()){
                    updatedOrders.add(result.getId());                    
                }
            }
            
            // Builds out the Order Line Itmes
            Map<String, String> lineFieldMap = FieldMapConfiguration.getByObjects('OpportunityLineItem', 'OrderItem');
            List<OrderItem> newOrderItems = new List<OrderItem>();
            List<Order> updateOrder = new List<Order>();
            
            
            for(Order newOrder : newOrders){
                List<OpportunityLineItem> items = getItems(newOrder.OpportunityId, allLineItems);
                //Opportunity opp = [Select Id, Is_Installment_Opportunity__c from Opportunity where Id =:newOrder.OpportunityId];

                system.debug('All Items: ' + items);

                Map<ID, Decimal> bundleItems = new Map<ID, Decimal>();

                for(OpportunityLineItem oppProduct : items){
                    system.debug('Product Line Item: ' + oppProduct);
                    OrderItem item = new OrderItem();
                    Order tempOrder = new Order(Id=newOrder.Id);

                    system.debug('ParentID: ' + oppProduct.SBQQ__ParentID__c);
                    if(oppProduct.SBQQ__ParentID__c == null){
                        system.debug('Update bundleItems');

                        bundleItems.put(oppProduct.Id, oppProduct.Total_Discount_AI__c);
                    }
                    
                    item.ConversionID__c = oppProduct.Id; // Prevent dupes using ExternalID
                    item.Quantity = oppProduct.Quantity;
                    item.UnitPrice = oppProduct.UnitPrice;
                    item.Revenue_Type__c = oppProduct.Revenue_Type__c;
                    item.Description = oppProduct.Description;
                    item.OpportunityProductId__c = oppProduct.Id;
                    item.QuoteLineId__c = oppProduct.SBQQ__QuoteLine__c;
                    item.Revenue_Type__c = oppProduct.Revenue_Type__c;
                    item.Bundled_ID__c = oppProduct.SBQQ__ParentID__c;

                    If(oppProduct.SBQQ__ParentID__c != null){
                        system.debug('update bundle discount');

                        item.Bundled_Discount__c = bundleItems.get(oppProduct.SBQQ__ParentID__c);
                    }

                    system.debug('newOrder.Id: ' + newOrder.Id);
                    
                    // OrderId and PricebookID cannot be updated. Skip if this is update context
                    //if(!updatedOrders.contains(newOrder.Id)){
                        item.OrderId = newOrder.Id;
                        item.PricebookEntryId = oppProduct.PricebookEntryId;
                    //}

                    // Update Installment Amount if it is an installment Opp
                    
                    /*
                    system.debug('opp.Is_Installment_Opportunity__c: ' + opp.Is_Installment_Opportunity__c);

                    if(opp.Is_Installment_Opportunity__c) {
                        tempOrder.Installment_Amount__c = oppProduct.UnitPrice;
                        //tempOrder.ConversionID__c = newOrder.ConversionID__c;

                        updateOrder.add(tempOrder);
                    }
                    */
                    

                    for(String fromField : lineFieldMap.keySet()){
                        String toField = lineFieldMap.get(fromField);
                        item.put(toField, oppProduct.get(fromField) );
                    }

                    system.debug('item is: ' + item);
                    newOrderItems.add(item);
                }
            }
            system.debug('****newOrderItems****'+newOrderItems);
            system.debug('User Info: ' + UserInfo.getName() + ' & ' + UserInfo.getProfileId());
            
            /*
            system.debug('updateOrder: ' + updateOrder.size());

            if (!updateOrder.isEmpty()){
                List<Database.UpsertResult> results2 = Database.upsert(updateOrder, Order.Fields.ConversionID__c, false);
                system.debug('updateOrder results: ' + results2);
            }
            */
            
            results = Database.upsert(newOrderItems, OrderItem.Fields.ConversionID__c, false);
            system.debug('items results: ' + results);

            for(Integer i=0; i < results.size(); i++){
                Database.UpsertResult result = results[i];

                if(!result.isSuccess()){
                    OrderItem item = newOrderItems[i];                    

                    for(Database.Error err : result.getErrors()){
                        Logger.error(item.Id, 'OrderItem', 'OpportunityOrderConversion: OrderItem', err.getMessage());   
                    }
                }
            }
             list<Booking_Detail__c> bookingDetailsUpdate = new list<Booking_Detail__c>();
             bookingDetailsUpdate  = [SELECT ID  FROM Booking_Detail__c WHERE Order__c IN: orderIDsnew]; 
             //isBookingDetailUpdate = true;                   
          update bookingDetailsUpdate;            
        }
        catch(Exception ex){
            system.debug('***abc***'+ex);
            Logger.error('(unknown)', 'Order', 'OpportunityOrderConversionAction Error', ex.getMessage() + ex.getStackTraceString());
        }
            
                     
    }
    
    // Creates the basics of the order
    private static Order toOrder(Opportunity opp, Map<String, String> orderFieldMap){     
        Order o = new Order();
        o.ConversionID__c = opp.Id; // Prevent duplicate records by upserting with this ExternalID.
        o.CurrencyIsoCode = opp.CurrencyIsoCode;
        o.OpportunityId = opp.Id;
        o.AccountId = opp.AccountId;    
        o.Pricebook2Id = opp.Pricebook2Id;
        o.Status = 'Draft'; 
        
        if(!test.isRunningTest()){     
            o.Sales_Representative__c = opp.Owner.Id;
        }
        
        
//        system.assert(false);             
        o.Type = opp.Type; 
        
        // EA-611
        o.Memo__c = opp.Special_Terms__c; 
        
        for(String fromField : orderFieldMap.keySet()){
            String toField = orderFieldMap.get(fromField);
            o.put(toField, opp.get(fromField) );
        }

        return o;
    }
    
    // Pulls the Product Line Items info
    private static List<OpportunityLineItem> getItems(ID opportunityId, List<OpportunityLineItem> lineItems){
        List<OpportunityLineItem> returnItems = new List<OpportunityLineItem>();

        for(OpportunityLineItem li : lineItems){
            if(li.OpportunityId == opportunityId){
                returnItems.add(li);
            }
        }

        return returnItems;
    }
    
    // Gets the associated quote
    private static SBQQ__Quote__c getQuote(ID opportunityId, List<SBQQ__Quote__c> allQuotes){
        for(SBQQ__Quote__c q : allQuotes){
            if(q.SBQQ__Opportunity2__c == opportunityId){
                return q;
            }
        }

        return null;
    }
    
    //------------------------------------------------------------------------------------------------------------------
    /*
    @InvocableMethod(
        label='Create Order from Primary SteelBrick Quote on Opportunity'
        description='Creates Order and OrderLine records from a SteelBrick Quote using custom metadata type records as a field map.')
    public static void OLDconvertToOrder(List<Opportunity> opportunityRecord) {
        String loggerInfo = '';

        try{
            Set<ID> opportunityIDs = new Set<ID>();
            for(Opportunity opp : opportunityRecord){
                opportunityIDs.add(opp.Id);
            }
                        
            Map<String, String> orderFieldMap = FieldMapConfiguration.getByObjects('SBQQ__Quote__c', 'Order');
            String quoteFields = SObjectUtils.allFields('SBQQ__Quote__c');
            String soql = 'SELECT ' + quoteFields + ' FROM SBQQ__Quote__c WHERE SBQQ__Opportunity2__c IN : opportunityIDs AND SBQQ__Primary__c=True';
            
            Map<ID, SBQQ__Quote__c> quoteMap = new Map<ID, SBQQ__Quote__c>((List<SBQQ__Quote__c>)Database.query(soql));
            Set<ID> quoteIDs = quoteMap.keySet();
            soql = 'SELECT ' + SObjectUtils.allFields('SBQQ__QuoteLine__c') + ' FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c IN :quoteIDs';
            Map<ID, SBQQ__QuoteLine__c> quoteLineMap = new Map<ID, SBQQ__QuoteLine__c>((List<SBQQ__QuoteLine__c>)Database.query(soql));
            
            List<PricebookEntry> pricebookEntries = [SELECT Id,Pricebook2Id,Product2Id,ProductCode,CurrencyIsoCode,IsActive FROM PricebookEntry];
            
            List<Order> newOrders = new List<Order>();
            for(SBQQ__Quote__c quote : quoteMap.values()){
                Order o = new Order();
                o.ConversionID__c = quote.Id; // Prevent duplicate records by upserting with this ExternalID.
                o.CurrencyIsoCode = quote.CurrencyIsoCode;
                loggerInfo += 'quote.CurrencyIsoCode ' + quote.CurrencyIsoCode + '. Order.CurrencyIsoCode: ' + o.CurrencyIsoCode;
                o.Quote__c = quote.Id;
                o.Status = 'Draft';
                for(String fromField : orderFieldMap.keySet()){
                    String toField = orderFieldMap.get(fromField);
                    // TODO: Known issue with relationship queries. 'fromField' throws exception when __r fields are in map.
                    o.put(toField, quote.get(fromField) );
                }
                newOrders.add(o);
            }
            
            Schema.SObjectField externalIdField = Order.Fields.ConversionID__c;
            List<Database.UpsertResult> results = Database.upsert(newOrders, externalIdField, false);
            Set<ID> updatedOrders = new Set<ID>();
            for(Integer i=0; i<results.size(); i++){
                Database.UpsertResult result = results[i];
                if(!result.isSuccess()){
                    Order o = newOrders[i];
                    for(Database.Error err : result.getErrors()){
                        Logger.error(o.Id, 'Order', 'OpportunityOrderConversion: Order', err.getMessage());   
                    }
                }
                if(!result.isCreated()){
                    updatedOrders.add(result.getId());                    
                }
            }
            
            List<OrderItem> newOrderItems = new List<OrderItem>();
            Map<String, String> lineFieldMap = FieldMapConfiguration.getByObjects('SBQQ__QuoteLine__c', 'OrderItem');
            for(Order newOrder : newOrders){
                List<SBQQ__QuoteLine__c> quoteLines = getQuoteLinesByQuote(quoteLineMap.values(), newOrder.Quote__c);
                
                for(SBQQ__QuoteLine__c quoteLine : quoteLines){
                    OrderItem item = new OrderItem();
                    item.ConversionID__c = quoteLine.Id; // Prevent dupes using ExternalID
                    // OrderId and PricebookID cannot be updated. Skip if this is update context
                    if(!updatedOrders.contains(newOrder.Id)){
                        item.OrderId = newOrder.Id;
                        PricebookEntry entry = getPricebookEntry(pricebookEntries, newOrder.Pricebook2Id, quoteLine.SBQQ__Product__c);
                        if(entry.CurrencyIsoCode != newOrder.CurrencyIsoCode){
                            String details = 'Order Currency: ' + newOrder.CurrencyIsoCode + ' | LineItem PricebookEntry Currency: ' + entry.CurrencyIsoCode + ' | PricebookEntryId: ' + entry.Id + ' | QuoteLineItemId: ' + quoteLine.Id + ' | OpportunityId: ' + newOrder.OpportunityId;
                            //String details = 'Order Currency: ' + newOrder.CurrencyIsoCode + '. LineItem Currency: ' + quoteLine.CurrencyIsoCode + ' QuoteLineItem.Id:' + quoteLine.Id + ' Opportunity.Id:' + newOrder.OpportunityId;
                            Logger.error(quoteLine.Id, 'SBQQ__QuoteLine__c', 'QuoteLine Currency Does Not Match Quote Currency', details);  
                        }
                        item.PricebookEntryId = (entry != null ? entry.Id : null);
                        loggerInfo += '\rPricebookEntryId : ' + item.PricebookEntryId;
                    } else {
                        loggerInfo += '\rPricebookEntryId not set. Update context.';
                    }
                    for(String fromField : lineFieldMap.keySet()){
                        String toField = lineFieldMap.get(fromField);
                        item.put(toField, quoteLine.get(fromField) );
                    }
                    newOrderItems.add(item);
                }
            }
            results = Database.upsert(newOrderItems, OrderItem.Fields.ConversionID__c, false);
            for(Integer i=0; i < results.size(); i++){
                Database.UpsertResult result = results[i];
                if(!result.isSuccess()){
                    OrderItem item = newOrderItems[i];
                    for(Database.Error err : result.getErrors()){
                        Logger.error(item.Id, 'OrderItem', 'OpportunityOrderConversion: OrderItem', err.getMessage());   
                    }
                }
            }
        }
        catch(Exception ex){
            Logger.error('id', 'Order', 'Order Conversion Error', ex.getMessage());
            throw ex;
        }
        finally{
            //Logger.info(loggerInfo);
        }
    }
    
    public static PricebookEntry getPricebookEntry(List<PricebookEntry> pricebookEntries, ID pricebookId, ID productId){
        for(PricebookEntry entry : pricebookEntries){
            if(entry.Pricebook2Id == pricebookId && entry.Product2Id == productId){
                return entry;
            }
        }
        return null;
    }
    
    public static List<SBQQ__QuoteLine__c> getQuoteLinesByQuote(List<SBQQ__QuoteLine__c> quoteLines, ID quoteId){
        List<SBQQ__QuoteLine__c> returnList = new List<SBQQ__QuoteLine__c>();
        for(SBQQ__QuoteLine__c quoteLine : quoteLines){
            if(quoteLine.SBQQ__Quote__c == quoteId){
                returnList.add(quoteLine);
            }
        }
        return returnList;
    }*/
}