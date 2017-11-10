/**@@
#CLASS NAME     :   BatchSLA_Notification_Manager_Test
#DESCRIPTION    :   This is a test class for BatchDailySummary batch class.
@@**/

@isTest
public class BatchSLA_Notification_Manager_Test {
    /**@@
#DESCRIPTION     : This is a test method used to create test data for BatchDailySummary batch class.
#Paramaters      : None
@@**/
    static testMethod void SLANOtification_Manager_test() 
    {
        DataFactory.insertCustomSetting();
        SkipAutomationSetting__c customSettingObj = SkipAutomationSetting__c.getOrgDefaults();
        customSettingObj.Lead_Automation__c =false;
        customSettingObj.Contact_Automation__c = false;
        customSettingObj.Opportunity_Automation__c =false;
        upsert customSettingObj;
        
        //insert businessdays custom setting
     	DataFactory.createBusinessDays();
     
        //Insert acount
        List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
       
        //insert Lead
        List<Lead> leadList = DataFactory.createLeadTestRecords('leadLastName', 1);
        leadList[0].Status =CustomConstants.LeadStatusNew;
        dateTime dt =system.now().addDays(-4);
        leadList[0].Timestamp_Lifecycle_MQL__c =dt;
        leadList[0].Lifecycle_Stage__c = CustomConstants.LifecycleMQL;
        update leadList;
        
        //Insert contact
        List<Contact> conList=DataFactory.createContactTestRecords('Test Contact',accList[0].Id,1);
        conList[0].Status__c = CustomConstants.ContactStatusRestored;
        conList[0].Timestamp_Lifecycle_MQL__c= system.now().addDays(-4);
        conList[0].Lifecycle_Stage__c = CustomConstants.LifecycleMQL;
        update conList; 
        
        //insert opportunity
        List<Opportunity> OppList = DataFactory.createOpportunityTestRecords1('opportunityName', 2);
        OppList[0].StageName = CustomConstants.OpportunityStageProspect;
        OppList[1].StageName = CustomConstants.OpportunityStageSAO;
        OppList[0]. First_Meeting_Date__c = system.Today().addDays(-20);
      OppList[1]. Timestamp_SAO__c  =system.Today().addDays(-20);
        update  OppList;
        
        Test.StartTest();
        BatchSLA_Notification_ManagerScheduler objschclass = new BatchSLA_Notification_ManagerScheduler();
        String cronexpression ='0 0 9 ? * THU';
        system.schedule('BatchSLA_Notification Manager', cronexpression, objschclass);
        Test.stopTest();
        
    }//End of SLANOtification_test 
}//End of class