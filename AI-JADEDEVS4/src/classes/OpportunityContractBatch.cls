/*
 * DaVinci migration utility.
 * Migrates archive of Opportunities to Contracts.
 */
global class OpportunityContractBatch implements Database.Batchable<sObject>{
    global final String Query;
    
    global OpportunityContractBatch(String q){
        Query=q;
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC,List<Opportunity> scope){
        Set<ID> idList = new Set<ID>();
        for(Opportunity o : scope){
            idList.add(o.Id);
        }
        /*
        This code was designed to let SteelBrick provision contracts and renewal Opptys from archived Opptys.
        Commented out for now. Simplest use case (below) creates Contracts directly.
        String soql = 'SELECT ' + SObjectUtils.allFields('OpportunityLineItem') + ' FROM OpportunityLineItem WHERE Id IN :idList';
        List<OpportunityLineItem> lineItems = Database.query(soql);
        List<SBQQ__Quote__c> quoteList = new List<SBQQ__Quote__c>();
        List<SBQQ__QuoteLine__c> quoteLineList = new List<SBQQ__QuoteLine__c>();
        */
        List<Contract> contractList = new List<Contract>();
        for(Opportunity o: scope){
            // Does opportunity already have a primary quote / contract?
            if(o.SBQQ__PrimaryQuote__c != null || o.AccountId == null){
                continue;
            }
            contractList.add ( toContract(o) );
            /*
            SBQQ__Quote__c q = buildQuoteFromOpportunity(o);
            if(q != null){
                quoteList.add(q);
                List<SBQQ__QuoteLine__c> quoteLines = buildQuoteLinesFromQuote(q, o, lineItems);
            }
            */
        }
        //insert quoteList;
        //insert quoteLineList;
        upsert contractList Key__c;
    }
    
    @TestVisible private Contract toContract(Opportunity o){
        Contract c = new Contract();
        c.AccountId = o.AccountId;
        c.SBQQ__Opportunity__c = o.Id;
        if(o.ARCHIVE_Subscription_Start_Date__c != null){
            c.StartDate = o.ARCHIVE_Subscription_Start_Date__c;
            if(o.ARCHIVE_Subscription_End_Date__c != null){
                integer months = o.ARCHIVE_Subscription_Start_Date__c.monthsBetween(o.ARCHIVE_Subscription_End_Date__c);
                if(months != null && months > 0){
                    c.ContractTerm = months;
                }
            }
        }
        c.ARCHIVE_Total_Contract_Amount__c = (o.ARCHIVE_Total_Contract_Amount__c != null ? o.ARCHIVE_Total_Contract_Amount__c : 0.00);
        //c.Pricebook2 = (o.Pricebook2 != null ? o.Pricebook2 : null);
        c.Description = (o.Description != null ? o.Description : null);
        c.Status = 'Draft';
        c.Key__c = o.Id; // One Contract per archived Opportunity
        return c;
    }
    
    @TestVisible private SBQQ__Quote__c toQuote(Opportunity o){
        SBQQ__Quote__c primaryQuote = new SBQQ__Quote__c(
                SBQQ__Opportunity2__c = o.Id,
                SBQQ__PriceBook__c = o.Pricebook2Id,
                SBQQ__Account__c = o.AccountId,
                SBQQ__Type__c = 'Quote',
                SBQQ__TargetCustomerAmount__c = o.ARCHIVE_Total_Contract_Amount__c,
                SBQQ__Primary__c = true,
                SBQQ__StartDate__c = o.ARCHIVE_Subscription_Start_Date__c,
                SBQQ__SubscriptionTerm__c = o.ARCHIVE_Subscription_Start_Date__c.monthsBetween(o.ARCHIVE_Subscription_End_Date__c) );
        return primaryQuote;
    }
    
    @TestVisible private List<SBQQ__QuoteLine__c> buildQuoteLinesFromQuote(SBQQ__Quote__c quote, Opportunity o, List<OpportunityLineItem> lineItems){
        List<SBQQ__QuoteLine__c> quoteLines = new List<SBQQ__QuoteLine__c>();
        List<OpportunityLineItem> opptyLineItems = getLineItems(o, lineItems);
        for(OpportunityLineItem item : opptyLineItems){
            SBQQ__QuoteLine__c lineItem = new SBQQ__QuoteLine__c(
                SBQQ__Quote__c = quote.Id,
                SBQQ__SubscriptionScope__c = 'Quote',
                SBQQ__Product__c = item.Product2Id,
                SBQQ__Quantity__c = item.Quantity,
                SBQQ__Discount__c = item.Discount,
                SBQQ__ListPrice__c = item.ListPrice);    
            quoteLines.add( lineItem );
        }
        
        return quoteLines;
    }
    
    @TestVisible private List<OpportunityLineItem> getLineItems(Opportunity o, List<OpportunityLineItem> lineItems){
        List<OpportunityLineItem> opptyItems = new List<OpportunityLineItem>();
        for(OpportunityLineItem item : lineItems){
            if(item.OpportunityId == o.Id){
                opptyItems.add(item);
            }
        }
        return opptyItems;
    }

    global void finish(Database.BatchableContext BC){}
}