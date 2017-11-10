@isTest
                        
private class TrialKeyContactWebserviceTest {

  @isTest static void sendRequestWithEmailMethodTestWrapper(){
      TestData.initTriggerSettings();
      insert new Trial_Server_URL__c(
                Name = 'Trial Server URL',
                Endpoint__c = 'https://sfdc.adaptiveplanning.com/app',
                Input_Email__c = 'webservice',
                Input_Password__c = 'changeme');

      Account testAcc = new Account(
                  Name = 'Test');
      insert testAcc;

    Contact testContact =  new Contact(
        FirstName = 'test', 
        LastName = 'Contact',
        Email = 'sad@as2w3d.com',
        AccountId = testAcc.Id
      );
    insert testContact;

    Test.startTest();
      Test.setMock(HttpCalloutMock.class, new TrialKeyWebservGenerator());
      sendRequestMethodTest(testContact.Id);
      //string strRes = TrialKeyContactWebservice.getTrialKey(testContact.Id);      
    Test.stopTest();
  }
  
  @future(callout=true)
    static void sendRequestMethodTest(Id cid) {
        Contact testContact = [SELECT Id, Email, Name, Title, Phone, MailingCity, MailingStreet, MailingState, MailingPostalCode, AccountId FROM Contact WHERE Id = :cid LIMIT 1]; 
        HttpResponse res = TrialKeyContactWebservice.sendRequest(testContact);
        TrialKeyContactWebservice.sendEmail(testContact.Id);       
        TrialKeyContactWebservice.resultTextVar = 'OK';        
        string strRes = TrialKeyContactWebservice.getTrialKey(testContact.Id);
        TrialKeyContactWebservice.resultTextVar = 'Email in use';
        string strRes2 = TrialKeyContactWebservice.getTrialKey(testContact.Id); 
        TrialKeyContactWebservice.resultTextVar = 'No Company available';
        string strRes3 = TrialKeyContactWebservice.getTrialKey(testContact.Id);  
        TrialKeyContactWebservice.resultTextVar = 'Error';
        string strRes4 = TrialKeyContactWebservice.getTrialKey(testContact.Id);  
        TrialKeyContactWebservice.resultTextVar = '';
        string strRes5 = TrialKeyContactWebservice.getTrialKey(testContact.Id);                                 
        //System.assert(res == null);
    }

  @isTest static void sendRequestWithOutEmailMethodTestWrapper(){
      TestData.initTriggerSettings();
      insert new Trial_Server_URL__c(
                Name = 'Trial Server URL',
                Endpoint__c = 'https://sfdc.adaptiveplanning.com/app',
                Input_Email__c = 'webservice',
                Input_Password__c = 'changeme');
        
      Account testAcc = new Account(
                  Name = 'Test');
      insert testAcc;

    Contact testContact =  new Contact(
        FirstName = 'test', 
        LastName = 'Contact',
        AccountId = testAcc.Id
      );
    insert testContact;

    Test.startTest();
      sendRequestWithOutEmailMethodTest(testContact.Id);
    Test.stopTest();
  }

  @future(callout=true)
    static void sendRequestWithOutEmailMethodTest(Id testContact) { 
        Test.setMock(HttpCalloutMock.class, new TrialKeyWebservGenerator());        
        HttpResponse res = TrialKeyContactWebservice.sendRequest([SELECT Id, Email, Name, Title, Phone, MailingCity, MailingStreet, MailingState, MailingPostalCode, AccountId FROM Contact WHERE Id = :testContact]);
        //System.assert(res == null);
    }
}