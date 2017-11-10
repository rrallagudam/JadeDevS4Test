/**@@
#CLASS NAME     :   BatchReminderonSignedOpportunity_Test
#DESCRIPTION    :   This is a test class for BatchReminderonSignedOpportunity batch class.
@@**/
@isTest
private class BatchReminderonSignedOpportunity_Test {
    
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for BatchReminderonSignedOpportunity batch class.
    #Paramaters      : None
    @@**/
    static testMethod void myTestMethod() 
    {
        Test.StartTest();
        //Insert account
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',3);
        system.assertEquals(accList.size(), 3);
        
        
        //Insert Opportunity
        List<opportunity> oppList=DataFactory.createOpportunityTestRecords('TestOpportunity', 3);
        System.assertEquals(oppList.size(), 3);
        
        
        for(Integer i=0;i<3;i++)
        {
            oppList[i].StageName='Signed';
        }
        
        update oppList;
        
        double n=0.5;
        
        for(Integer i=0;i<3;i++)
        {
            oppList[i].Workflow_Execution_Date__c=(datetime.now()-n);
            oppList[i].Next_Send_Email_Date__c=(datetime.now());
            n=n+0.5;
        }
        
        update oppList;
        
        system.assertEquals(oppList.size(), 3);
        
        List<opportunity> oppLst = [Select id, Stagename from opportunity];
        
        //Assert check: Opportunity Stage 
        System.assertEquals(oppLst[0].StageName, 'Signed');
        System.assertEquals(oppLst[1].StageName, 'Signed');
        System.assertEquals(oppLst[2].StageName, 'Signed');
        
        //Excuting batch class
        Database.executeBatch(new BatchReminderonSignedOpportunity());
        
        Test.stopTest();
        
    }
    
    
}