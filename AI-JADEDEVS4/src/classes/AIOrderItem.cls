public class AIOrderItem extends AIClassBase {
    public OrderItem record = null;
    
    public AIOrderItem(){}
    
    public AIOrderItem withSObject(OrderItem itemRecord){
        this.record = itemRecord;
        this.id = itemRecord.Id;
        return this;
    }
    
    public AIOrderItem withId(ID recordId){
        id = recordId;
        String sFieldsToQuery = SObjectUtils.allFields('OrderItem');
        record = Database.query('SELECT ' + sFieldsToQuery + ' FROM OrderItem WHERE Id=:id LIMIT 1');
        return this;
    }
}