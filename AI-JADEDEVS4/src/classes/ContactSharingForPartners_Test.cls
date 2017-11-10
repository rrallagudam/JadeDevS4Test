/**@@
#APEX CLASS NAME       :   ContactSharingForPartners_Test
#DESCRIPTION           :   This is test class for ContactSharingForPartners Apex class.
@@**/
@IsTest
public class ContactSharingForPartners_Test {
    
    public static testMethod void ContactSharingForPartner_Testmethod(){
    
    //Upserting a Custom Settign Record to Run the Trigger as it is used as an entry criteria for the Trigger
    TriggerSettings__c customSettingObj = TriggerSettings__c.getOrgDefaults();    

        customSettingObj = TriggerSettings__c.getOrgDefaults();
    customSettingObj.Name = 'TestName';
        customSettingObj.Opportunity_Trigger_Enabled__c = true;
        
        upsert customSettingObj;
    
    //Inserting Custom Setting SkipAutomationSetting__c
    DataFactory.insertCustomSetting();
        
        //Inserting Account
    List<Account> AccntListToBeInserted = DataFactory.createAccountTestRecords('TestJadeAccount',1);
        
        //Test Record for Contact
        Id devRecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
    
    List<Contact> listContactsToBeInserted = DataFactory.createContactTestRecords('TestLName',AccntListToBeInserted[0].id,1);
        
    //Inserting Record for Portal USER    
    List<User> listPortalUsersTobeInserted = DataFactory.insertPortalUser(listContactsToBeInserted[0].id);
        
    
    //Inserting Account
    List<Account> AccntListToBeInserted1 = DataFactory.createAccountTestRecords('TestJadeAccount1',1);
    
    //Test Record for Contact
        Id devRecord1TypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
    
    List<Contact> listContactsToBeInserted1 = DataFactory.createContactTestRecords('TestLName1',AccntListToBeInserted1[0].id,1);
    
    for(Contact con : listContactsToBeInserted1){
      con.Partner_Contact__c = listContactsToBeInserted[0].id;
    }
    UPDATE listContactsToBeInserted1;
    
    //AssertEquals Check
    List<ContactShare> ListContactShare = [SELECT id,ContactId,UserOrGroupId,RowCause FROM ContactShare WHERE ContactId =: listContactsToBeInserted1[0].id AND RowCause = 'Manual'];
    
    System.assertEquals(ListContactShare.size(),1);
        
    }//End of ContactSharingForPartner_Testmethod()
}//End of class