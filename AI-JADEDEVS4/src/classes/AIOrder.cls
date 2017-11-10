public class AIOrder extends AIClassBase{
    public Order record = null;
    
    public AIOrder(){}
    
    public AIOrder withSObject(Order orderRecord){
        this.record = orderRecord;
        this.id = orderRecord.Id;
        return this;
    }
    
    public AIOrder withId(ID recordId){
        id = recordId;
        String sFieldsToQuery = SObjectUtils.allFields('Order');
        record = Database.query('SELECT ' + sFieldsToQuery + ' FROM Order WHERE Id=:id LIMIT 1');
        return this;
    }
    
    public Map<ID, OrderItem> OrderItems{
        get{
            String sFieldsToQuery = SObjectUtils.allFields('OrderItem');
            String soql = 'SELECT ' + sFieldsToQuery + ' FROM OrderItem WHERE OrderId=:id';
            List<OrderItem> orderItems = Database.query(soql);
            return new Map<ID, OrderItem>( orderItems );
        }
    }
}