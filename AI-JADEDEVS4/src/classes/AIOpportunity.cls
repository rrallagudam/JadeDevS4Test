public class AIOpportunity extends AIClassBase {
    public Opportunity record = null;
    
    public AIOpportunity(){}
    
    public AIOpportunity withSObject(Opportunity opptyRecord){
        this.record = opptyRecord;
        this.id = opptyRecord.Id;
        return this;
    }
    
    public AIOpportunity withId(ID recordId){
        id = recordId;
        String sFieldsToQuery = SObjectUtils.allFields('Opportunity');
        record = Database.query('SELECT ' + sFieldsToQuery + ' FROM Opportunity WHERE Id=:id LIMIT 1');
        return this;
    }
    
    public Map<ID, OpportunityLineItem> LineItems{
        get{
            String sFieldsToQuery = SObjectUtils.allFields('OpportunityLineItem');
            String soql = 'SELECT ' + sFieldsToQuery + ' FROM OpportunityLineItem WHERE OpportunityId=:id';
            List<OpportunityLineItem> lineItems = Database.query(soql);
            return new Map<ID, OpportunityLineItem>( lineItems );
        }
    }
    
    public Map<ID, Opportunity> InstallmentOpportunities{
        get{
            String sFieldsToQuery = SObjectUtils.allFields('Opportunity');
            String soql = 'SELECT ' + sFieldsToQuery + ' FROM Opportunity WHERE MasterOpportunity__c=:id ORDER BY CreatedDate';
            List<Opportunity> opttys = Database.query(soql);
            return new Map<ID, Opportunity>( opttys );
        }
    }
}