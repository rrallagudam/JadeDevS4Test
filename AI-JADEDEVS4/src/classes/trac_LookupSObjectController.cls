/**@@
#CLASS NAME    :  trac_LookupSObjectController
#DESCRIPTION   :  This class is used to return the Account/Contact and display the Account name with its Billing country and State.
@@**/

public without sharing class trac_LookupSObjectController
{
    
    /**@@
#DESCRIPTION    : This method is used to return the Account/Contact depends on the search string.
#Paramaters     :  searchString(String):String to search , sObjectAPIName(String): On which Object to search (e.g. Account/Contact)
@@**/
    @AuraEnabled
    public static LookupResponse lookup(String searchString, String sObjectAPIName,String accid)
    {
       
        // Sanitize the input
        String sanitizedSearchString = String.escapeSingleQuotes(searchString);
        string searchStr=sanitizedSearchString+ '%';
        string conSearch=searchStr;
        String sanitizedSObjectAPIName = String.escapeSingleQuotes(sObjectAPIName);
        List<Result> results = new List<Result>();
        List<List<SObject>> searchList=new  List<List<SObject>>();
        List<List<SObject>> searchListContact=new  List<List<SObject>>();
        
        try 
        {
            if(sanitizedSObjectAPIName=='Account')
            {
                list<Account> listAccount=[select Id,name,BillingCountry,BillingState from Account where Name like :searchStr limit 50 ];
                
                for (Account so : listAccount)
                {
                    String testName = (String)so.get('Name');
                    String testBillingCountry = (String)so.get('BillingCountry');
                    System.debug(sObjectAPIName + ' | ' + testName + ' | ' + so.Id + ' | ' + testBillingCountry);
                    results.add(new Result((String)so.get('Name'), so.Id,(String)so.get('BillingCountry'),(String)so.get('BillingState')));
                }//End of For
            }//End of If
            
            if(sanitizedSObjectAPIName=='Contact')
            {
                //This query will find the entered string on Contact object
              
               /*String searchQuery1 = 'FIND \'' + sanitizedSearchString + '*\' IN ALL FIELDS RETURNING ' +sanitizedSObjectAPIName+ '(id,Name Where AccountId=:accid) Limit 50';
                searchListContact = search.query(searchQuery1);
                
                for (sObject so : searchListContact[0])
                {
                    results.add(new Result((String)so.get('Name'), so.Id));
                }//End of For
                */
                sanitizedSearchString = sanitizedSearchString + '%';
                List<Contact> listContact = [SELECT Id, Name FROM Contact WHERE Name LIKE :sanitizedSearchString AND AccountId = :accid LIMIT 50];
                
                for(Contact c : listContact)
                {
                    results.add(new Result(c.Name, c.Id));
                }
            }//End of If
            
        }//End of Try
        catch (Exception ex)
        {
            LookupResponse resp = new LookupResponse();
            resp.errMsg = ex.getMessage();
            return resp;
        }//End Of catch
        
        LookupResponse resp = new LookupResponse();
        resp.results = results;
        return resp;
    }//End of lookup method
    
    /**@@
#CLASS NAME    :  Result
#DESCRIPTION   :  Class to store the search result 
@@**/
    
    public class Result
    {
        @AuraEnabled public String SObjectLabel {get; set;}
        @AuraEnabled public String SObjectCountry {get; set;}
        @AuraEnabled public String SObjectState {get; set;}
        @AuraEnabled public Id SObjectId {get; set;}
        
        public Result(String sObjectLabel, Id sObjectId, string SObjectCountry, string SObjectState )
        {
            this.SObjectLabel = sObjectLabel;
            this.SObjectCountry = SObjectCountry;
            this.SObjectState= SObjectState;
            this.SObjectId = sObjectId;
        }//End of Result Constructor
        
        public Result(String sObjectLabel, Id sObjectId)
        {
            this.SObjectLabel = sObjectLabel;
            this.SObjectId = sObjectId;
        }//End of Result Constructor
    }//End of Result Class
    
    // Inner class to wrap response
    public class LookupResponse 
    {
        @AuraEnabled public Result[] results {get;set;}
        @AuraEnabled public String errMsg {get;set;}
    }//End of Inner Class LookupResponse
}//End of trac_LookupSObjectController