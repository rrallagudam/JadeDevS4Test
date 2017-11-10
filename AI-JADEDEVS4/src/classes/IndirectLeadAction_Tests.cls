@IsTest
public class IndirectLeadAction_Tests {
	@TestSetup static void init() {
		TestData.initTriggerSettings();
	}
    
    @IsTest public static void leadConversionTests(){
        Account testAccount = new Account(Name= 'Test Account Company',                                           
                                          Status__c='Active',                                          
                                          BillingCountry='USA',
                                          BillingPostalCode='12345');
		insert testAccount;
        System.assert(testAccount != null);
        
        Lead testLead = new Lead(Company='Test Account Company',
                        FirstName = 'LeadFName',
                        LastName='LName',
                        Country='USA',
                        Website = 'www.company.com',
                        PostalCode = '12345',
                        Email='testemail@test.com',
						Type__c='Customer Prospect');
		insert testLead;
        System.assert(testLead != null);
        
        IndirectLeadAction.process(new List<Lead>{ testLead });
        
        testLead = (Lead)SObjectUtils.get('Lead', testLead.Id);
        //System.assertEquals(true, testLead.IsConverted);
        
        //System.assert( Database.countQuery('SELECT Count() FROM CampaignMember') > 0);
        //System.assert(Database.countQuery('SELECT Count() FROM Opportunity WHERE Partner_Opportunity__c=True') > 0);
    }
    
    @IsTest public static void leadWebsiteAccountMatchTests(){
        Account testAccount = new Account(Name= 'Test Account Company',                                           
                                          Status__c='Active',                                          
                                          Website = 'http://www.company.com',
                                          BillingCountry='USA',
                                          BillingPostalCode='12345');
		insert testAccount;
        System.assert(testAccount != null);
        
        Lead testLead = new Lead(Company='Test Account Company',
                        FirstName = 'LeadFName',
                        LastName='LName',
                        Country='USA',
                        Website = 'www.company.com',
                        PostalCode = '12345',
                        Email='testemail@test.com');
		insert testLead;
        System.assert(testLead != null);
        IndirectLeadAction.process(new List<Lead>{ testLead });
        
        testLead = (Lead)SObjectUtils.get('Lead', testLead.Id);
        System.assertEquals(false, testLead.IsConverted);
        System.assertEquals(IndirectLeadAction.ChannelLead_QueueID, testLead.OwnerId);
    }
}