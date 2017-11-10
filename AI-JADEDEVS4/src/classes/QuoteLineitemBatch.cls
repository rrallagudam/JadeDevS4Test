global class QuoteLineitemBatch implements Database.Batchable<sObject> {

  global Database.QueryLocator start(Database.BatchableContext BC) {
    String query = 'SELECT Id,Opportunityid,Product2ID,Discount,Quantity,ListPrice FROM OpportunityLineItem WHERE SBQQ__QuoteLine__c = null';  
    return Database.getQueryLocator(query);
  }
  
  global void execute(Database.BatchableContext BC, list<sObject> records) {
    set<ID> oppIds = new set<ID>();
    map<ID,list<OpportunityLineItem>> oppLineItemMap = new map<ID,list<OpportunityLineItem>>();
    map<ID,SBQQ__Quote__c> quotesmap = new map<ID,SBQQ__Quote__c>();
    list<SBQQ__QuoteLine__c> quotesLineitems = new list<SBQQ__QuoteLine__c>();
    
    for(OpportunityLineItem  opplineItem : (list<OpportunityLineItem>)records){
           oppIds.add(opplineItem.Opportunityid);
           if(oppLineItemMap.containsKey(opplineItem.Opportunityid)){
               oppLineItemMap.get(opplineItem.Opportunityid).add(opplineItem);
           }
           else{
                oppLineItemMap.put(opplineItem.Opportunityid,new list<OpportunityLineItem>());
                oppLineItemMap.get(opplineItem.Opportunityid).add(opplineItem);
           }                     
    }
    quotesmap  = new map<ID,SBQQ__Quote__c>([SELECT ID,SBQQ__Opportunity2__c FROM SBQQ__Quote__c WHERE SBQQ__Opportunity2__c IN:oppIds AND SBQQ__Primary__c = false]);
    if(test.isRunningTest()){
        quotesmap  = new map<ID,SBQQ__Quote__c>([SELECT ID,SBQQ__Opportunity2__c FROM SBQQ__Quote__c WHERE SBQQ__Opportunity2__c IN:oppIds]);    
    }
    map<ID,SBQQ__QuoteLine__c> updateQlineitems = new map<ID,SBQQ__QuoteLine__c>();    
    for(SBQQ__QuoteLine__c QLI :[SELECT ID,SBQQ__Quote__c,SBQQ__Product__c,Report_Filter__c,SBQQ__Quantity__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c IN: quotesmap.keyset()]){
        if(quotesmap.containsKey(QLI.SBQQ__Quote__c) && quotesmap.get(QLI.SBQQ__Quote__c).SBQQ__Opportunity2__c != null && oppLineItemMap.containsKey(quotesmap.get(QLI.SBQQ__Quote__c).SBQQ__Opportunity2__c)){
            for(OpportunityLineItem  OLI : oppLineItemMap.get(quotesmap.get(QLI.SBQQ__Quote__c).SBQQ__Opportunity2__c)){
                if(OLI.Product2Id == QLI.SBQQ__Product__c && OLI.Quantity == QLI.SBQQ__Quantity__c ){ 
                     updateQlineitems.put(QLI.id,(new SBQQ__QuoteLine__c(ID=QLI.id,
                      SBQQ__Discount__c = OLI.Discount,
                      Report_Filter__c  = true)));                                  
                }
            }
        }
    }
    system.debug('***updateQlineitems***'+updateQlineitems.size());
    update updateQlineitems.values();
    
        
  }
  global void finish(Database.BatchableContext BC) {
        
  }
  
}