/**@@
#CLASS NAME                :    Order_Trigger_Test
#DESCRIPTION                   :   Test class for "Trigger_Order_Helper"   
@@**/

@isTest
public class Order_Trigger_Test{
    /**@@
        #TEST METHOD   : populateOppSpecialTermTest()
        #DESCRIPTION   : Populating the Internal Term from opportunity on Order creation
    @@**/
    public static testMethod void populateOppSpecialTermTest(){
    
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        
        //Insert contact record
        List<Contact> contactList = DataFactory.createContactTestRecords('ContactTest',accList[0].Id,1);
        
        //Insert opportunity records        
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('TestOpportunity',1);
        
        //Insert Order records        
        List<Order> orderList = DataFactory.createOrderTestRecords('TestOrder', oppList[0].id, accList[0].id, 1);
        System.assertEquals(oppList[0].Special_Terms__c,'TestInternal Notes');
     }//END OF METHOD   
     
     /**@@
        #TEST METHOD   : populateQuoteSpecialTermTest()
        #DESCRIPTION   : Populating the Special Term from Quote on Order creation
    @@**/
    public static testMethod void populateQuoteSpecialTermTest(){
    
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        
        //Insert contact record
        List<Contact> contactList = DataFactory.createContactTestRecords('ContactTest',accList[0].Id,1);
        
        //Insert opportunity records
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('TestOpportunity',1);
        
        //Insert quote records
        List<SBQQ__Quote__c> quoteList = DataFactory.createQuoteTestRecords(oppList[0].id,1);
        
        //Insert order records
        List<Order> orderList = DataFactory.createOrderTestRecords('TestOrder', oppList[0].id, accList[0].id, 1);
        System.assertEquals(orderList[0].Special_Terms__c,'TestOrder');
     }//END OF METHOD
        
    }//END OF CLASS