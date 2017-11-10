/*
 * Converts Opportunities to Orders.
 * Intended for one-time use during data migration. #Davinci
 */
public class OrderMigrationStrategy implements IOpportunityMigrationStrategy {

    public void Migrate(List<Opportunity> scope){
        boolean hasErrors = false;
        Set<ID> OppIDs = new Set<ID>();
        for(Opportunity o : scope){ OppIDs.add(o.Id);}
        String soql = 'SELECT ' + SObjectUtils.allFields('OpportunityLineItem') + ' FROM OpportunityLineItem WHERE OpportunityId IN :OppIDs';
        List<OpportunityLineItem> allLineItems = Database.query(soql);
        
        soql = 'SELECT ' + SObjectUtils.allFields('SBQQ__Quote__c') + ' FROM SBQQ__Quote__c WHERE SBQQ__Opportunity2__c IN :OppIDs';
        List<SBQQ__Quote__c> allQuotes = Database.query(soql);
        
        List<Order> newOrders = new List<Order>();
        for(Opportunity opp : scope){
            MigrationResult r = validate(opp);
            if(!r.Success){
                hasErrors = true;
                Logger.error('OrderMigrationStrategy', r);
                opp.Migration_Success__c = false;
                opp.Migration_Notes__c = 'OrderMigrationStrategy error: ' + r.Message;
                continue;
            }
            
            Order o = toOrder(opp);
            SBQQ__Quote__c q = getQuote(opp.Id, allQuotes);
            if(q != null){
                o.Quote__c = q.Id;
            }
            newOrders.add( o );
        }
        
        Schema.SObjectField externalIdField = Order.Fields.ConversionID__c;
        List<Database.UpsertResult> results = Database.upsert(newOrders, externalIdField, false);
        Set<ID> updatedOrders = new Set<ID>();
        for(Integer i=0; i<results.size(); i++){
            Database.UpsertResult result = results[i];
            if(!result.isSuccess()){
                Order o = newOrders[i];
                for(Database.Error err : result.getErrors()){
                    Logger.error(o.Id, 'Order', 'OrderMigrationStrategy: Order', err.getMessage());   
                }
            }
            if(!result.isCreated()){
                updatedOrders.add(result.getId());                    
            }
        }
        
        List<OrderItem> newOrderItems = new List<OrderItem>();
        for(Order newOrder : newOrders){
            List<OpportunityLineItem> items = getItems(newOrder.OpportunityId, allLineItems);
            for(OpportunityLineItem oppProduct : items){
                OrderItem item = new OrderItem();
                item.ConversionID__c = oppProduct.Id; // Prevent dupes using ExternalID
                // OrderId and PricebookID cannot be updated. Skip if this is update context
                if(!updatedOrders.contains(newOrder.Id)){
                    item.OrderId = newOrder.Id;
                    item.PricebookEntryId = oppProduct.PricebookEntryId;
                }
                item.Quantity = oppProduct.Quantity;
                item.UnitPrice = oppProduct.ARCHIVE_Net_Unit_Price__c;
                item.Revenue_Type__c = oppProduct.Revenue_Type__c;
                item.Description = oppProduct.Description;
                item.OpportunityProductId__c = oppProduct.Id;
                item.QuoteLineId__c = oppProduct.SBQQ__QuoteLine__c; // Informational only. Doesn't reconcile because SBQQ assumes UnitPrice is 12 mo term (was actually imported with full term amount)
                item.Revenue_Type__c = oppProduct.Revenue_Type__c;
                newOrderItems.add(item);
            }
        }
        
        results = Database.upsert(newOrderItems, OrderItem.Fields.ConversionID__c, false);
        for(Integer i=0; i < results.size(); i++){
            Database.UpsertResult result = results[i];
            if(!result.isSuccess()){
                OrderItem item = newOrderItems[i];
                for(Database.Error err : result.getErrors()){
                    Logger.error(item.Id, 'OrderItem', 'OrderMigrationStrategy: OrderItem', err.getMessage());   
                }
            }
        }
        
        // Create a reciprocal reference back to Order        
        for(Opportunity opp : scope){
            for(Order o : newOrders){
                if(o.OpportunityId == opp.Id){
                    Opportunity updateOpp = new Opportunity(Id=opp.Id, Order__c=o.Id);
                }
            }
        }
        update scope;
    }
    
    private Order toOrder(Opportunity opp){
        Order o = new Order();
        o.ConversionID__c = opp.Id; // Prevent duplicate records by upserting with this ExternalID.
        o.CurrencyIsoCode = opp.CurrencyIsoCode;
        o.Status = 'Draft';
        o.AccountId = opp.AccountId;
        o.Description = opp.Description;
        o.EffectiveDate = opp.ARCHIVE_Subscription_Start_Date__c;
        o.EndDate = opp.ARCHIVE_Subscription_End_Date__c;
        o.OpportunityId = opp.Id;
        o.Pricebook2Id = opp.Pricebook2Id;
        return o;
    }
    
    private List<OpportunityLineItem> getItems(ID opportunityId, List<OpportunityLineItem> lineItems){
        List<OpportunityLineItem> returnItems = new List<OpportunityLineItem>();
        for(OpportunityLineItem li : lineItems){
            if(li.OpportunityId == opportunityId){
                returnItems.add(li);
            }
        }
        return returnItems;
    }
    
    private SBQQ__Quote__c getQuote(ID opportunityId, List<SBQQ__Quote__c> allQuotes){
        for(SBQQ__Quote__c q : allQuotes){
            if(q.SBQQ__Opportunity2__c == opportunityId){
                return q;
            }
        }
        return null;
    }
    
    @TestVisible private MigrationResult validate(Opportunity o){
        MigrationResult r = new MigrationResult();
        r.Success = true;
        r.Id = o.Id;
        r.SObjectType = 'Opportunity';
        if(o.AccountId == null){
            r.Success = false;
            r.Message = 'Missing AccountId';
        }
        else if(o.Pricebook2Id == null){
            r.Success = false;
            r.Message = 'Missing Pricebook2Id';
        }
        else if(o.ARCHIVE_Subscription_Start_Date__c == null){
            r.Success = false;
            r.Message = 'Missing ARCHIVE_Subscription_Start_Date__c';
        }
        else if(o.ARCHIVE_Subscription_End_Date__c == null){
            r.Success = false;
            r.Message = 'Missing ARCHIVE_Subscription_End_Date__c';
        }
        return r;
    }
}