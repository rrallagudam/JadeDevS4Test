@isTest
private class TestLeadConversion {


    private static final String TEST_EMAIL_ADDRESS = 'test@testdomain.com';


	@isTest static void testNoEmailNoAddressMatch() {
		Lead l = TestDataFactory.createLead(false);
		Test.startTest();
		insert l;
		Test.stopTest();
		System.assertEquals(false, l.isConverted, 'The lead has been converted');
	}

	@isTest static void testEmailMatchConvert() {
		Account a = new Account(RecordTypeId=TestDataFactoryHelper.getAccountRecordType('Customer'), Name='Traction On Demand',
		CurrencyIsoCode = 'CAD' );

		Contact c = new Contact(RecordTypeId=TestDataFactoryHelper.getContactRecordType('Customer'),
		 LastName='Chow', Phone='6043235656', Account = a, Email = TEST_EMAIL_ADDRESS);

		Lead l = TestDataFactory.createLead(false);
		l.RecordTypeId = TestDataFactoryHelper.getLeadRecordType('MAL');
		l.Email = TEST_EMAIL_ADDRESS;


		Test.startTest();
		insert l;
		Test.stopTest();
		System.assertEquals(c.Id, l.ConvertedContactId, 'Lead information has not been converted to a contact');

	}
	@isTest static void testAddressMatchConvert(){
		
		Account a = new Account(RecordTypeId=TestDataFactoryHelper.getAccountRecordType('Customer'), Name='Traction On Demand',
		CurrencyIsoCode = 'CAD', BillingCountry = 'Canada', BillingState='BC' );
		Lead l = TestDataFactory.createLead(false);
		l.Company = a.Name;
		l.Country = a.BillingCountry;
		l.State = a.BillingState;
		
		Test.startTest();
		insert l;
		Test.stopTest();
		System.assertEquals(a.Id, l.ConvertedAccountId, 'Lead information has not been converted to an account');
		

	}

	@isTest static void testEmailBulkMatchConvert() {
		Account a = new Account(RecordTypeId=TestDataFactoryHelper.getAccountRecordType('Customer'), Name='Traction On Demand',
		CurrencyIsoCode = 'CAD' );

		Contact c = new Contact(RecordTypeId=TestDataFactoryHelper.getContactRecordType('Customer'),
		 LastName='Chow', Phone='6043235656', Account = a, Email = TEST_EMAIL_ADDRESS);

		List<Lead> leadList = TestDataFactory.createLeads(false, 50);
		for(Lead l: leadlist) {
			l.RecordTypeId = TestDataFactoryHelper.getLeadRecordType('MAL');
			l.Email = TEST_EMAIL_ADDRESS;
		}
		Test.startTest();
		insert leadList;
		Test.stopTest();

		System.assertEquals(c.Id, leadList[0].ConvertedContactId, 'Lead 1 information has not been converted to a contact');
		System.assertEquals(c.Id, leadList[1].ConvertedContactId, 'Lead 2 information has not been converted to a contact');
		System.assertEquals(c.Id, leadList[2].ConvertedContactId, 'Lead 3 information has not been converted to a contact');


	}

	@isTest static void testAddressBulkMatchConvert() {
		Account a = new Account(RecordTypeId=TestDataFactoryHelper.getAccountRecordType('Customer'), Name='Traction On Demand',
		CurrencyIsoCode = 'CAD', BillingCountry = 'Canada', BillingState='BC');

		List <Lead> leadList = TestDataFactory.createLeads(false, 3);
		for(Lead l:leadList){
			l.Company = a.Name;
			l.Country = a.BillingCountry;
			l.State = a.BillingState;
		}
		Test.startTest();
		insert leadList;
		Test.stopTest();

		System.assertEquals(a.Id, leadList[0].ConvertedAccountId, 'Lead 1 information has not been converted to an account');
		System.assertEquals(a.Id, leadList[1].ConvertedAccountId, 'Lead 2 information has not been converted to an account');
		System.assertEquals(a.Id, leadList[2].ConvertedAccountId, 'Lead 3 information has not been converted to an account');
		
	}
	@isTest static void testMixedMatchConvert(){
		Account a = new Account(RecordTypeId=TestDataFactoryHelper.getAccountRecordType('Customer'), Name='Traction On Demand',
		CurrencyIsoCode = 'CAD' );

		Contact c = new Contact(RecordTypeId=TestDataFactoryHelper.getContactRecordType('Customer'),
		 LastName='Chow', Phone='6043235656', Account = a, Email = TEST_EMAIL_ADDRESS);

		List<Lead> leadList = TestDataFactory.createLeads(false,3);
		Lead l = leadList.get(0);
		l.Email = TEST_EMAIL_ADDRESS;

		l = leadList.get(1);
		l.Company = a.Name;
		l.City = a.BillingCountry;
		l.State = a.BillingState;

		System.assertEquals(c.Id, leadList[0].ConvertedContactId, 'Lead information has not been converted to a contact');
		System.assertEquals(a.Id, leadList[1].ConvertedAccountId, 'Lead information has not been converted to an account');
		System.assertEquals(false,leadList[2].isConverted, 'Lead has been converted');


	}

	
}