public class AIBookingDetail extends AIClassBase{
    public Booking_Detail__c record = null;
    
    public AIBookingDetail(){}
    
    public AIBookingDetail withSObject(Booking_Detail__c detailRecord){
        this.record = detailRecord;
        this.id = detailRecord.Id;
        return this;
    }
    
    public AIBookingDetail withId(ID recordId){
        id = recordId;
        String sFieldsToQuery = SObjectUtils.allFields('Booking_Detail__c');
        record = Database.query('SELECT ' + sFieldsToQuery + ' FROM Booking_Detail__c WHERE Id=:id LIMIT 1');
        return this;
    }
}