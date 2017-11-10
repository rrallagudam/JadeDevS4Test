/*
 * Assumptions: Opportunities have been migrated using ContractMigrationStrategy.
 * Results: Touches the "Renewal" checkbox on each Contract associated with an Opportunity 
 * to provision a renewal opportunity.
 */
global class RenewalMigrationStrategy implements IOpportunityMigrationStrategy {

    public void Migrate(List<Opportunity> scope){
        Set<ID> qualifiedIDs = new Set<ID>();
        for(Opportunity o: scope){
            if(false == isQualifiedForRenewal(o)){
                continue;
            }
            qualifiedIDs.add(o.Id);
        }
        
        // TODO: Convert this to an Apex batch class that accepts a collection of Contracts.
        String soql = 'SELECT ' + SObjectUtils.allFields('Contract') + ' FROM Contract WHERE SBQQ__Opportunity__c IN :qualifiedIDs';
        List<Contract> contracts = Database.query(soql);
        List<Contract> updateContracts = new List<Contract>();
        
        for(Contract c : contracts){
            if(c.SBQQ__RenewalForecast__c == true || c.SBQQ__RenewalOpportunity__c != null){
                continue;
            }
            if(Date.today() < c.StartDate || Date.today() > c.EndDate){
                continue;
            }
            c.Status = 'Activated';
            c.SBQQ__RenewalForecast__c = true;
            updateContracts.add(c);
        }
        if(false == updateContracts.isEmpty()){
            List<Database.SaveResult> results = Database.update(updateContracts, false);
            for(Integer i=0; i<results.size(); i++){
                Database.SaveResult result = results[i];
                if(!result.isSuccess()){
                    Contract c = updateContracts[i];
                    Logger.error(c.Id, 'Contract', 'RenewalMigrationStrategy: Contract Error', result.getErrors()[0].getMessage() );
                }
            }
        }
    }
    
    public boolean isQualifiedForRenewal(Opportunity o){
        /*
         * Must be 
         * Closed Won
         * Must have contract provisioned (with subscription... see ContractMigrationStrategy)
         * Contract must be active. Date.Today() > StartDate && Date.Today() < EndDate
         * Renewal Forecast checkbox must be false.
         */
        if(false == o.IsClosed){
            Logger.error(o.Id, 'Opportunity', 'Opportunity not qualified for renewals.', ' Not IsClosed.');
            return false;
        }
        if(false == o.IsWon){
            Logger.error(o.Id, 'Opportunity', 'Opportunity not qualified for renewals.', ' Not IsWon.');
            return false;
        }
        if(o.Old_ID__c == null){
            Logger.error(o.Id, 'Opportunity', 'Opportunity not qualified for renewals.', 'Not imported from legacy org.');
            return false;
        }
        /*
        if(o.SBQQ__PrimaryQuote__c == null){
            Logger.error(o.Id, 'Opportunity', 'Opportunity not qualified for renewals.', 'Primary Quote not defined.');
            return false;
        }*/
        if(o.SBQQ__Contracted__c == false){
            Logger.error(o.Id, 'Opportunity', 'Opportunity not qualified for renewals.', 'Contracted checkbox must already be selected.');
            return false;
        }
        if(o.Roll_Up_Subscription_Revenue__c == null || o.Roll_Up_Subscription_Revenue__c <= 0){
            Logger.error(o.Id, 'Opportunity', 'Opportunity not qualified for renewals.', ' No associated Subscription products to renew.');
            return false;
        }
        return true;
    }
}