/**@@
#APEX CLASS NAME       :   LeadTriggerHandler_Test
#DESCRIPTION           :   This is test class for Trigger_Lead_Helper Apex class.
@@**/
@IsTest
public class LeadTriggerHandler_Test
{
    
    /**@@
        #DESCRIPTION     : Creating test records
        #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
        // Create Test Lead records
        // list<Lead> lstLead = new List<Lead>();        
        list<Lead> lstLead = DataFactory.createLeadTestRecords('Test', 5);       
        
        //insert Industry_Classification__c
        List<Industry_Classification__c> icList=DataFactory.createIndustryClassificationRecords('Test Industry',1);
        
        //Insert acount
        List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        accList[0].Type = CustomConstants.AccountTypeCustomer;
        update accList;
        
        //Insert Opportunity
        List<Opportunity> oppoList= DataFactory.createOpportunityTestRecords('TestOpp',1);
        
        //Insert contact
        List<Contact> conList=DataFactory.createContactTestRecords('Test Contact',accList[0].Id,1);
        conList[0].Email='testemail@test.com';
        update conList;
        
       
    }
    
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for newSetLeadAttributes(), setTimestamp() and setStatusRestored() methods of Trigger_Lead_Helper Apex Class.
    #Paramaters      : None
    @@**/
    public static testMethod void testNewMethod(){
        
        Test.startTest();
        
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //updating lead status from Raw to New, Which is updating Lifecycle to MQL and Timestamp of MQL to NOW
        List<Lead> leadList = [SELECT Id FROM lead];
        leadList[0].Status=CustomConstants.LeadStatusNew;
        update leadList;
        system.debug( leadList[0].Status);
        //updating lead status to Pursuing, Which is updating Lifecycle to SAL and Timestamp of SAL to NOW
        List<Lead> leadStatusToPursuingList =  [SELECT Id FROM lead];
        leadStatusToPursuingList[1].Status=CustomConstants.LeadStatusPursuing;
        update leadStatusToPursuingList;
        
        //updating lead status to Rejected, Which is updating Lifecycle to MAL and Timestamp of MAL to NOW
        List<Lead> leadStatusToRejectedList = [SELECT Id FROM lead];
        leadStatusToRejectedList[2].Status=CustomConstants.LeadStatusRejected;
        leadStatusToRejectedList[2].Reject_Reason__c='Junk';
        update leadStatusToRejectedList;
        
        //updating lead score to 50 (increased), which is setting lead status to restored, Which is updating Lifecycle to MQL and Timestamp of MQL to NOW
        List<Lead> leadScoreList =  [SELECT Id FROM lead];
        leadScoreList[3].HubSpot_Lead_Score__c =50;
        leadScoreList[3].Status =CustomConstants.LeadStatusUnqualified;
        
        
        
        update leadScoreList ;
        // T/R: The functions above should be consolidated into one function to create generic data, and it'll be manipulated here
        
        //Assert Check
        Set<id> leadMatchList = new Set<id>();
        leadMatchList.add(leadList[0].id);
        leadMatchList.add(leadStatusToPursuingList[1].id);
        leadMatchList.add(leadStatusToRejectedList[2].id);
        leadMatchList.add(leadScoreList[3].id);
                
        List<Lead> lstLead=[Select id, Lifecycle_Stage__c,Status,Timestamp_Lifecycle_MQL__c,Timestamp_Lifecycle_SAL__c,Timestamp_Lifecycle_MAL__c from Lead where id IN: leadMatchList ];
      
        // T/R: Add more system assert to ensure that the status of the lead is correct - MB: Added aasert to check lead status
       
        //Assert check: updating lead status from Raw to New, Which is updating Lifecycle to MQL and Timestamp of MQL to NOW
        system.assertEquals(lstLead[0].Status, CustomConstants.LeadStatusNew);
        system.assertEquals(lstLead[0].Lifecycle_Stage__c, CustomConstants.LifecycleMQL);
        System.assert(lstLead[0].Timestamp_Lifecycle_MQL__c > System.now().addMinutes(-1));
        
        //Assert check: updating lead status to Pursuing, Which is updating Lifecycle to SAL and Timestamp of SAL to NOW
        system.assertEquals(lstLead[1].Status, CustomConstants.LeadStatusPursuing);
        system.assertEquals(lstLead[1].Lifecycle_Stage__c, CustomConstants.LifecycleSAL);
        System.assert(lstLead[1].Timestamp_Lifecycle_SAL__c > System.now().addMinutes(-1));
        
        //Assert check: updating lead status to Rejected, Which is updating Lifecycle to MAL and Timestamp of MAL to NOW
        system.assertEquals(lstLead[2].Status, CustomConstants.LeadStatusRejected);
        system.assertEquals(lstLead[2].Lifecycle_Stage__c, CustomConstants.LifecycleMAL);
        System.assert(lstLead[2].Timestamp_Lifecycle_MAL__c > System.now().addMinutes(-1));
        
        //Assert Check: when lead score is increatsed and above 30, setting lead status to restored, Which is updating Lifecycle to MQL and Timestamp of MQL to NOW
        system.assertEquals(lstLead[3].Status, CustomConstants.LeadStatusRestored);
        system.assertEquals(lstLead[3].Lifecycle_Stage__c, CustomConstants.LifecycleMQL);
        System.assert(lstLead[3].Timestamp_Lifecycle_MQL__c > System.now().addMinutes(-1));
        
        
        // testing email opt-out
        leadScoreList[0].HasOptedOutOfEmail = false;
        leadScoreList[1].HasOptedOutOfEmail = false;
        leadScoreList[2].HasOptedOutOfEmail = false;
        leadScoreList[3].HasOptedOutOfEmail = false;
        
        leadScoreList[0].Status = CustomConstants.LeadStatusRejected;
        leadScoreList[0].Reject_Reason__c = CustomConstants.ReasonNLWC;
        
        leadScoreList[1].Status = CustomConstants.LeadStatusRejected;
        leadScoreList[1].Reject_Reason__c = CustomConstants.ReasonComp;
        
        leadScoreList[2].Status = CustomConstants.LeadStatusUnqualified;
        leadScoreList[2].Unqualified_Reason__c = CustomConstants.ReasonNLWC;
        
        leadScoreList[3].Status = CustomConstants.LeadStatusUnqualified;
        leadScoreList[3].Unqualified_Reason__c = CustomConstants.ReasonComp;
        
        update leadScoreList;
        
        lstLead=[Select id, HasOptedOutOfEmail from Lead where id IN: leadMatchList ];
        
        for(Lead l : lstLead)
            system.assert(l.HasOptedOutOfEmail);
        
        
        
        delete lstLead;
        Undelete lstLead;
        Test.stopTest();
        
    }
   
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for old methods of Trigger_Lead_Helper Apex Class.
    #Paramaters      : None
    @@**/    
    public static testMethod void testOldMethod() {
        
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Insert IndustryClassification
        List<Industry_Classification__c> icList=[SELECT Id FROM Industry_Classification__c limit 1 ];
        
        //Insert acount record with Customer type
        List<Account> accList = [SELECT Id FROM Account LIMIT 1];
                
        //Insert Opportunity
        List<Opportunity> oppoList= [SELECT Id FROM Opportunity LIMIT 1];
        
        //Insert contact
        List<Contact> conList=[SELECT Id FROM Contact LIMIT 1];
                
        system.assertEquals(conList.size(), 1);
        
        //inserting lead with Raw Status
        List<Lead> leadList = DataFactory.createLeadTestRecords('Test', 1);
        system.debug(leadList[0]);
       
        //lead conversion
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(leadList[0].id);        
    }
   
