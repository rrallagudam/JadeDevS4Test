@IsTest
public class ContractitemBatch_tests{

@IsTest public static void Test1()
{
        TestData.initTriggerSettings();
        TestData.setup();
         
        TestData data = new TestData();
        system.debug('**TestAccount*'+data.TestAccount);        
        system.debug('**TestProducts*'+data.TestProducts); 
        system.debug('**TestOpportunity*'+data.TestOpportunity);         
        system.debug('**TestQuoteLines*'+data.TestQuoteLines); 
        system.debug('**TestSubscriptions*'+data.TestSubscriptions); 
        system.debug('**TestContract*'+data.TestContract); 
        system.debug('**TestQuote*'+data.TestQuote); 
      list<SBQQ__Subscription__c>  updateSubs = new list<SBQQ__Subscription__c>(); 
      for(SBQQ__Subscription__c sb :[SELECT ID,SBQQ__AdditionalDiscountAmount__c FROM SBQQ__Subscription__c] ){
          updateSubs.add(new SBQQ__Subscription__c(ID=sb.ID,SBQQ__AdditionalDiscountAmount__c=null));    
      }     
      update updateSubs;
    Test.startTest();
        ContractitemBatch batch = new ContractitemBatch();
        Database.executeBatch(batch);
    Test.stopTest(); 
          
}

}