@isTest
private class TrialKeyWebserviceTest {

  @isTest static void sendRequestWithEmailMetodTestWrapper(){
      TestData.initTriggerSettings();
      
      insert new Trial_Server_URL__c(
                Name = 'Trial Server URL',
                Endpoint__c = 'https://sfdc.adaptiveplanning.com/app',
                Input_Email__c = 'webservice',
                Input_Password__c = 'changeme');

    Lead testLeadOne =  new Lead(
        FirstName = 'test', 
        LastName = 'Lead', 
        Company = 'test Company',
        Email = 'sad@as2w3d.com'
      );
    insert testLeadOne;

    Test.startTest();
      sendRequestMethodTest(testLeadOne.Id);
    Test.stopTest();
  }

  @future(callout=true)
    static void sendRequestMethodTest(Id testLeadId) {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new TrialKeyWebservGenerator());
        
        // Call method to test.
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        HttpResponse res = TrialKeyWebservice.sendRequest([SELECT Id, Name, Email, Title, Company, Address, Phone FROM Lead WHERE Id = :testLeadId]);
        
        // Verify response received contains fake values
        String contentType = res.getHeader('Content-Type');
        System.assertEquals(contentType, 'application/x-www-form-urlencoded');
        String actualValue = res.getBody();
        String expectedValue = '<getCompanyFromPool>' +
                              '<result>' +
                                  '<resultText>OK</resultText>' +
                                  '<resultValue>0</resultValue>' +
                                  '<password>ey@ars.id@d</password>' +
                                  '<email>sad@as2w3d.com</email>' +
                              '</result>' +
                          '</getCompanyFromPool>';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode());
    }

  @isTest static void sendRequestWithOutEmailMethodTestWrapper(){
      TestData.initTriggerSettings();
      
      insert new Trial_Server_URL__c(
                Name = 'Trial Server URL',
                Endpoint__c = 'https://sfdc.adaptiveplanning.com/app',
                Input_Email__c = 'webservice',
                Input_Password__c = 'changeme');
        
    Lead testLeadOne =  new Lead(
        FirstName = 'test', 
        LastName = 'Lead', 
        Company = 'test Company'
      );
    insert testLeadOne;

    Test.startTest();
      sendRequestWithOutEmailMethodTest(testLeadOne.Id);
    Test.stopTest();
  }

  @future(callout=true)
    static void sendRequestWithOutEmailMethodTest(Id testLeadId) {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new TrialKeyWebservGenerator());
        
        // Call method to test.
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        HttpResponse res = TrialKeyWebservice.sendRequest([SELECT Id, Name, Email, Title, Company, Address, Phone FROM Lead WHERE Id = :testLeadId]);
        
        // Verify response received contains fake values
        String contentType = res.getHeader('Content-Type');
        System.assertEquals(contentType, 'application/x-www-form-urlencoded');
        String actualValue = res.getBody();
        String expectedValue = '<getCompanyFromPool>' +
                                '<result>' +
                                    '<resultText>No email</resultText>' +
                                    '<resultValue>-2</resultValue>' +
                                    '<hitId/>' +
                                '</result>' +
                            '</getCompanyFromPool>';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode());
    }

  @isTest static void getTrialKeyWithOutEmailMethodTest(){
      TestData.initTriggerSettings();
      
      insert new Trial_Server_URL__c(
                Name = 'Trial Server URL',
                Endpoint__c = 'https://sfdc.adaptiveplanning.com/app',
                Input_Email__c = 'webservice',
                Input_Password__c = 'changeme');
        
    Lead testLeadOne =  new Lead(
        FirstName = 'test', 
        LastName = 'Lead', 
        Company = 'test Company'
      );
    insert testLeadOne;

    Test.startTest();
      TrialKeyWebservice.getTrialKey(testLeadOne.Id);
    Test.stopTest();

        List<Trial_Key_History__c> hist = [SELECT Id, Trial_Key_Status__c, Trial_Key_Lead__c FROM Trial_Key_History__c];
        System.assertEquals(1, hist.size());
        System.assertEquals('FAIL', hist.get(0).Trial_Key_Status__c);
        System.assertEquals(testLeadOne.Id, hist.get(0).Trial_Key_Lead__c);
  }
}