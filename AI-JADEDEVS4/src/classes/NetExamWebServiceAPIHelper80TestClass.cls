/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 */
@isTest(SeeAllData=true)
private class NetExamWebServiceAPIHelper80TestClass{

    public class MissingAccountInformationException extends Exception{}
    public class NetExamWebserviceException extends Exception{}
    
    //NetExam API Credentials    
    private static string ne_apiKey = 'APIKey';
    private static string ne_apiUser = 'APIUsername';
    private static string ne_apiPass = 'APIPassword';

    // Email domain
    private static string emailDomain = 'adaptiveinsights.com';
    
    public static List<Account> lstAccs = new list<Account>();
    public static List<Contact> lstContacs = new list<Contact>();
    
    private static void createTestAccounts()
    {
    
         //0 Positive Test
         Account testAccount = new Account();
         testAccount.Name = 'NE PositiveTest';
         testAccount.Account_Status__c = 'Partner';
                         
         lstAccs.add(testAccount);
        
         Insert lstAccs;
    
    }
    
       
    private static void createTestContacts() {
        
        //0 Positive Test
        Contact testContact = new Contact();
        testContact.FirstName = 'TestUser';
        testContact.LastName  = 'NEtester0';
        testContact.Email = 'tester@'+emailDomain;
        testContact.AccountId  = lstAccs[0].ID;
        testContact.MailingStreet  = '0 Main Street';
        testContact.MailingCity = 'Beverly Hills';
        testContact.MailingState = 'CA';
        testContact.MailingPostalCode  = '90210';
        testContact.MailingCountry = 'United States';       
                
        lstContacs.add(testContact);        
          
        
        
        //1 Elearning Opportunity Test
         List<Opportunity> objCloseWonOptty = [SELECT Account.Id 
                                           FROM Opportunity WHERE StageName = 'Closed Won'
                                           AND Id IN(SELECT OpportunityId FROM OpportunityLineItem WHERE Product2.Name = 'eLearning') 
                                           ORDER BY CloseDate DESC LIMIT 1];                                           
                 
        Contact testContact2 = new Contact();
        testContact2.FirstName = 'TestContact2';
        testContact2.LastName  = 'NEtester1';
        testContact2.Email = 'tester2@'+emailDomain;
        testContact2.AccountId  = objCloseWonOptty[0].Account.Id;
        testContact2.MailingStreet  = '1 Main Street';
        testContact2.MailingCity = 'Beverly Hills';
        testContact2.MailingState = 'CA';
        testContact2.MailingPostalCode  = '90210';
        testContact2.MailingCountry = 'United States';       
                
        lstContacs.add(testContact2);
        
        //2 Training Credit Opportunity
        List<Opportunity> objClosedWonTCOppty = [SELECT Account.Id FROM Opportunity WHERE StageName = 'Closed Won'
                                                AND Id IN(SELECT OpportunityId FROM OpportunityLineItem WHERE Product2.Name = 'Training Credits') 
                                                ORDER BY CloseDate DESC LIMIT 1];
                                                
        Contact testContact3 = new Contact();
        testContact3.FirstName = 'TestContact3';
        testContact3.LastName  = 'NEtester2';
        testContact3.Email = 'tester3@'+emailDomain;
        testContact3.AccountId  = objClosedWonTCOppty[0].Account.Id;
        testContact3.MailingStreet  = '2 Main Street';
        testContact3.MailingCity = 'Beverly Hills';
        testContact3.MailingState = 'CA';
        testContact3.MailingPostalCode  = '90210';
        testContact3.MailingCountry = 'United States';       
                
        lstContacs.add(testContact3); 
        
        Insert lstContacs;
        
    }
    
   static testMethod void validateSendContactToNetExamExtended()
    {
        
        String result = '';
        string expectedResult = '';
        String testAccountID = '';
        String accountName = '';
        Account objAccount = null;  
        Contact objContact = null;      
    
               
        //Create the test Accounts    
        createTestAccounts();
        
        Profile p = [SELECT Id FROM Profile WHERE Name='System Administrator']; //Standard User
        string label = 'MyTestUserAlias';
        string rand = String.valueOf(Math.rint(Math.random() * 10000));
        
        User u = new User(Alias='testUser', Email='test@'+emailDomain,EmailEncodingKey='UTF-8', 
                          LastName=label, LanguageLocaleKey='en_US',
                          LocaleSidKey='en_US', ProfileId = p.Id,
                          TimeZoneSidKey='America/Los_Angeles',
                          UserName='unitTest' + rand + '@'+emailDomain);
         
                          
        System.runAs(u) {
            createTestContacts();
        } 
         
                      
        //Positive Test 0
        //****************************************************************************************** 
        String contactID = lstContacs[0].ID;
        result = NetExamWebServiceAPIHelper80.SendContactToNetExam(contactID);
        System.assertEquals(result, NEConstants.CONTACT_SENT);
        //******************************************************************************************
        
        //Positive Test Elearning Credit
        //****************************************************************************************** 
        contactID = lstContacs[1].ID;
        result = NetExamWebServiceAPIHelper80.SendContactToNetExam(contactID);
        System.assertEquals(result, NEConstants.CONTACT_SENT);
        //******************************************************************************************
        
        //Positive Test Training Credit
        //****************************************************************************************** 
        contactID = lstContacs[2].ID;
        result = NetExamWebServiceAPIHelper80.SendContactToNetExam(contactID);
        System.assertEquals(result, NEConstants.CONTACT_SENT);
        //******************************************************************************************
               
        //Test Send Contact from Trigger method5
        //******************************************************************************************
        contactID = lstContacs[0].ID;
        Set<Id> contactIds = new Set<Id>();
        contactIds.add(contactID);           
        
        NetExamWebServiceAPIHelper80.SendContactListToNetExam(contactIds);
        System.assertEquals(contactID,lstContacs[0].ID);      
        //******************************************************************************************
        
    }   
    
    
 }