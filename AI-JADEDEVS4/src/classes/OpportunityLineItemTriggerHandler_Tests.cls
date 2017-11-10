@IsTest
public class OpportunityLineItemTriggerHandler_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void basicTests(){
        TestData data = new TestData();
        
        Opportunity oppty = data.TestOpportunity;
        
        OpportunityLineItem newItem = new OpportunityLineItem();
        newItem.OpportunityId  = oppty.Id;
        newItem.PricebookEntryId = data.TestPricebookEntries[0].Id;
        newItem.Quantity = 1;
        newItem.TotalPrice = 100.0;
        insert newItem;
        
        List<OpportunityLineItem> items = [SELECT Id, Revenue_Type__c FROM OpportunityLineItem WHERE Id=:newItem.Id];
        System.assertEquals(1, items.size());
        System.assert(items[0].Revenue_Type__c != null);
    }
}