@IsTest
public class AccountCancelController_Tests {

    @IsTest public static void cancelTests(){
        TestData.setup();
        TestData data = new TestData();
        
        ApexPages.currentPage().getParameters().put('id', data.TestAccount.Id);
        ApexPages.StandardController stdAccount = new ApexPages.StandardController(data.TestAccount);
        AccountCancelController ctrl = new AccountCancelController(stdAccount);
        
        System.assertEquals('Active', ctrl.CurrentAccount.Status__c);
        ctrl.cancelAccount();
        data.TestAccount = (Account)SObjectUtils.get('Account', data.TestAccount.ID);
        System.assertEquals('Cancelled', data.TestAccount.Status__c);
        
        data.TestOpportunity = (Opportunity)SObjectUtils.get('Opportunity', data.TestOpportunity.ID);
        System.assertEquals('Closed Lost', data.TestOpportunity.StageName);
        System.assertEquals('Cancelled', data.TestOpportunity.Loss_Reason__c);      
    }
}