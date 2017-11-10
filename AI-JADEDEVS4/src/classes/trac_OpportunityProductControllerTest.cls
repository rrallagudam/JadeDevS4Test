/**
 * trac_OpportunityProductControllerTest
 * @description Unit test for class for trac_OpportunityProductController class
 * @author Thomas Diego Prananta, Traction on Demand
 * @date Sept 14, 2016
 */
@isTest(seeAllData=false)
private class trac_OpportunityProductControllerTest {

	@testSetup static void createTestData() {

		Account testAccount = new Account (Name = 'TestAcc', Status__c = 'Active');

		// Insert a few products
		List<String> unsortedProductNames = new List<String> 
		{'def', 'abc', 'a11', 'a10', 'a2', 'a1', 'a~', 'a_', 'a', 'a.', 'a&', 'a!'};

		List<Product2> productsTestData =  new List<Product2>();
		for (Integer index =0; index < unsortedProductNames.size(); index++) {
			productsTestData.add(
				new Product2(
				Name = unsortedProductNames[index],
				ProductCode = 'Pro-' + index.format(),
				isActive=true));
		}
		insert productsTestData;

		//Insert pricebook entries
		Id pricebookId = Test.getStandardPricebookId();
		List<PricebookEntry> priceBookEntriesData = new List<PricebookEntry>();
		for(Integer index =0; index < productsTestData.size(); index++) {			
			priceBookEntriesData.add(
			new PricebookEntry(
			Pricebook2Id = pricebookId,
			Product2Id = productsTestData[index].Id,
			UnitPrice = 100.00 * index,
			IsActive = true));
		}
		insert priceBookEntriesData;

		//Insert opportunities
        Opportunity oppWithProduct = 
        	new Opportunity(
        		Name='WithProduct',
                AccountId=testAccount.Id,
                StageName='Prospecting',
                Pricebook2Id=pricebookId,
                Type = 'New Business',
                CloseDate = Date.today().AddDays(1)); //CloseDate is required

        Opportunity oppNoProduct = 
        	new Opportunity(
        		Name='NoProduct',
                AccountId=testAccount.Id,
                StageName='Prospecting',
                Type = 'New Business',
                CloseDate = Date.today().AddDays(1)); //CloseDate is required
        
        insert oppWithProduct;
        insert oppNoProduct;

        List<OpportunityLineItem> oliList = new List<OpportunityLineItem> ();
        for(Integer index =0; index < unsortedProductNames.size();index++) {
        	oliList.add ( 
        	new OpportunityLineItem (
        		OpportunityId = oppWithProduct.Id,
        		PricebookEntryId = priceBookEntriesData[index].Id,
        		Quantity = index+1,
        		TotalPrice = index * 1000)); 
        	//Total price must be specified, Quantity cannot be 0
        }
        insert oliList;
	}
	
	@isTest static void getSortedProductNamesTest() {
		Test.startTest();		

		List<String> expectedSortedResults = new List<String>
		{'a', 'a!', 'a&', 'a.', 'a1', 'a10', 'a11', 'a2', 'abc', 'a_', 'a~', 'def'};
		
		
		Opportunity testOpp = 
		[
			SELECT Id, Name, Pricebook2Id
			FROM Opportunity
			WHERE Pricebook2Id != null
			LIMIT 1
		];

		trac_OpportunityProductController testController =  new trac_OpportunityProductController();
		testController.opportunityID = testOpp.Id;
		List<Product2> products = testController.getSortedProductNameList();

		System.assertEquals(
			expectedSortedResults.size(), 
			products.size(), 
			'Expected ' + expectedSortedResults.size() + 'strings, returned: ' + products.size());
		
		for(Integer index =0; index < products.size(); index++) {
			System.assertEquals(
				products[index].Name, 
				expectedSortedResults[index], 
				'Product name not equal, expected: ' + expectedSortedResults[index] + ' returned: ' + products[index].Name);
		}
		Test.stopTest();
	}

	@isTest static void getEmptyProductNamesTest() {
		Test.startTest();

		Opportunity testOpp = 
		[
			SELECT Id, Name, Pricebook2Id
			FROM Opportunity
			WHERE Pricebook2Id = null
			LIMIT 1
		];

		trac_OpportunityProductController testController =  new trac_OpportunityProductController();
		testController.opportunityID = testOpp.Id;
		List<Product2> products = testController.getSortedProductNameList();

		System.assert(products.isEmpty() == true, 'Expected empty product list.');
		Test.stopTest();
	}
	
	
}