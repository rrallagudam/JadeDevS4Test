public class AIOpportunityLineItem extends AIClassBase{

    public OpportunityLineItem record = null;
    
    public AIOpportunityLineItem(){}
    
    public AIOpportunityLineItem withSObject(OpportunityLineItem itemRecord){
        this.record = itemRecord;
        this.id = itemRecord.Id;
        return this;
    }
    
    public AIOpportunityLineItem withId(ID recordId){
        id = recordId;
        String sFieldsToQuery = SObjectUtils.allFields('OpportunityLineItem');
        record = Database.query('SELECT ' + sFieldsToQuery + ' FROM OpportunityLineItem WHERE Id=:id LIMIT 1');
        return this;
    }
}