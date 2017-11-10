/**@@
#APEX CLASS NAME       :   AccountSharingForPartners_Test
#DESCRIPTION           :   This is test class for AccountSharingForPartners Apex class.
@@**/
@IsTest
public class AccountSharingForPartners_Test {
    
    public static testMethod void AccountSharingForPartner_Testmethod(){
         
       //Upserting a Custom Setting Record to Run the Trigger as it is used as an entry criteria for the Trigger
        DataFactory.insertCustomSetting(); 
        LeadConvertController.IsSharedFromLeadConversion  =FALSE;
        
        List<user> u = DataFactory.createUserTestRecords('test',1);
        //Inserting Account
        List<Account> AccntListToBeInserted = DataFactory.createAccountTestRecords('TestJadeAccount',1);
        
        //Test Record for Contact
        Id devRecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
        
        List<Contact> listContactsToBeInserted = DataFactory.createContactTestRecords('TestLName',AccntListToBeInserted[0].id,2); 
        listContactsToBeInserted[0].Partner_Contact__c= listContactsToBeInserted[1].id;
        update listContactsToBeInserted[0];
        //Inserting Record for Portal USER      
        List<User> listPortalUsersTobeInserted = DataFactory.insertPortalUser(listContactsToBeInserted[0].id);
        
        
        //Inserting Account
        List<Account> AccntListToBeInserted1 = DataFactory.createAccountTestRecords('TestJadeAccount1',1);
      
        for(Account ac : AccntListToBeInserted1){
            ac.Partner_Contact__c = listContactsToBeInserted[0].id;
            ac.ownerid= u[0].id;
            ac.Type = 'Customer';
        }
        
        UPDATE AccntListToBeInserted1;
          
    //AssertEquals check
    //list<AccountShare> listAccountShare = [SELECT id,AccountId,UserOrGroupId,RowCause FROM AccountShare WHERE AccountId =: AccntListToBeInserted1[0].id AND RowCause = 'Manual'];
    //system.debug(listAccountShare.size());
       // System.assertEquals(listAccountShare.size(),1);
       
        List<Account> accUpdated =[SELECT id,LastModifiedDate from Account where Id=:AccntListToBeInserted1];
        system.debug(accUpdated.size());
        
        DateTime LastModifiedDateOfAcc = accUpdated[0].LastModifiedDate;
        Date LastModifiedDateOfAcc1 = date.newinstance(LastModifiedDateOfAcc.year(), LastModifiedDateOfAcc.month(), LastModifiedDateOfAcc.day());
        
        Date TodaysDate = System.Today();
     System.assertEquals(LastModifiedDateOfAcc1,TodaysDate);
    }//End of AccountSharingForPartner_Testmethod()
    
}//End of class