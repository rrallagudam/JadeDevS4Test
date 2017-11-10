/**@@
#CLASS NAME    :  trac_LookupSObjectControllerTest
#DESCRIPTION   :  This is test class used to create the test data for Search for account and Contact.
@@**/

@isTest
public class trac_LookupSObjectControllerTest 
{
/**@@
#DESCRIPTION    : This is used to create the test record of Account and contact
#Paramaters     : No Parameters
@@**/
    @isTest
    static void testLookup() 
    {
        string query1;
        string query;
        // Insert account for look up
        List<Account> accList = DataFactory.createAccountTestRecords('ACME Test',1);
        
        // Insert Contact for look up
        List<Contact> conList =DataFactory.createContactTestRecords('Test last name',accList[0].id,1);
        
        // 1. Attempt 'fail' query -- should return no results
        query = 'gibberishquery';
        query1='sgdffd';
        trac_LookupSObjectController.LookupResponse resp = trac_LookupSObjectController.lookup(query, 'Account',accList[0].id);
        trac_LookupSObjectController.LookupResponse resp1 = trac_LookupSObjectController.lookup(query1, 'Contact',accList[0].id);
        System.assertEquals(0, resp.results.size(), 'Should return 0 results for this query -- ' + query);
        System.assertEquals(0, resp1.results.size(), 'Should return 0 results for this query -- ' + query1);
        
        // 2. Attempt 'matching' query
        // Note: SOSL queries always return empty set in test classes to ensure deterministic behaviour.
        //Must mock search results.
       
         Id [] fixedSearchResults= new Id[1];
        fixedSearchResults[0] = conList[0].Id;
        Test.setFixedSearchResults(fixedSearchResults);
		query = 'ACME';
        resp = trac_LookupSObjectController.lookup(query, 'Account',accList[0].id);
        query1 = 'Test';
        resp1 = trac_LookupSObjectController.lookup(query1, 'Contact',accList[0].id);
        
        System.assertEquals(1, resp.results.size(), 'Should have returned a match for this query -- ' + query);
        System.assertEquals(accList[0].Id, resp.results[0].SObjectId, 'Should have returned the matching account id ');
        System.assertEquals(1, resp1.results.size(), 'Should have returned a match for this query -- ' + query1);
        System.assertEquals(conList[0].Id, resp1.results[0].SObjectId, 'Should have returned the matching account id ');

    }//End of testLookup()
}