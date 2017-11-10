global class ContractitemBatch implements Database.Batchable<sObject> {

  global Database.QueryLocator start(Database.BatchableContext BC) {
    String query = 'SELECT Id,SBQQ__Contract__c,SBQQ__AdditionalDiscountAmount__c,Report_Filter__c ,SBQQ__NetPrice__c,SBQQ__Product__c,SBQQ__Quantity__c,SBQQ__ListPrice__c FROM SBQQ__Subscription__c WHERE '+ system.label.ContractitemBatch_Query;  
    return Database.getQueryLocator(query);
  }
  
   global void execute(Database.BatchableContext BC, list<sObject> records) {
    set<ID> contractIds = new set<ID>();
    map<ID,ID> oppconIds = new map<ID,ID>();
    
    map<ID,list<SBQQ__Subscription__c>> contractLineItemMap = new map<ID,list<SBQQ__Subscription__c>>();
    list<OpportunityLineItem> oppLineitems = new list<OpportunityLineItem>();    
    
    for(SBQQ__Subscription__c conlineItem : (list<SBQQ__Subscription__c>)records){
           contractIds.add(conlineItem.SBQQ__Contract__c);
           if(contractLineItemMap.containsKey(conlineItem.SBQQ__Contract__c)){
               contractLineItemMap.get(conlineItem.SBQQ__Contract__c).add(conlineItem);
           }
           else{
                contractLineItemMap.put(conlineItem.SBQQ__Contract__c,new list<SBQQ__Subscription__c>());
                contractLineItemMap.get(conlineItem.SBQQ__Contract__c).add(conlineItem);
           }                     
    }
    for(contract oContract : [SELECT ID,SBQQ__Opportunity__c FROM Contract WHERE ID IN: contractIds]){
        oppconIds.put(oContract.SBQQ__Opportunity__c,oContract.ID); 
    }

    map<ID,SBQQ__Subscription__c> contractlineitems = new map<ID,SBQQ__Subscription__c>();      
    for(opportunitylineitem OLI :[SELECT ID,OpportunityID,Product2ID,Quantity,ListPrice,TotalPrice  FROM opportunitylineitem  WHERE OpportunityID  IN:oppconIds.keyset()])
    {
        if(oppconIds.containsKey(OLI.OpportunityID)){
         for(SBQQ__Subscription__c CLI : contractLineItemMap.get(oppconIds.get(OLI.OpportunityID))){
             if(CLI.SBQQ__Product__c == OLI.Product2ID && CLI.SBQQ__Quantity__c == OLI.Quantity ){
               contractlineitems.put(CLI.ID,new SBQQ__Subscription__c(ID=CLI.ID,
                                                SBQQ__NetPrice__c = OLI.TotalPrice,
                                                Report_Filter__c = true));  
             }
         }   
        }
    }        
    update contractlineitems.values();
    
   }
   global void finish(Database.BatchableContext BC) {
        
  }

}