/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class CurrencyFormatControllerTest {

    static testMethod void myUnitTest() {
      
      Map<String, Schema.RecordTypeInfo> accountRecordTypes = Schema.SObjectType.Account.getRecordTypeInfosByName();
        Map<String, Schema.RecordTypeInfo> opportunityRecordTypes = Schema.SObjectType.Opportunity.getRecordTypeInfosByName();

        Account testAccount = new Account(
            Name = 'TestAccount',
            RecordTypeId = accountRecordTypes.get('Customer').getRecordTypeId()
            //Total_Seats_temp__c = 0,
            //Publicity__c = false
        );
        insert testAccount;
      
      Opportunity testOpportunity = new Opportunity(
            Name = 'TestOpportunity Add',
            StageName = 'Prospect',
            CloseDate = Date.today().addDays(100),
            CurrencyIsoCode = 'USD',
            //Subscription_Start_Date__c = Date.today().addDays(100),
            RecordTypeId = opportunityRecordTypes.get('Prospect').getRecordTypeId(),
            //Publicity__c = false,
            //Has_Uplift_Products__c = false,
            AccountId = testAccount.Id,
            Forecast_ARR__c = 100
        );
        
        insert testOpportunity;
        
        CurrencyFormatController ctrl = new CurrencyFormatController();
        ctrl.opportunityId = testOpportunity.Id;
        ctrl.fieldName = 'Forecast_ARR__c';
        
        System.assertEquals(10000, ctrl.getFormattedValue());
    }
}