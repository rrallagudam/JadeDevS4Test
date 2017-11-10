/**@@
#CLASS NAME     :   BatchAssignPartnerContacts_Test 
#DESCRIPTION    :   This is a test class for BatchAssignPartnerContacts batch class.
@@**/

@isTest
public class BatchAssignPartnerContacts_Test {
    /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
        DataFactory.insertCustomSetting();
        
        //Insert acount
        List<Account> accountList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        
        //Insert Contact test records
        List<Contact> contactList = DataFactory.createContactTestRecords('Test Contact',accountList[0].Id,3);
        
        //Insert user test records
        List<User> userList = Datafactory.createUserTestRecords('TestLast', 2);
    }
    
    /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : Void 
    @@**/
    
    Public static testMethod void AssignPartnerContacts_Test() 
    {
        List<User> ownerUserList = [Select id from user];
        List<Account> accList=[SELECT id,OwnerId, DoD_Update__c FROM Account];
        accList[0].DoD_Update__c = True;
        update accList;
        
        List<Contact> conList=[SELECT id,OwnerId, IsNewAccountOnContact__c FROM Contact];
        conList[0].IsNewAccountOnContact__c = True;
        conList[0].OwnerId = ownerUserList[0].id;
        conList[1].IsNewAccountOnContact__c = True;
        conList[2].IsNewAccountOnContact__c = True;
        update conList;
        //updating account owner
        accList[0].OwnerId = ownerUserList[1].id;  
        update accList;
        
        
        Test.StartTest();
        BatchAssignPartnerContacts_Scheduler objScheduleClass = new BatchAssignPartnerContacts_Scheduler();
        String strCronExpression = '0 0 * * * ?';
        String strJobId = system.schedule('Assign contacts through batch class', strCronExpression, objScheduleClass);
        Test.stopTest();
        
    }
    
}