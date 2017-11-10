@IsTest
public class OppTouch_Tests {
 @TestSetup static void init() {
        TestData.setup();
    }
    
static testMethod void testScheduler(){
      TestData data = new TestData();
       ID pricebookId = Test.getStandardPricebookId();
       //CloseDate=Date.Today().AddDays(-365),
        Opportunity testOpp = new Opportunity(Name='Test Archive Opportunity',
                    AccountId=data.TestAccount.Id,
                    StageName='Prospect',
                    SBQQ__PrimaryQuote__c = data.TestQuote.Id,
                    Pricebook2Id=pricebookId,
                    CloseDate=Date.Today(),
                    Old_ID__c = 'migrated_id',
                    SBQQ__Contracted__c = false,
                    ARCHIVE_Total_Contract_Amount__c = 10000.00,
                    ARCHIVE_Subscription_Start_Date__c = Date.Today().AddDays(-365),
                    ARCHIVE_Subscription_End_Date__c = Date.Today(),
                    ARCHIVE_Subscription_Term__c = 12,                   
                    Type = 'New Business',                   
                    forecast_arr__c = 0.0,
          Closed_Reasons__c = 'Other',                                              
                    Order_Type__c = 'Existing: Add-On');
        insert testOpp;


        Test.StartTest();
        System.schedule('OppTouch'+system.now(), '0 00 00 * * ?', new OppTouch());
        Test.StopTest();
                        

        
        }
        
}