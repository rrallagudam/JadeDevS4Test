/*
 * Post migration data cleansing filters on Opportunity Products.
 * Batch size can be rather large (~100-200)
 */
public class OpportunityProductMigrationStrategy implements IOpportunityMigrationStrategy {
	public void Migrate(List<Opportunity> scope){
		Set<ID> oppIDList = new Set<ID>();
		for(Opportunity o : scope){
			oppIDList.add( o.Id );
		}
        boolean needs_update = false;
		List<OpportunityLineItem> products = [SELECT Id,Revenue_Type__c FROM OpportunityLineItem WHERE OpportunityID IN :oppIDList];
        for(OpportunityLineItem item : products){
            if(item.Revenue_Type__c == 'Subscriptions'){
                item.Revenue_Type__c = 'Subscription';
                needs_update = true;
            }
        }
        if(needs_update){
            update products;
        }
	}
}