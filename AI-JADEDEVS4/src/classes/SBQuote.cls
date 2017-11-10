public class SBQuote extends AIClassBase{
    public SBQQ__Quote__c record = null;
    
    public SBQuote(){}
    
    public SBQuote withSObject(SBQQ__Quote__c sRecord){
        this.record = sRecord;
        this.id = sRecord.Id;
        return this;
    }
    
    public SBQuote withId(ID recordId){
        id = recordId;
        String sFieldsToQuery = SObjectUtils.allFields('SBQQ__Quote__c');
        record = Database.query('SELECT ' + sFieldsToQuery + ' FROM SBQQ__Quote__c WHERE Id=:id LIMIT 1');
        return this;
    }
    
    public SBQQ__Quote__c DeepClone(){
        String soql = 'SELECT ' + SObjectUtils.allCreatableFields('SBQQ__Quote__c',new Set<String>()) + ' FROM SBQQ__Quote__c WHERE Id=:id LIMIT 1';
        SBQQ__Quote__c record = Database.query(soql);
        SBQQ__Quote__c clonedRecord = record.Clone(false, true, false, false);
        insert clonedRecord;
        
        List<SBQQ__QuoteLine__c> clonedChildRecords = new List<SBQQ__QuoteLine__c>();
        soql = 'SELECT ' + SObjectUtils.allCreatableFields('SBQQ__QuoteLine__c',new Set<String>()) + ' FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =:id';
        List<SBQQ__QuoteLine__c> childRecords = Database.query(soql);
        for(SBQQ__QuoteLine__c childRecord : childRecords){
            SBQQ__QuoteLine__c clonedChildRecord = childRecord.Clone(false, true, false, false);
            clonedChildRecord.SBQQ__Quote__c = clonedRecord.Id;
            clonedChildRecords.add(clonedChildRecord);
        }
        insert clonedChildRecords;
        
        return clonedRecord;
    }
    
    public List<SBQQ__QuoteLine__c> LineItems{
        get{
            String soql = 'SELECT ' + SObjectUtils.allFields('SBQQ__QuoteLine__c') + ' FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =:id';
            return Database.query(soql);
        }
    }
    
    public Map<ID, Installment__c> Installments{
        get{
            String sFieldsToQuery = SObjectUtils.allFields('Installment__c');
            String soql = 'SELECT ' + sFieldsToQuery + ' FROM Installment__c WHERE Quote__c=:id';
            List<Installment__c> installments = Database.query(soql);
            return new Map<ID, Installment__c>( installments );
        }
    }
}