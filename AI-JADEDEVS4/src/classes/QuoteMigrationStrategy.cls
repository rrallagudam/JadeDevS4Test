global class QuoteMigrationStrategy implements IOpportunityMigrationStrategy {

    public void Migrate(List<Opportunity> scope){
        List<SBQQ__Quote__c> quoteList = new List<SBQQ__Quote__c>();
        boolean hasErrors = false;
        for(Opportunity o : scope){
            MigrationResult r = validate(o);
            if(!r.Success){
                hasErrors = true;
                Logger.error('QuoteMigrationStrategy', r);
                o.Migration_Success__c = false;
                o.Migration_Notes__c = 'QuoteMigrationStrategy error: ' + r.Message;
                continue;
            }
            
            SBQQ__Quote__c q = toQuote(o);
            if(q != null){
                quoteList.add(q);
            }
        }
        
        List<Database.UpsertResult> results = Database.upsert(quoteList, SBQQ__Quote__c.Fields.Migration_Key__c, false);
        for(Integer i=0; i<results.size(); i++){
            Database.UpsertResult result = results[i];
            if(!result.isSuccess()){
                SBQQ__Quote__c q = quoteList[i];
                for(Database.Error err : result.getErrors()){
                    Logger.error(q.SBQQ__Opportunity2__c, 'Opportunity', 'QuoteMigrationStrategy: Failed to convert Opportunity to SBQQ__Quote__c', err.getMessage());   
                }
            } else {
                Logger.info(result.getId(), 'SBQQ__Quote__c', 'SBQQ__Quote__c Created', 'Upsert success.');
            }
        }
        
        if(hasErrors){
            update scope;
        }
    }
    
    @TestVisible private SBQQ__Quote__c toQuote(Opportunity o){
        SBQQ__Quote__c q = new SBQQ__Quote__c(
                CurrencyIsoCode = o.CurrencyIsoCode,
                SBQQ__Opportunity2__c = o.Id,
                SBQQ__PriceBook__c = o.Pricebook2Id,
                SBQQ__Account__c = o.AccountId,
                SBQQ__Type__c = 'Quote',
                SBQQ__Primary__c = false,
                SBQQ__StartDate__c = o.ARCHIVE_Subscription_Start_Date__c,
                Display_End_Date__c = o.ARCHIVE_Subscription_End_Date__c,
                SBQQ__SubscriptionTerm__c = o.ARCHIVE_Subscription_Term__c,
                Migration_Key__c = o.Id + '-Migration');
        if(q.CurrencyIsoCode == null){
            q.CurrencyIsoCode = 'USD';
        }
        return q;
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
        else if(o.ARCHIVE_Subscription_Term__c == null){
            r.Success = false;
            r.Message = 'Missing ARCHIVE_Subscription_Term__c';
        }
        else if(o.ARCHIVE_Total_Contract_Amount__c == null){
            r.Success = false;
            r.Message = 'Missing ARCHIVE_Total_Contract_Amount__c';
        }
        return r;
    }
}