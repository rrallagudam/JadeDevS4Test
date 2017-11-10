public class SubscriptionHandler {
    // Field to be rolled up to parent Contract
    public static Set<String> CurrencyFields = new Set<String>{
        'ARR__c',
        'Total_Renewal_Price__c',
        'SBQQ__AdditionalDiscountAmount__c',
        'SBQQ__CustomerPrice__c',
        'SBQQ__ListPrice__c',
        'SBQQ__MarkupAmount__c',
        'SBQQ__NetPrice__c',
        'SBQQ__OriginalUnitCost__c',
        'SBQQ__RegularPrice__c',
        'SBQQ__RenewalPrice__c',
        'SBQQ__SegmentUpliftAmount__c',
        'SBQQ__SpecialPrice__c',
        'SBQQ__UnitCost__c' };
            
    public SubscriptionHandler(){}
    
    public void OnAfterInsert(List<SBQQ__Subscription__c> newRecords){
        summarizeContractCurrencyFields(newRecords);
    }
    
    public void OnAfterUpdate(List<SBQQ__Subscription__c> updatedRecords){
        summarizeContractCurrencyFields(updatedRecords);
    }
    
    public void summarizeContractCurrencyFields(List<SBQQ__Subscription__c> records){
        Set<ID> contractIDs = new Set<ID>();
        for(SBQQ__Subscription__c sub : records){
            contractIDs.add(sub.SBQQ__Contract__c);
        }
        
        Map<ID, Contract> contractMap = new Map<ID, Contract>( (List<Contract>) Database.query(getContractSOQL()));
        
        // For each Contract referenced, query all the related Subscription records.
        for(ID contractId : contractIDs){
            String soql = 'SELECT ';
            for(String field : CurrencyFields){
                soql += field + ',';
            }
            
            /* 
             * Technical Debt Note: 
             * This is a nested query inside a trigger, but 99% use case this will only be executed once.
             * If there are plans to bulk import Subscriptions, then consider bulkifing this method.
             */            
            soql += 'Id FROM SBQQ__Subscription__c WHERE SBQQ__Contract__c=:contractId';
            List<SBQQ__Subscription__c> subscriptions = Database.query(soql);
            
            Contract c = contractMap.get(contractId);
            for(String fieldName : CurrencyFields){
                Double sum = sumField(subscriptions, fieldName);
                String contractField = fieldName.replace('SBQQ__', 'Total');
                c.put(contractField, sum);
                System.debug('Sum of field ' + fieldName + ' = ' + sum);
            }
            update c;
        }
    }
    
    public Double sumField(List<SBQQ__Subscription__c> subscriptions, String fieldName){
        Double sum = 0.0;
        for(SBQQ__Subscription__c sub : subscriptions){
            Double val = (Double)sub.get(fieldName);
            if(val != null){
                sum += val;    
            }
        }
        return sum;
    }
    
    public String getContractSOQL(){
        String soql = 'SELECT ';
        for(String field : CurrencyFields){
            soql += field.replace('SBQQ__', 'Total') + ',';
        }
        soql += 'Id FROM Contract WHERE Id IN :contractIDs';
        return soql;
    }
        
    /*
    @future public static void OnAfterInsertAsync(Set<ID> newRecordIDs){
        
    }*/
    
    /*
    @future public static void OnAfterUpdateAsync(Set<ID> updatedRecordIDs){
        
    } */
}