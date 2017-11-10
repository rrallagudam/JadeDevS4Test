/**@@
#APEX CLASS NAME       :   ContactsFindMatchesExtension_Test
#DESCRIPTION           :   This is test class for ContactsFindMatchesExtension Apex class.
@@**/
@IsTest
public class ContactsFindMatchesExtension_Test {
    Static List<Account> lstAcc;
    Static List<Contact> lstCon;
    
     /**@@
        #DESCRIPTION     : Creating test records
        #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
        // Create Test Account records
        lstAcc = new List<Account>();        
        lstAcc = DataFactory.createAccountTestRecords('TestAccount', 3);
        
        Account objAcc = new Account(id=lstAcc[0].id);
        objAcc.Name = 'Test';
        update objAcc;
        
        // Create Test Contact records
        lstCon = new List<Contact>();        
        lstCon = DataFactory.createContactTestRecords('TestContact', objAcc.id, 2);
        
        Contact objCon = new Contact(id=lstCon[0].id);
        objCon.FirstName = '';
        objCon.LastName = 'Test';
        objCon.Email = 'test@jade.com';
        update objCon;
        
        objCon = new Contact(id=lstCon[1].id);
        objCon.FirstName = 'Test';
        objCon.LastName = 'Jade';
        objCon.Email = 'test@jade.com';
        update objCon;
        
    }//End of setup()
    
    /**@@
        #DESCRIPTION     : Test method for findMatchingContacts function
        #Paramaters      : None
    @@**/    
    @isTest static void findMatchingContacts_test() {
        test.startTest();
        
        // Get the test Lead records by using a SOQL query
        List<Contact> ConList = [SELECT Id FROM Contact LIMIT 1];
        
        ApexPages.StandardController sc = new ApexPages.StandardController(ConList[0]);
        ApexPages.currentPage().getParameters().put('id', String.valueOf(ConList[0].Id));
        ContactsFindMatchesExtension objFMExternsion = new ContactsFindMatchesExtension(sc);
        
        System.assertEquals(ConList.size(),1);
        System.assertEquals(objFMExternsion.matchingContacts.size() > 0,TRUE);
        test.stopTest();
        
    }// End of findMatchingLeads
    
}//End of Class ContactsFindMatchesExtension_Test