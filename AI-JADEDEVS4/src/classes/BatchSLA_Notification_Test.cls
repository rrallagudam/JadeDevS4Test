/**@@
#CLASS NAME     :   BatchContactDailySummary_Test
#DESCRIPTION    :   This is a test class for BatchSLA_Notification batch class.
@@**/

@isTest
public class BatchSLA_Notification_Test {
    
    
    /**@@
#DESCRIPTION     : Creating test records
#Paramaters      : None
@@**/
    @testSetup static void setup() {
        
        DataFactory.insertCustomSetting();
        SkipAutomationSetting__c customSettingObj = SkipAutomationSetting__c.getOrgDefaults();
        customSettingObj.Lead_Automation__c =false;
        customSettingObj.Contact_Automation__c = false;
        customSettingObj.Opportunity_Automation__c =false;
        upsert customSettingObj;
        
        //insert businessdays custom setting
        DataFactory.createBusinessDays();
        
        //insert custom setting
        DataFactory.insertCustomSetting();
        
        //Insert acount
        List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        
        //Insert Lead test record
        List<Lead> leadList = DataFactory.createLeadTestRecords('leadLastName', 1);
        
        //Insert Contact test record
        List<Contact> conList=DataFactory.createContactTestRecords('Test Contact',accList[0].Id,1);
        
        //Insert Opportunity test record.
        List<Opportunity> OppList = DataFactory.createOpportunityTestRecords('opportunityName', 2);
        
    }
    
    
    
 /**@@
#DESCRIPTION     : This is a test method used to create test data for BatchSLA_Notification batch class.
#Paramaters      : None
@@**/
    static testMethod void SLANOtification_test() 
    {
        DataFactory.insertCustomSetting();
     
       
        List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        //update Lead
        List<Lead> leadList = [SELECT id,Status,Lifecycle_Stage__c,Timestamp_Lifecycle_MQL__c FROM Lead limit 1];
        leadList[0].Status =CustomConstants.LeadStatusNew;
        dateTime dt =system.now().addDays(-4);
        leadList[0].Timestamp_Lifecycle_MQL__c =dt;
        leadList[0].Lifecycle_Stage__c = CustomConstants.LifecycleMQL;
        update leadList;
        
        //Update contact
        List<Contact> conList=[SELECT id,Status__c,Lifecycle_Stage__c,Timestamp_Lifecycle_MQL__c FROM Contact Limit 1];
        conList[0].Status__c = CustomConstants.ContactStatusRestored;
        conList[0].Timestamp_Lifecycle_MQL__c= system.now().addDays(-4);
        conList[0].Lifecycle_Stage__c = CustomConstants.LifecycleMQL;
        update conList; 
        
        //Update opportunity
        List<Opportunity> OppList =[SELECT Id,StageName,First_Meeting_Date__c,Timestamp_SAO__c FROM Opportunity ];
        OppList[0].StageName = CustomConstants.OpportunityStageProspect;
        OppList[1].StageName = CustomConstants.OpportunityStageSAO;
        OppList[0]. First_Meeting_Date__c = system.Today().addDays(-20);
        OppList[1]. Timestamp_SAO__c  =system.Today().addDays(-20);
        update  OppList;
        
        Test.StartTest();
        BatchSLA_NotificationScheduler objschclass = new BatchSLA_NotificationScheduler();
        String cronexpression ='0 0 9 ? * MON-FRI';
        system.schedule('BatchSLA_Notification', cronexpression, objschclass);
        Test.stopTest();
        
    }//End of SLANOtification_test 
}//End of class