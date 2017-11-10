@IsTest
public class QuoteLineitemBatch_Tests {

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
                                        
    OpportunityLineItem opplineitem = new OpportunityLineItem (OpportunityId=data.TestOpportunity.ID,PricebookEntryId=data.TestPricebookEntries[0].ID,UnitPrice=100,Quantity=1,SBQQ__QuoteLine__c=null);    
    insert opplineitem; 
    OpportunityLineItem opplineitem2 = new OpportunityLineItem (OpportunityId=data.TestOpportunity.ID,PricebookEntryId=data.TestPricebookEntries[0].ID,UnitPrice=100,Quantity=1,SBQQ__QuoteLine__c=null);    
    insert opplineitem2;      
    SBQQ__Quote__c  TestQuote = [SELECT ID,SBQQ__Opportunity2__c, SBQQ__Primary__c FROM SBQQ__Quote__c WHERE ID=: data.TestQuote.ID];
    TestQuote.SBQQ__Opportunity2__c = data.TestOpportunity.ID;
//    TestQuote.SBQQ__Primary__c = false;
    update TestQuote;
       
    Test.startTest();
    QuoteLineitemBatch batch = new QuoteLineitemBatch();
    Database.executeBatch(batch);
    Test.stopTest();             
}

  

}