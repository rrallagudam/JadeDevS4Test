@IsTest
public class OpportunityContractBatch_Tests {

    @IsTest public static void basicTests(){
        /*
         * Basic assertions:
         * Execute in Batch 200 at a time.
         * Each closed Opportunity (past) creates a new Contract.
         * Unique external ID: Idempotent, no dupes on re-execution. upsert only.
         * Subscription OpportunityLineItems converted to SBQQ Subscriptions.
         * Opportunity Amount = Contract Amount.
         */
        Test.startTest();
        String soql = 'SELECT ' + SObjectUtils.allFields('Opportunity') + ' FROM Opportunity';
        OpportunityContractBatch batch = new OpportunityContractBatch(soql);
        Id BatchProcessId = Database.ExecuteBatch(batch);
        Test.stopTest();
    }
}