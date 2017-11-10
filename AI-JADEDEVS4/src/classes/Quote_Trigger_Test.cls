/**@@
#CLASS NAME                :    Quote_Trigger_Test
#DESCRIPTION                   :   Test class for "Trigger_Quote_Helper"   
@@**/

@isTest
public class Quote_Trigger_Test{
    /**@@
        #TEST METHOD   : populateQuoteSpecialTerm()
        #DESCRIPTION   : Populating the Special Term from Quote on Order creation
    @@**/
    
    public static testmethod void populateQuoteSpecialTermTest(){
    
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        
        //Insert contact record
        List<Contact> contactList = DataFactory.createContactTestRecords('ContactTest',accList[0].Id,1);
        
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('TestOpportunity',1);
        
        List<SBQQ__Quote__c> quoteList = DataFactory.createQuoteTestRecords(oppList[0].id,1);
                
        List<order> orderList= DataFactory.createOrderTestRecords('TestOrder',oppList[0].Id,accList[0].Id, 1);
                
        quoteList[0].Special_Terms__c ='TestQuote';
        update quoteList;
        
        System.assertEquals(orderList[0].Special_Terms__c, 'TestOrder');
        delete quoteList;
        undelete quoteList;
    }//END OF METHOD
}//END OF CLASS