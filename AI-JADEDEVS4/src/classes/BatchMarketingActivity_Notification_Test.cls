/**@@
#CLASS NAME     :   BatchMarketingActivity_Notification_Test
#DESCRIPTION    :   This is a test class for BatchMarketingActivity_Notification batch class.
@@**/

@isTest
public class BatchMarketingActivity_Notification_Test{
    
    /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
		list<User> lstUserWithRole = DataFactory.createUserTestRecordsWithRole('TestLastName',1);
		
		
		if(!lstUserWithRole.isEmpty()){
			User u = new User(id = lstUserWithRole[0].id);
			System.RunAs(u){
				DataFactory.insertCustomSetting();
				//Insert acount
				List<Account> accList = DataFactory.createAccountTestRecords('testaccountcompany',2);
				
				List<Contact> lstCon = DataFactory.createContactTestRecords('Test', accList[1].id, 1);
				
				List<User> lstUser = DataFactory.insertPortalUser(lstCon[0].id);
			}
		}
                        
    }
    
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for BatchMarketingActivity_Notification batch class.
    #Paramaters      : None
    @@**/
    static testMethod void marketingActivityNotification_test() {
        
        List<Contact> lstCon = [SELECT id from Contact LIMIT 1];
        List<Account> accList = [SELECT id from Account];
        
        List<User> lstUser = [SELECT id, Contactid from User where IsPortalEnabled = true and Contactid != null and contactid =: lstCon[0].id and Username = 'test1234567@adaptiveinsights.com.adaptive'];
        // Condition to check portal user is created successfully
        system.assertEquals(lstUser.size(), 1);
        
        System.runAs(lstUser[0]) {
            //Insert Lead test record
            List<Lead> leadList = DataFactory.createLeadTestRecords('leadLastName', 1);
        }
        //Insert Contact test record
        List<Contact> conList=DataFactory.createContactTestRecords('Test Contact',accList[0].Id,1);
        conList[0].ownerid = lstUser[0].id;
        conList[0].Partner_Contact__c = lstUser[0].Contactid;
        conList[0].Last_Activity_Date__c = system.today().adddays(-1);
        update conList;
		
		List<Task> insertedTasksContact = DataFactory.createTaskTestRecordsNew(lstUser[0].id,conList[0].id,1);
		List<Event> insertedEventsContact = DataFactory.createEventTestRecords(lstUser[0].id,conList[0].id,1);
		
		
		
         //Update Lead
        List<Lead> leadList=[SELECT id from Lead LIMIT 1];
        leadList[0].Registration_Status__c = CustomConstants.LeadRegistrationStatusAccepted;
        leadList[0].Partner_Contact__c = lstUser[0].Contactid;  
        update leadList; 
        
		List<Task> insertedTasksLead = DataFactory.createTaskTestRecordsNew(lstUser[0].id,leadList[0].id,1);
		List<Event> insertedEventsLead = DataFactory.createEventTestRecords(lstUser[0].id,leadList[0].id,1);

		
        Test.StartTest();
        
        DateTime lastWeek = System.Now().adddays(-7);
        set<Id> sPartnerUsersContactId = new set<Id>();
        sPartnerUsersContactId.add(lstCon[0].id);
        List<Lead> leadListModified = [SELECT id, Name, Title, Company, Status, Owner.Name, LeadSource, Partner_Contact__c, OwnerId FROM Lead WHERE Registration_Status__c =: CustomConstants.LeadRegistrationStatusAccepted AND Partner_Contact__c IN: sPartnerUsersContactId AND isConverted = false];
           // Condition to check Lead record has been modified within last day or not
        system.assertEquals(leadListModified.size(), 1);
        
        List<Contact> contactList = [SELECT id, Name, Title, Account.Name, Status__c, Owner.Name, LeadSource, Lead_Offer_Most_Recent__c, Partner_Contact__c, Last_Activity_Date__c FROM Contact WHERE Partner_Contact__c =:lstCon[0].id AND Lastmodifieddate >=: lastWeek];    
        // Condition to check Contact record has been modified within last day or not
        system.assertEquals(contactList.size() > 0, true);
   
        BatchMarketingActivity_Notify_Scheduler objschclass = new BatchMarketingActivity_Notify_Scheduler();
        String cronexpression ='0 0 9 ? * MON-FRI';
        system.schedule('BatchMarketingActivity_Notification', cronexpression, objschclass);
        
        Test.stopTest();
        
    }//End of SLANOtification_test 
}//End of class