/*#APEX CLASS     : OpportunityLineItemTrigger_Test
#DESCRIPTION    : This test class is written for OpportunityLineItem Trigger and its handler/helper Apex class.
@@**/

@IsTest
public class OpportunityLineItemTrigger_Test{
    
     /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        //Insert custom settings
        DataFactory.insertCustomSetting();
    }
    
    
    /**@@
    #DESCRIPTION     :  This is test class method is creating test data old Method of OpportunityTriggerHandler
    #Paramaters      :  void
    @@*/
    public static testMethod void Test1(){
        Test.startTest();
        
        
        List<Account> oacc = DataFactory.createAccountTestRecords('Test Account', 1);
        List<Contact> ocon = DataFactory.createContactTestRecords('Test contact',oacc[0].ID ,1);
        
        ID pricebookId = Test.getStandardPricebookId();
      
        list<Opportunity> lstOpp=DataFactory.createOpportunityTestRecords('Test',1);
        lstOpp[0].Pricebook2Id=pricebookId;
        lstOpp[0].Is_Installment_Opportunity__c = true;
        update lstOpp[0];
        
        List<Product2> listServiceProd = DataFactory.createProductRecords('Installment Payment for Subscriptions', 'ZZ-0003', 1);
       
        List<PricebookEntry> pbEntries = new List<PricebookEntry>();

        PricebookEntry entry = new PricebookEntry(
            IsActive = true,
            Pricebook2Id = pricebookId,
            Product2Id = listServiceProd[0].Id,
            UnitPrice = 100.00);
        insert (entry);
        
        OpportunityLineItem oppLine = new OpportunityLineItem(pricebookentryid=entry.ID,TotalPrice=2000,Quantity = 2,OpportunityID = lstOpp[0].ID);
        insert oppLine;
        
        update oppLine;
        // Insert duplicate Opportunity Lineitem
        oppLine = new OpportunityLineItem(pricebookentryid=entry.ID,TotalPrice=2000,Quantity = 2,OpportunityID = lstOpp[0].ID);
        insert oppLine;
        
        // Check duplicate line item is deleted successfully from Installment Opportunity
        List<OpportunityLineItem> lstOppLineItem = [SELECT id FROM OpportunityLineItem WHERE OpportunityId =:  lstOpp[0].id];
        system.assertEquals(lstOppLineItem.size(), 1);
        
        delete lstOppLineItem;
        Test.stopTest();
    }
}