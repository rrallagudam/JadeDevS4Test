/*
 * Assumptions: Quotes and QuoteLines have been migrated from existing Opportunities.
 * Purpose: Create a placeholder Contract record for migrated Opportunities so that 
 * BookingDetail calculations that depend on DaVinci Contract.Base_ARR__c will resolve to valid values.
 * Note: Production Sales Ops will use the 'Contracted' checkbox on Opportunities to provision a Contract,
 * which is a completely separate process flow.
 */
global class ContractMigrationStrategy implements IOpportunityMigrationStrategy {

    public void Migrate(List<Opportunity> scope){
        boolean hasErrors = false;
        List<Contract> renewalContracts = new List<Contract>();
        for(Opportunity o: scope){
            MigrationResult r = validate(o);
            if(!r.Success){
                hasErrors = true;
                Logger.error('ContractMigrationStrategy', r);
                o.Migration_Success__c = false;
                o.Migration_Notes__c = 'ContractMigrationStrategy error: ' + r.Message;
                continue;
            }
            Contract c = toContract(o);
            renewalContracts.add(c);
        }
        if(renewalContracts.isEmpty()){
            return;
        }
        
        Schema.SObjectField externalIdField = Contract.Fields.Key__c;
        List<Database.UpsertResult> results = Database.upsert(renewalContracts, externalIdField, false);
        for(Integer i=0; i<results.size(); i++){
            Database.UpsertResult result = results[i];
            if(!result.isSuccess()){
                Contract c = renewalContracts[i];
                for(Database.Error err : result.getErrors()){
                    Logger.error(c.SBQQ__Opportunity__c, 
                                 'Opportunity', 
                                 'ContractMigrationStrategy: ', 
                                 'Failed to upsert Contract from Opportunity. ' + err.getMessage());   
                }
            }
        }
        
        List<Opportunity> opptyList = new List<Opportunity>();
        for(Contract c : renewalContracts){
            Opportunity o = new Opportunity();
            o.Id = c.SBQQ__Opportunity__c;
            o.SBQQ__RenewedContract__c = c.Id;
            opptyList.add(o);
        }
        update opptyList;
        if(hasErrors){
            update scope;
        }
    }
    
    public Contract toContract(Opportunity o){
        Contract c = new Contract();
        c.CurrencyIsoCode = o.CurrencyIsoCode;
        c.AccountId = o.AccountId;
        c.Key__c = o.Id;
        c.Description = 'Imported by DaVinci ContractMigrationStrategy utility';
        c.ARR__c = o.ARCHIVE_Base_ARR__c;
        c.SBQQ__Opportunity__c = o.Id;
        c.StartDate = o.ARCHIVE_Subscription_Start_Date__c;
        c.ContractTerm = Integer.valueOf( o.ARCHIVE_Subscription_Term__c );
        c.Pricebook2Id = o.Pricebook2Id;
        c.Status = 'Draft';
        return c;
    }
    
    @TestVisible public MigrationResult validate(Opportunity o){
        MigrationResult r = new MigrationResult();
        r.Success = true;
        r.Id = o.Id;
        r.SObjectType = 'Opportunity';
        if(false == o.IsClosed){
            r.Success = false;
            r.Message = 'Not IsClosed';
        }        
        else if(false == o.IsWon){
            r.Success = false;
            r.Message = 'Not IsWon';
        }
        else if(o.Old_ID__c == null){
            r.Success = false;
            r.Message = 'Missing Old_ID__c';
        }
        else if(o.AccountId == null){
            r.Success = false;
            r.Message = 'Missing AccountId';
        }
        else if( Integer.valueOf( o.ARCHIVE_Subscription_Term__c ) <= 0 ){
            r.Success = false;
            r.Message = 'ARCHIVE_Subscription_Term__c is negative number';
        }
        return r;
    }
}