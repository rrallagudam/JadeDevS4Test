/**@@
#APEX CLASS NAME       :   LeadSharingForPartners_Test
#DESCRIPTION           :   This is test class for LeadForPartners Apex class.
@@**/
@IsTest
public class LeadSharingForPartners_Test {
    
    public static testMethod void LeadSharingForPartner_Testmethod(){
    
    //Upserting a Custom Setting Record to Run the Trigger as it is used as an entry criteria for the Trigger
    DataFactory.insertCustomSetting();
  
        
        //Inserting Account
    List<Account> AccntListToBeInserted = DataFactory.createAccountTestRecords('TestJadeAccount',1);
        
        //Test Record for Contact
        Id devRecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
    
    List<Contact> listContactsToBeInserted = DataFactory.createContactTestRecords('TestLName',AccntListToBeInserted[0].id,1);
        
        //Inserting Record for Portal USER    
    List<User> listPortalUsersTobeInserted = DataFactory.insertPortalUser(listContactsToBeInserted[0].id);
    
    
    //inserting Lead
    List<Lead> ListLead = DataFactory.createLeadTestRecords('testLastName',1);
        
    For(lead ld : ListLead){
      ld.Partner_Contact__c = listContactsToBeInserted[0].id;
    }
    UPDATE ListLead;

    //AssertEquals Check
    List<LeadShare> ListLeadShare = [SELECT id,LeadId,UserOrGroupId,RowCause FROM LeadShare WHERE LeadId =: ListLead[0].id AND RowCause = 'Manual'];
    
    System.assertEquals(ListLeadShare.size(),1);
        
    }//End of LeadSharingForPartner_Testmethod()
}//End of class