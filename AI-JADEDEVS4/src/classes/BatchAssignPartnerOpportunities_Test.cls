/**@@
#CLASS NAME     :   BatchAssignPartnerOpportunities_Test 
#DESCRIPTION    :   This is a test class for BatchAssignPartnerOpportunities batch class.
@@**/

@isTest
public class BatchAssignPartnerOpportunities_Test {
    /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
        DataFactory.insertCustomSetting();
        
        //Insert acount
        List<Account> accountList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        
        //Insert opportunity test records
        List<Opportunity> opportunityList = DataFactory.createOpportunityTestRecords('TestOpp', 2);
        opportunityList[0].accountId = accountList[0].id;
        opportunityList[1].accountId = accountList[0].id;
        update opportunityList;
        
        
        //Insert user test records
        List<User> userList = Datafactory.createUserTestRecords('TestLast', 2);
    }
    
    /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : Void 
    @@**/
    
    Public static testMethod void AssignPartnerOpportunities_Test() 
    {
        List<User> ownerUserList = [Select id from user];
        List<Account> accList=[SELECT id,OwnerId, DoD_Update__c FROM Account];
        accList[0].DoD_Update__c = True;
        update accList;
        
        List<Opportunity> oppList=[SELECT id,OwnerId, IsNewAccountOnOpportunity__c FROM opportunity];
        oppList[0].IsNewAccountOnOpportunity__c = True;
        oppList[0].OwnerId = ownerUserList[0].id;
        oppList[1].IsNewAccountOnOpportunity__c = True;
        update oppList;
        
        //updating account owner
        accList[0].OwnerId = ownerUserList[1].id;  
        update accList;
        
        Test.StartTest();
        
        BatchAssignPartnerOpportunities_Sch objScheduleClass = new BatchAssignPartnerOpportunities_Sch();
        String strCronExpression = '0 15 * * * ?';
        String strJobId = system.schedule('Assign partner opportunities through batch class', strCronExpression, objScheduleClass);
        
        Test.stopTest();
        
    }

}