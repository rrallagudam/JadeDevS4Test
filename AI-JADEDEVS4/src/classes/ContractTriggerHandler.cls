public with sharing class ContractTriggerHandler {
    public void OnAfterInsert(List < Contract > newRecords) {
        updatecurarr(newRecords);
    }

    public void OnAfterUpdate(List < Contract > oldRecords,List < Contract > newRecords, Map < ID, Contract > oldMap, Map < ID, Contract > newMap) {
        updatecurarr(newRecords);
    }

    private void updatecurarr(List < Contract > newRecords) {
        Map < ID, Double> arrmap = new Map < ID, Double> ();
        list<Account> accList = new list<Account>();
        set<ID> accIDs = new set<ID>();
        map<ID,String> contCurrencyCode = new map<ID,String>();
        
        for (Contract cont: newRecords) {
            if (cont.Status == 'Activated'){
                accIDs.add(cont.AccountID);
                contCurrencyCode.put(cont.AccountID,cont.CurrencyISOCode);                 
            }                
        }
        if(!accIDs.isEmpty()){
            map<ID,string> accMap = new map<ID,string>();
            for(Account acc : [SELECT ID,CurrencyISOCode FROM Account WHERE ID IN: accIDs ]){
                accMap.put(acc.ID,acc.CurrencyISOCode);
            }
                    
            List<aggregateResult> results = [select AccountID, SUM(Total_Renewal_Price__c) arr from Contract  WHERE AccountID IN: accIDs group by AccountID];
            for (AggregateResult ar : results){
                System.debug('****'+ar.get('AccountID')+'-'+ar.get('arr'));
                if(ar.get('arr') != null ){
                    arrmap.put((String.ValueOf(ar.get('AccountID'))),Double.ValueOf(String.ValueOf(ar.get('arr')))); 
                }
                else{
                    arrmap.put((String.ValueOf(ar.get('AccountID'))),0); 
                }
            }
            if(!arrmap.isEmpty()){
                map<String,Decimal> isoCodeRate = new map<String,Decimal>();    
                for(currencytype ocurrencytype :[SELECT isocode,conversionrate FROM currencytype WHERE (isocode IN: contCurrencyCode.values() OR isocode IN: accMap.values())]){
                    isoCodeRate.put(ocurrencytype.isocode, ocurrencytype.conversionrate); 
                }     
                
                //arrmap.put(cont.accountid, cont.TotalRenewalPrice__c);
                for (Account ac: [select id,Current_ARR__c,CurrencyISOCode,Report_Filter__c  from Account where id IN: accIDs]){
                    if(accMap.containsKey(ac.ID) && contCurrencyCode.containsKey(ac.ID) && ac.Report_Filter__c == false){
                    system.debug('***acc***'+accMap.get(ac.ID));
                    system.debug('***con***'+contCurrencyCode.get(ac.ID));            
                        if(accMap.get(ac.ID) == contCurrencyCode.get(ac.ID)){
        
                            accList.add(new Account(Id=ac.ID,Current_ARR__c=arrmap.get(ac.ID)*isoCodeRate.get(ac.CurrencyISOCode)));
                        }
                    }
                }
            
                update accList;
            }
        }
    }
}