    /**@@
    #DESCRIPTION     : This is a test method to post feed post to contact and Opportunity.
    #Paramaters      : None
    @@**/
    public static testMethod void Leadconvert_test() {
    
        list<Lead> leadList1 = DataFactory.createLeadTestRecords('Test', 1);  
        List<FeedItem> lstFeed = DataFactory.createFeedItem(leadList1[0].id, 1);
        List<FeedComment> lstFeedComment = DataFactory.createFeedComment(lstFeed[0].id, 1);
        
        //lead conversion
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(leadList1[0].id);   
        Map<id,Lead> newMap = new Map<id,Lead>([Select id from Lead ]);
        LeadStatus convertStatus = [SELECT Id, MasterLabel, IsConverted FROM LeadStatus WHERE IsConverted=true LIMIT 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        lc.setDoNotCreateOpportunity(false);
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        test.startTest();
        Trigger_Lead_Helper.keepChatterPostonConversion(newMap, null);
        test.stopTest();
        //assert to check lead conversion
        System.assert(lcr.isSuccess());
        
        leadList1 = [SELECT id, convertedContactId, convertedOpportunityId FROM Lead WHERE id =: leadList1[0].id and isConverted = true];
        system.assertEquals(leadList1.size() > 0, true);
        
        // Check for FeedItem inserted into Converted Contact or not
        List<FeedItem> lstContactFeedItem = [SELECT id FROM FeedItem WHERE ParentId =: leadList1[0].convertedContactId];
        system.assertEquals(lstContactFeedItem.size() > 0, true);
        
        // Check for FeedItem inserted into Converted Opportunity or not
        List<FeedItem> lstOpportunityFeedItem = [SELECT id FROM FeedItem WHERE ParentId =: leadList1[0].convertedOpportunityId];
        system.assertEquals(lstOpportunityFeedItem.size() > 0, true);
        
        // Check for FeedComment inserted into Converted Contact or not
        List<FeedComment> lstContactFeedComment = [SELECT id FROM FeedComment WHERE ParentId =: leadList1[0].convertedContactId];
        system.assertEquals(lstContactFeedComment.size() > 0, true);
        
        // Check for FeedComment inserted into Converted Opportunity or not
        List<FeedComment> lstOpportunityFeedComment = [SELECT id FROM FeedComment WHERE ParentId =: leadList1[0].convertedOpportunityId];
        system.assertEquals(lstOpportunityFeedComment.size() > 0, true);
        
    }
    
    /**@@
    #DESCRIPTION     : This is a test method for LeadRegistrationEmail method of helper class.
    #Paramaters      : None
    @@**/
    
    public static testMethod void LeadRegistrationEmail_Test() {
        //Insert custom settings
        DataFactory.insertCustomSetting();
        //Insert User
        list<User> userList = DataFactory.createUserTestRecords('TestLast', 1);
        //Insert Account
        list<Account> accList = DataFactory.createAccountTestRecords('TestAcc', 1);
        //Insert contact
        list<Contact> conList = DataFactory.createContactTestRecords('Testcon', accList[0].id, 1);
        //Insert lead
        list<Lead> leadList = DataFactory.createLeadTestRecords('Test', 1);
        leadList[0].ownerId = userList[0].id;
        leadList[0].Partner_Contact__c = conList[0].id;
        update leadList;
        //Assert Check:  Before Order Notification send
        System.assertEquals(0, Limits.getEmailInvocations(),'no email sent');
        //updating lead Registration Status to Accepted.
       leadList[0].Registration_Status__c = CustomConstants.LeadRegistrationStatusAccepted;
        update leadList;
        //Assert Check: Lead Registration Approved - Email send
        //System.assertEquals(1, Limits.getEmailInvocations(),'Lead Registration Approved - Email send');
        //updating lead Registration Status to Rejected.
        leadList[0].Registration_Status__c = CustomConstants.LeadRegistrationStatusRejected;
        update leadList;
        //Assert Check: Lead Registration Rejection - Email send
        System.assertEquals(1, Limits.getEmailInvocations(),'Lead Registration Rejection - Email send');
    }
      
        

 public static testMethod void handlerTrigger_Test() {
     
     //Insert custom settings
        DataFactory.insertCustomSetting();
        //Insert User
        list<User> userList = DataFactory.createUserTestRecords('TestLast', 1);
        //Insert Account
        list<Account> accList = DataFactory.createAccountTestRecords('TestAcc', 1);
        //Insert contact
        list<Contact> conList = DataFactory.createContactTestRecords('Testcon', accList[0].id, 1);
        //Insert lead
        User u = [Select id from User where Id =: CustomConstants.eloquaUserId];
        system.runAs(u){
        list<Lead> leadList = DataFactory.createLeadTestRecords('Test', 1);
        //Map<id,Lead> newMap=new Map<id,Lead>();
        //newMap.put(leadList[0].id, leadList[0]);
     
       test.startTest();
        leadList[0].Phone = '1231231213';
        update leadList;
        test.stopTest();
       
       }
    }
     
     /*Trigger_Lead_Helper.testTriggers = true;
     list<lead> l= DataFactory.createLeadTestRecords('leadLastName', 1);
     
     test.startTest();
     Lead lead1 = new Lead(LastName = 'Jain',email='test@adaptiveInstights.com',company = 'Jade');
     insert lead1;
     lead1.Data_com_Enriched__c = false;
     lead1.OwnerId = customConstants.EloquaUserId;
     lead1.Phone = '1231412312';
     update lead1;
     test.stopTest();
     
     */
 
     
}