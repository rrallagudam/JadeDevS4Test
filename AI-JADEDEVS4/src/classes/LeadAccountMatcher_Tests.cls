@IsTest
public class LeadAccountMatcher_Tests {
    @TestSetup static void init() {
		TestData.initTriggerSettings();
	}
    
    @IsTest public static void strippedWebsiteParsingTests(){
        // We only need TLD (.com, .org, .net, etc..) and domain name.
        String website = 'http://www.company.com';
        String[] tokens = website.split('\\.');
        System.assertEquals(3, tokens.size());
        String strippedWebsite = tokens[tokens.size()-2 ] + '.' + tokens[ tokens.size()-1 ];
        System.assertEquals('company.com', strippedWebsite);
    }
    
    @IsTest public static void leadWebsiteMatchTests(){
        Account testAccount = new Account(Name= 'Test Account Company',                                           
                                          Status__c='Active',
                                          Website = 'www.company.com',
                                          BillingCountry='USA',
                                          BillingPostalCode='12345');
		insert testAccount;
        System.assert(testAccount != null);
        
        Lead testLead = new Lead(Company='Test Account Company',
                        FirstName = 'LeadFName',
                        LastName='LName',
                        Country='USA',
                        PostalCode = '12345',
                        Email='testemail@test.com');
		insert testLead;
        System.assert(testLead != null);
        
        LeadAccountMatcher matcher = new LeadAccountMatcher(testLead).validateWebsite();
        System.assert(matcher.leadContext != null);
        System.assertEquals(true, matcher.hasErrors() );
        testlead.Website = 'company';
        matcher = new LeadAccountMatcher(testLead).validateWebsite();
        System.assertEquals(true, matcher.hasErrors() );
        
        testlead.Website = 'http://www.company';
        matcher = new LeadAccountMatcher(testLead).validateWebsite();
        System.assertEquals(true, matcher.hasErrors() );
        
        testlead.Website = 'www.company';
        matcher = new LeadAccountMatcher(testLead).validateWebsite();
        System.assertEquals(true, matcher.hasErrors() );
        
        testlead.Website = 'www.company.com';
        matcher = new LeadAccountMatcher(testLead).validateWebsite();
        System.assert(matcher.leadContext != null);
        System.assertEquals(false, matcher.hasErrors() );
        update testLead;
        
        List<Account> accountList = Database.query( matcher.websiteMatchSOQL() );
        System.assertEquals(1, accountList.size());
        
        accountList = matcher.getMatchingAccountsByWebsite();
        System.assertEquals(1, accountList.size());
        
        testAccount.Website = 'http://www.company.com';
        update testAccount;
        
        accountList = matcher.getMatchingAccountsByWebsite();
        System.assertEquals(1, accountList.size());
    }
}