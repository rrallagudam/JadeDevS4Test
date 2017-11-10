@isTest public class TestDataFactory {


	public static Account createAccount(Boolean doInsert) {
		return createAccounts(doInsert, 1)[0];
	}
	public static Lead createLead(Boolean doInsert) {
		return createLeads(doInsert, 1)[0];
	}

	public static Contact createContact(Boolean doInsert) {
		return createContacts(doInsert, 1)[0];
	}
	public static Opportunity createOpportunity(Boolean doInsert) {
		return createOpportunities(doInsert, 1)[0];
	}

	public static Event createEvent(Boolean doInsert) {
		return createEvents(doInsert, 1)[0];
	}
	public static List<Account> createAccounts(Boolean doInsert, Integer amount) {
		List<Account> accounts = TestDataFactoryHelper.createsObjects(Account.getSObjectType(), amount);
		if(doInsert)
			insert accounts;
		return accounts;
	}
	public static List<Contact> createContacts(Boolean doInsert, Integer amount) {
		List<Contact> contacts = TestDataFactoryHelper.createsObjects(Contact.getSObjectType(), amount);
		if(doInsert)
			insert contacts;
		return contacts;
	}
	public static List<Lead> createLeads(Boolean doInsert, Integer amount) {
		List<Lead> leads = TestDataFactoryHelper.createsObjects(Lead.getSObjectType(), amount);
		if(doInsert)
			insert leads;
		return leads;
	}

	public static List<Opportunity> createOpportunities(Boolean doInsert, Integer amount) {
		List<Opportunity> opportunities = TestDataFactoryHelper.createsObjects(Opportunity.getSObjectType(), amount);
		if(doInsert)
			insert opportunities;
		return opportunities;
	}
	public static List<Event> createEvents(Boolean doInsert, Integer amount) {
		List<Event> events = TestDataFactoryHelper.createsObjects(Event.getSObjectType(), amount);
		if(doInsert)
			insert events;
		return events;
	}


}