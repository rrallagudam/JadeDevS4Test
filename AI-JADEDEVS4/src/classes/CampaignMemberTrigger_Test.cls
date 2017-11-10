@IsTest
public class CampaignMemberTrigger_Test
{       
    @IsTest 
     public static void Test1(){
     Test.startTest();
        Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
         
        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount.Id);
        insert testContact;
        
        Insert new TriggerSettings__c(Name = 'Settings', CampaignTrigger_Enabled__c = TRUE);
        
        Campaign testCampaign = new Campaign(Name='Test Campaign');
        insert testCampaign;
        
      //Creates a new campaign memeber, associaites it with 1 provider sales campaign, and inserts
          contact oCon = new Contact(ID=testContact.ID,Status__c='Unqualified',Unqualified_Reason__c='Your are Unqualified');
        update oCon;  
        CampaignMember newMember = 
        new CampaignMember(CampaignID =TestCampaign.ID, ContactID = oCon.ID);
        insert newMember; 
        
        Test.stopTest();               
                                     
     }
     
}