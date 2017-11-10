/**@@
#APEX CLASS NAME       :   AccountTriggerHandler_Test
#DESCRIPTION           :   This is test class for Trigger_Account_Helper Apex class.
@@**/
@IsTest
public class AccountTriggerHandler_Test {
    
    Static List<Account> accList;
    Static List<Contact> conList;
    Static List<Opportunity> oppList;
    Static List<Industry_Classification__c> icList;
    Static List<User> userList;

    /**@@
    #DESCRIPTION     : setup method to create test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
        //Insert IndustryClassification
        icList =  new List<Industry_Classification__c>();
        icList=DataFactory.createIndustryClassificationRecords('Test Industry',1); 
        
        //Insert account
        accList = new List<Account>();
        accList = DataFactory.createAccountTestRecords('testaccountcompany',2);
        
        //Insert contact under to above account
        conList = new List<Contact>();
        conList = DataFactory.createContactTestRecords('TestCon', accList[0].id, 3);
        
        //Insert user
        userList = new list<User>();
        userList = Datafactory.createUserTestRecords('TestUserLast', 3);
        
        //Insert Opportunity
        oppList = new List<Opportunity>();
        oppList = Datafactory.createOpportunityTestRecords('Test Opp', 1);
    }
    
    /**@@
    #DESCRIPTION     : This is test method which creates the test data for 'afterupdate' methods of Trigger_Account_Helper Apex class.
    #Paramaters      : None
    @@**/
    public static testMethod void afterupdate_Test(){
        
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //test Account
        List<Account> acList = DataFactory.createAccountTestRecords('Test acc', 1);
        
        //Get the test Industry Classification records by using a SOQL query
        List<Industry_Classification__c> icObjList = [SELECT Id FROM Industry_Classification__c LIMIT 1];
        icObjList[0].NAICS_Code__c = '1234';
        update icObjList;
        
        //Get the test Account records by using a SOQL query
        List<Account> accObjList = [SELECT Id, NAICScode FROM Account LIMIT 2];
        accObjList[0].NAICScode = '1234';
        update accObjList;
        
        //Assert Check: Account NAICS Description and Adaptive industry
        List<Industry_Classification__c> icObjLst = [SELECT Id, NAICS_Description__c, Adaptive_Industry__c FROM Industry_Classification__c where id =: icObjList[0].id];
        List<Account> accObjLst = [SELECT Id, NAICScode, Adaptive_Industry__c, NAICS_Description__c FROM Account where id =: accObjList[0].id];
        System.assertEquals(accObjLst[0].NAICS_Description__c, icObjLst[0].NAICS_Description__c);
        System.assertEquals(accObjLst[0].Adaptive_Industry__c, icObjLst[0].Adaptive_Industry__c);
    }
    
    /**@@
    #DESCRIPTION     : This is test method which creates the test data for 'setContactStatusUnqualified' methods of Trigger_Account_Helper Apex class.
    #Paramaters      : None
    @@**/
    public static testMethod void setContactStatusUnqualified_Test(){
        
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Get the test Account records by using a SOQL query
        List<Account> accObjList = [SELECT Id, NAICScode, Status__c FROM Account LIMIT 1];
        
        //Get the test Contact records by using a SOQL query
        List<Contact> conObjList = [SELECT Id,Status__c FROM contact LIMIT 3];
        
        //Assert check before account update
        system.assertNotEquals(conObjList[0].Status__c, 'Unqualified');
        
        //changing account status to cancelled, it's updating the status of all contacts under that account to 'Unqualified' and Unqualified Reason to 'No Interest'.
        accObjList[0].Status__c = 'Cancelled';
        update accObjList;
        
        
        system.assertEquals(accObjList.size(), 1);
        
        list<contact> conlst = [Select id,Status__c,Unqualified_Reason__c,Lifecycle_Stage__c,Timestamp_Lifecycle_MAL__c from contact where Accountid =: accObjList[0].id ];
        
        //Assert check: when Account status is cancelled 
        System.assertEquals(accObjList[0].Status__c, 'Cancelled');
        
        //Assert check:  when Account status is changed to cancelled, update the status of all contacts under that account to 'Unqualified' and Unqualified Reason to 'No Interest'. 
        system.assertEquals(conlst[0].Status__c, 'Unqualified');
        system.assertEquals(conlst[0].Unqualified_Reason__c, 'No Interest');
        
        //Assert Check: when contact status is move to Unqualified,it moves lifecycle to MAL
        system.assertEquals(conlst[0].Lifecycle_Stage__c, 'MAL');
        
        //Assert Check: Other contact related to that account where account status is changed to Cancelled
        system.assertEquals(conlst[1].Status__c, 'Unqualified');
        system.assertEquals(conlst[1].Unqualified_Reason__c, 'No Interest');
        system.assertEquals(conlst[2].Status__c, 'Unqualified');
        system.assertEquals(conlst[2].Unqualified_Reason__c, 'No Interest');
        
    }//End of test method
    
