/**@@
#CLASS NAME    :  Campaign_Trigger_Test 
#DESCRIPTION   :  This is Test Class which covers the 'Trigger_Campaign_Helper' Class.
@@**/

@istest(SeeAllData=false)
public class Campaign_Trigger_Test{
    public static testmethod void AddCampaignMemberStatusClass_Test (){
        Test.StartTest();                    
        DataFactory.insertCustomSetting(); 
        Set<Id> cmpId = new Set<Id>();
        List<Campaign> CampaignRecords = new List<Campaign>();       
        date mydate = date.parse('05/11/2012');
        CampaignRecords = DataFactory.createCampaignWithStatus('test campaign','Planned',1);
        CampaignRecords = DataFactory.createCampaignWithStatus('test campaign','In Production',1);
        
        
        // Check Date/Time stamp populated correctly with current time stamp - updateCampaignFields Check
        List<Campaign> lstCampaign = [SELECT id, Status_Dynamic_Content_Created__c, Status_Elq_Campaign_Created__c, Status_Email_1_Created__c, Status_Emails_2_3_created__c, Status_ICS_Tested__c, Status_Partner_Email_Sent__c, Status_Segment_Created__c, Status_Shared_List_Created__c , Status_Planning__c, Status_In_Production__c FROM Campaign WHERE ID IN: CampaignRecords LIMIT 1];
        system.assertEquals(lstCampaign[0].Status_Dynamic_Content_Created__c, system.now());
        system.assertEquals(lstCampaign[0].Status_Elq_Campaign_Created__c, system.now());
        system.assertEquals(lstCampaign[0].Status_Email_1_Created__c, system.now());
        system.assertEquals(lstCampaign[0].Status_Emails_2_3_created__c, system.now());
        system.assertEquals(lstCampaign[0].Status_ICS_Tested__c, system.now());
        system.assertEquals(lstCampaign[0].Status_Partner_Email_Sent__c, system.now());
        system.assertEquals(lstCampaign[0].Status_Segment_Created__c, system.now());
        system.assertEquals(lstCampaign[0].Status_Shared_List_Created__c, system.now());
        system.assertEquals(lstCampaign[0].Status_In_Production__c, system.now());
        
        //insert CampaignRecords;                        
        cmpId.add(CampaignRecords [0].Id);             
        Datafactory.createCampaignMemberStatusTestRecord(CampaignRecords[0].id,1);
        update CampaignRecords;
        
        // Check Campaign member status are inserted successfully or not
        List<CampaignMemberStatus> lstCampaignMemberStatus = [SELECT id FROM CampaignMemberStatus WHERE CampaignId in: CampaignRecords];
        system.assertEquals(lstCampaignMemberStatus.size() > 0, true);
        
        
        delete CampaignRecords;
        Test.StopTest();        
  } 
}