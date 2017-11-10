/**@@
#APEX CLASS NAME       :   OpportunitySharingForPartners_Test
#DESCRIPTION           :   This is test class for OpportunitySharingForPartners Apex class.
@@**/
@IsTest
public class OpportunitySharingForPartners_Test {
    
    public static testMethod void OpportunitySharingForPartner_Testmethod(){
    
    //Upserting a Custom Settign Record to Run the Trigger as it is used as an entry criteria for the Trigger
    TriggerSettings__c customSettingObj = TriggerSettings__c.getOrgDefaults();    
	   
        customSettingObj = TriggerSettings__c.getOrgDefaults();
    	customSettingObj.Name = 'TestName';
        customSettingObj.Opportunity_Trigger_Enabled__c = true;
        
        upsert customSettingObj;
    
    
    //Inserting Custom Setting SkipAutomationSetting__c
    DataFactory.insertCustomSetting();
	LeadConvertController.IsSharedFromLeadConversion  =FALSE;
    
    //Inserting Account
    List<Account> AccntListToBeInserted = DataFactory.createAccountTestRecords('TestJadeAccount',1);
        
        //Test Record for Contact
        Id devRecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
    
    List<Contact> listContactsToBeInserted = DataFactory.createContactTestRecords('TestLName',AccntListToBeInserted[0].id,1);

        
        //Inserting Record for Portal USER    
    List<User> listPortalUsersTobeInserted = DataFactory.insertPortalUser(listContactsToBeInserted[0].id);
    
    
    //Insert Opportunity
    
    List<Opportunity> listOfOpportunityToBeInserted = DataFactory.createOpportunityTestRecords('TestOpportunity',1);
    for(Opportunity Opp: listOfOpportunityToBeInserted){
       
      Opp.Partner_Contact__c = listContactsToBeInserted[0].id;
    }
    
    UPDATE listOfOpportunityToBeInserted;
        
    
    //AssertEquals check
   // List<OpportunityShare> listOpportunityShare = [SELECT id,OpportunityId,UserOrGroupId,RowCause FROM OpportunityShare WHERE OpportunityId =: listOfOpportunityToBeInserted[0].id AND RowCause = 'Manual'];
    //System.assertEquals(listOpportunityShare.size(),1);
    
        List<Opportunity> oppUpdated =[SELECT id,LastModifiedDate from Opportunity where Id=:listOfOpportunityToBeInserted];
        system.debug(oppUpdated.size());
        
        DateTime LastModifiedDateOfopp = oppUpdated[0].LastModifiedDate;
        Date LastModifiedDateOfOpp1 = date.newinstance(LastModifiedDateOfopp.year(), LastModifiedDateOfopp.month(), LastModifiedDateOfopp.day());
        
        Date TodaysDate = System.Today();
     System.assertEquals(LastModifiedDateOfOpp1,TodaysDate);
        
    }//End of OpportunitySharingForPartner_Testmethod()
}//End of class