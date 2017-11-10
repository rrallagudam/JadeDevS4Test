/**@@
#CLASS NAME                :    User_Trigger_Test
#DESCRIPTION                   :   Test class for "Trigger_User_Helper"   
@@**/

@isTest(seeAllData=false)
public class User_Trigger_Test{
    /**@@
        #TEST METHOD   : portalUseronContact()
        #DESCRIPTION   : Inserting test contact records for populating community user name on contact
    @@**/
    public static testMethod void portalUseronContact(){
        List<User> userList;
        List<Contact> contactList;
        
        List<User> runAsUser = DataFactory.insertRunAsUser();
        
        Test.startTest();
        
        System.runAs(runAsUser[0]){
            //Inserting custom setting
            DataFactory.insertCustomSetting();
            
            //Insert acount record
            List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
            System.debug('**accList**'+accList);
            
            accList[0].Type = CustomConstants.AccountTypePartnerProspect;
            update accList;
            
            //Insert contact record
            contactList = DataFactory.createContactTestRecords('ContactMTest',accList[0].Id,1);
            userList = DataFactory.insertPortalUser(contactList[0].id);
            
            userList[0].UserName ='username1@adaptiveinsights.com';
            
            Trigger_User_Helper.runOnce = false;
            
        	update userList;
            
        }
        
		Test.stopTest();        
        
        System.assertEquals(contactList.size()>0,true);
        List<User> usrList = [Select id,UserName, contactId, isActive from user where contactId =: contactList[0].id];
        List<Contact> conlst = [Select id,Portal_User_Name__c from contact where Id =: contactList[0].id];
        system.assertEquals(conlst[0].Portal_User_Name__c, usrList[0].UserName);
        
    }   
}