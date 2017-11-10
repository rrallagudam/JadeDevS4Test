/*
 * DaVinci migration utility. Migrates archive of Opportunities to SteelBrick data model.
 * Usage (in anonymous Apex debug session)
String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity WHERE AccountId != null AND CloseDate > 2013-12-31 AND SBQQ__PrimaryQuote__c=null AND IsClosed=True AND IsWon=True AND Pricebook2Id!=null AND ARCHIVE_Subscription_Start_Date__c!=null AND ARCHIVE_Subscription_End_Date__c!=null AND ARCHIVE_Total_Contract_Amount__c!=null AND Total_Products__c > 0 ORDER BY CloseDate ASC LIMIT 50';
// One of the following strategies:
// QuoteMigrationStrategy strategy = new QuoteMigrationStrategy(); // Generate SteelBrick Quote from Opportunities
// ContractMigrationStrategy strategy = new ContractMigrationStrategy(); // Generate Contracts from Opportunities (depends on QuoteMigrationStrategy)
// RenewalMigrationStrategy strategy = new RenewalMigrationStrategy(); //Generate Renewal Opportunities (depends on ContractMigrationStrategy)
// OrderMigrationStrategy strategy = new OrderMigrationStrategy(); // Generate Orders from Opportunities (Depends on QuoteMigrationStrategy)
// InstallmentMigrationStrategy strategy = new InstallmentMigrationStrategy(); // Generate Installments from Opportunities (Depends on Closed-Won Opportunity and Order)
OpportunityBatchMigrator b = new OpportunityBatchMigrator(soql, strategy);
Id BatchProcessId = Database.ExecuteBatch(b);
 */
global class OpportunityBatchMigrator implements Database.Batchable<sObject>{
    global final String Query;
    global IOpportunityMigrationStrategy MigrationStrategy;
    
    global OpportunityBatchMigrator(String q){
        Query=q;
        MigrationStrategy = new QuoteMigrationStrategy();
    }
    
    global OpportunityBatchMigrator(String q, IOpportunityMigrationStrategy strategy){
        Query=q;
        MigrationStrategy = strategy;
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC,List<Opportunity> scope){
        MigrationStrategy.Migrate(scope);
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
        
    global void finish(Database.BatchableContext BC){}
}