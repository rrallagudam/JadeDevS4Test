/*
 * Migrates Order_Tye__c custom field to DaVinci Opportunity.Type picklist values
 * Intended for one-time use during data migration. #DaVinci

    String soql = 'SELECT .... FROM Opportunity WHERE ...'
    OpportunityTypeMigrationStrategy strategy = new OpportunityTypeMigrationStrategy();
    OpportunityBatchMigrator b = new OpportunityBatchMigrator(soql, strategy);
    Id BatchProcessId = Database.ExecuteBatch(b);
 */
public class OpportunityTypeMigrationStrategy implements IOpportunityMigrationStrategy {

    /*
Add-On
New Customer
Renewal
Existing: Add-On
Existing: Extension
Existing: Services Only
Comp Adjust
Consolidation Trial-Customer Data
Consolidation Trial-Trial Data
Discovery Free Trial-Adaptive Planning
Discovery Free Trial-Stand Alone
*/
    public void Migrate(List<Opportunity> scope){
        for(Opportunity o : scope){
            o.Is_Legacy__c = true;
            o.Migration_Success__c = true;
            o.Migration_Notes__c = null;
            if(o.Order_Type__c == null){
                continue;
            }
            String orderType = o.Order_Type__c;
            if(orderType.contains( 'New' ) ){
                o.Type = 'New';
            }
            else if(orderType.contains( 'Renewal' ) ){
                o.Type = 'Renewal';
            }
            else{
                o.Type = 'Add-On';
            }
        }
        update scope;
    }
}