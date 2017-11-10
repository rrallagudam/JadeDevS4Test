public class AIInstallment extends AIClassBase{
    public Installment__c record = null;
    
    public AIInstallment(){}
    
    public AIInstallment withSObject(Installment__c iRecord){
        this.record = iRecord;
        this.id = iRecord.Id;
        return this;
    }
    
    public AIInstallment withId(ID recordId){
        id = recordId;
        String sFieldsToQuery = SObjectUtils.allFields('Installment__c');
        record = Database.query('SELECT ' + sFieldsToQuery + ' FROM Installment__c WHERE Id=:id LIMIT 1');
        return this;
    }
}