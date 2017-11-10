/**@@
#APEX CLASS NAME       :   TaskTriggerHandler_Test 
#DESCRIPTION           :   This is test class for TaskTriggerHandler Apex class.
@@**/
@isTest
public class TaskTriggerHandler_Test {
    
    Static List<Account> accList;
    Static List<Contact> conList;
    Static list<Task> taskList;
    Static list<Lead> lstLead; 
    Static List<User> userList;
    
    /**@@
    #DESCRIPTION     : setup method to create test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        test.startTest();
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Insert user
        userList = new list<User>();
        userList = Datafactory.createUserTestRecords('TestUserLast', 4);
        
        //Insert Lead
        lstLead = DataFactory.createLeadTestRecords('Test', 1); 
        
        //Insert account
        accList = new List<Account>();
        accList = DataFactory.createAccountTestRecords('testaccountcompany',1);
        
        //Insert contact under to above account
        conList = new List<Contact>();
        conList = DataFactory.createContactTestRecords('TestCon', accList[0].id, 1);
        DataFactory.createOpportunityTestRecords('opportunityName', 1);
        //Insert Task under to above account
        taskList = DataFactory.createTaskTestRecords(conList[0].id, userList[1].id, 1);
        taskList[0].status = 'Completed';
        update taskList;
        // DataFactory.createTaskTestRecords(conList[0].id, userList[1].id, 1);
        DataFactory.createTaskTestRecordswithEloqua(conList[0].id, userList[1].id, 1);
        
        // taskList = DataFactory.createTaskTestRecords(lstLead[0].id, userList[2].id, 1);
        test.stopTest();
    }
    
    public static testMethod void onBeforeInsertUpdate_Test(){
        test.startTest();
        //Get the test user records by using a SOQL query
        List<User> userObjList = [SELECT Id FROM User LIMIT 4];
        
        //Get the test Account records by using a SOQL query
        List<Account> accObjList = [SELECT Id FROM Account LIMIT 1];
        
        //Get the test Contact records by using a SOQL query
        List<Contact> conObjList = [SELECT Id FROM contact LIMIT 1];
        conObjList[0].ownerId = userObjList[0].id;
        update conObjList;
        
        //Get the test Lead records by using SOQL query
        List<Lead> leadObjList = [SELECT Id FROM Lead LIMIT 1];
        leadObjList[0].ownerId = userObjList[0].id;
        update leadObjList;
        
        //Get the test Task records by using SOQL query
        List<Task> taskObjList = [SELECT Id FROM Task];
        taskObjList[0].whatId = accObjList[0].id;
        taskObjList[0].OwnerId = userObjList[3].id;
        taskObjList[0].status ='Completed';
        //System.assertEquals(taskObjList[0].status, 'Completed');
        
        update taskObjList;
        List<Opportunity> oppObjList = [SELECT Id FROM Opportunity LIMIT 1];
        taskObjList[0].whatid =oppObjList[0].id;
        update taskObjList;
        // system.assertEquals(taskObjList[0].whatid,oppObjList[0].id);
        list<id> ids = new list<id>();
        ids.add(taskObjList[0].id);
        TaskTriggerHandler.afterInsert(ids);
        test.stopTest();
     }
     
     public static testMethod void onBeforeInsert_Test(){
     
         List<Lead> lstLead = [SELECT id FROM Lead LIMIT 1];
         lstLead[0].Registration_Status__c = CustomConstants.LeadRegistrationStatusExpired;
         update lstLead;
                  
         taskList = DataFactory.createTaskTestRecords(lstLead[0].id, system.Userinfo.getuserid(), 1);
         
         list<Opportunity> lstOpp=DataFactory.createOpportunityTestRecords('Test',1);
         lstOpp[0].Registration_Status__c = CustomConstants.LeadRegistrationStatusExpired;
         update lstOpp;
         
         taskList = DataFactory.createTaskTestRecords(lstLead[0].id, system.Userinfo.getuserid(), 1);
         
         Task t = new Task();
         t.OwnerId = system.Userinfo.getuserid();
         t.Whatid=lstOpp[0].id;
         t.Subject='testsubject';
         t.Status='Completed';
         t.Priority='Normal';
         insert t;
     }
}