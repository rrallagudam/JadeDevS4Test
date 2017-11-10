@IsTest
public class ContractTriggerHandler_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest 
     public static void Test1(){
         TestData tData = new TestData();
         contract ocont = tdata.TestContract;
         ocont.ARR__c = 23;
         ocont.status = 'Activated';
         update ocont ;
        Test.startTest();

            ContractRenewalBatch  obj = new ContractRenewalBatch ();
            DataBase.executeBatch(obj); 
            ContractRenewalBatchScheduled sh1 = new ContractRenewalBatchScheduled();
            String sch = '0 0 23 * * ?'; 
            system.schedule('Test Territory Check', sch, sh1);
        Test.stopTest();
                 
         
     }
}