    /**@@
    #DESCRIPTION     : This is test method which creates the test data for 'reassignContactOwnershipCancelledAccounts' methods of Trigger_Account_Helper Apex class.
    #Paramaters      : None
    @@**/
    
    public static testMethod void reassignContactOwnershipCancelledAccounts_Test(){
        
        //Inserting custom setting
        DataFactory.insertCustomSetting();
        
        //Get users
        List<User> userObjList = [Select Id from user LIMIT 3];
        
        //Get the test Account records by using a SOQL query
        List<Account> accObjList = [SELECT Id, NAICScode, Status__c FROM Account LIMIT 1];
        accObjList[0].Status__c = 'Active';
        accObjList[0].Type = 'Customer';
        accObjList[0].OwnerId = userObjList[0].id;
        update accObjList;
        
        //Get the test Contact records by using a SOQL query
        List<Contact> conObjList = [SELECT Id,Status__c FROM contact LIMIT 3];
        conObjList[0].OwnerId = userObjList[1].id;
        conObjList[0].AccountId = accObjList[0].id;
        update conObjList;
        
        //Get Opportunities 
        List<Opportunity> oppObjList = [Select Id from Opportunity LIMIT 1];
        oppObjList[0].AccountId = accObjList[0].id;
        oppObjList[0].SDR_Owners__c = userObjList[2].id;
        oppObjList[0].stagename = 'Closed Won';
        Update oppObjList;
        
        //updating Account Status to Cancelled
        accObjList[0].Status__c = 'Cancelled';
        update accObjList;
        
        //Assert Check: When a customer account's status is moved to Cancelled, all contacts should be re-assigned to the SDR Owner on the most recent Closed Won opportunity.
        List<User> userCheckList = [Select id, LastName from user where id IN: userObjList];
        List<contact> ownerConList = [Select id , Owner.LastName from Contact where id IN: conObjList];
        System.assertEquals(ownerConList[0].Ownerid, userCheckList[2].id);
        System.assertEquals(ownerConList[1].Ownerid, userCheckList[2].id);
        System.assertEquals(ownerConList[2].Ownerid, userCheckList[2].id);
        
        }//End of reassignContactOwnershipCancelledAccounts_Test test method
    
    //Testmethod to cover updateContactOpportunityOwners method
    /*public static testMethod void updateContactOpportunityOwners_Test(){
        List<Account> AccntListToBeInserted = new list<Account>();
        List<Contact> listContactsToBeInserted = new list<Contact>();
        List<User> listPortalUsersTobeInserted = new list<User>();
        List<Account> AccntListToBeInserted1 = new list<Account>();
        List<Contact> listContactsToBeInserted1 = new list<Contact>();
        List<Opportunity> listOfOpportunityToBeInserted = new list<Opportunity>();
        
        
        List<user> u = DataFactory.createUserTestRecordsWithRole('test',2);
        //System.assertEquals(5,u.size());
        System.RunAs(new user(id= u[0].id)){
            //Upserting a Custom Setting Record to Run the Trigger as it is used as an entry criteria for the Trigger
            DataFactory.insertCustomSetting();
            
            //Inserting Account
            AccntListToBeInserted = DataFactory.createAccountTestRecords('TestJadeAccount',1);
            
            //Insert Opportunity
            listOfOpportunityToBeInserted = DataFactory.createOpportunityTestRecords('TestOpportunity',1);
            
            //Inserting Contact
            listContactsToBeInserted = DataFactory.createContactTestRecords('TestLName',AccntListToBeInserted[0].id,2);
            
            //Inserting Record for Portal USER      
            listPortalUsersTobeInserted = DataFactory.insertPortalUser(listContactsToBeInserted[0].id);
        }//End of System.RunAs()

        if(!listPortalUsersTobeInserted.isEmpty()){
            System.RunAs(new user(id = listPortalUsersTobeInserted[0].id)){
                
                //Inserting Account
                //AccntListToBeInserted1 = DataFactory.createAccountTestRecords('TestAIAccount',1);
                
                //Inserting Contact
                listContactsToBeInserted1 = DataFactory.createContactTestRecords('TestLName',AccntListToBeInserted[0].id,2);
                
                //Insert Opportunity
                listOfOpportunityToBeInserted = DataFactory.createOpportunityTestRecordsWithoutUserInsert('TestOpportunity',1,AccntListToBeInserted,listContactsToBeInserted1);
                
                for(Account acc: AccntListToBeInserted){
                    acc.OwnerId = u[1].id;
                }
                UPDATE AccntListToBeInserted;
                
            }//End of System.RunAs()
        }//End of IF
    }//End of updateContactOpportunityOwners_Test()
    */
    
}//End of class