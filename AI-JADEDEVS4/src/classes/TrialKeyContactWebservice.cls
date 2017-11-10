global class TrialKeyContactWebservice {

    @TestVisible private static string resultTextVar;

    WebService static String getTrialKey(Id contactId) {
                
        Contact selectedContact = [SELECT Id, Email, Name, Title, Phone, MailingCity, MailingStreet, MailingState, MailingPostalCode, AccountId, Trial_Password__c, Trial_Username__c, Trial_Created_Date__c FROM Contact WHERE Id = :contactId];
        Trial_Key_History__c hist;
        HttpResponse res;

        try {
            hist = new Trial_Key_History__c(
                            Button_Pressed_By__c = UserInfo.getUserId(),
                            Trail_Key_Contact__c = selectedContact.Id,
                            When_Button_Pressed__c = Datetime.now()
            );
            if (selectedContact != null && selectedContact.Email != null) { 
                
                // Getting a response from server for current contact
                res = sendRequest(selectedContact);              

                Dom.Document doc = res.getBodyDocument();
                
                //Retrieve the root element for this document.
                Dom.XMLNode getCompanyFromPool = doc.getRootElement();

                String resultText = getCompanyFromPool.getChildElement('result', null).getChildElement('resultText', null).getText();

                System.debug('resultText === ' + resultText);
                if(test.isRunningTest()){
                    resultText = resultTextVar;
                }

                if(resultText == 'OK'){
                    selectedContact.Trial_Password__c = getCompanyFromPool.getChildElement('result', null).getChildElement('password', null).getText();
                    selectedContact.Trial_Username__c = selectedContact.Email;
                    selectedContact.Trial_Created_Date__c = Date.today();
                    update selectedContact;
                    sendEmail(selectedContact.Id);
                    hist.Trial_Key_Status__c = 'SUCCESS';
                    insert hist;
                    return '1';

                } else if(resultText == 'Email in use'){
                    hist.Trial_Key_Status__c = 'FAIL';
                    insert hist;
                    return '3';

                } else if(resultText == 'No Company available'){
                    hist.Trial_Key_Status__c = 'FAIL';
                    insert hist;
                    return '4';

                } else if(resultText == 'Error'){
                    hist.Trial_Key_Status__c = 'FAIL';
                    insert hist;
                    return '5';
                    
                } else {
                    hist.Trial_Key_Status__c = 'FAIL';
                    insert hist;
                    return '6';
                }

            } else {
                hist.Trial_Key_Status__c = 'FAIL';
                insert hist;
                return '2';
            }
            
        } catch(DMLException e) {
            List<String> toAddresses = new List<String>{'a.insights@waveoc.com'};
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            String subject = e.getMessage();
            String emailPlainText = 'User ' + UserInfo.getUserName() + ' try to create trial Contact creds. User ID: ' + UserInfo.getUserId() + ' User ProfileID: ' + UserInfo.getProfileId() + ' Contact fields: Contact.Id: ' + contact.Id + ' Contact.Name: ' + contact.Name + ' Contact.Email: ' + contact.Email + ' Contact.TrialKey: ' +  contact.Trial_Password__c + ' Contact.TrialUserName: ' +  contact.Trial_Username__c +' Contact.TrialCreatedDate: '+ contact.Trial_Created_Date__c + '\n\n';
            emailPlainText += 'TrialKeyHistory fields:  Button_Pressed_By__c: ' + hist.Button_Pressed_By__c + ' Trail_Key_Contact__c: ' + hist.Trail_Key_Contact__c + ' When_Button_Pressed__c: ' + hist.When_Button_Pressed__c + ' Trial_Key_Status__c: ' + hist.Trial_Key_Status__c + '\n\n';
            emailPlainText += 'Exception message: ' + e.getMessage() + '\n\n';
            emailPlainText += 'Exception lineNumber: ' + e.getLineNumber() + '\n\n';
            emailPlainText += 'Response from server: ' + res.getBody();
            email.setToAddresses(toAddresses);
            email.setSubject(subject);
            email.setPlainTextBody(emailPlainText);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
            return '0';
        }
    }

    public static void sendEmail(Id contactId){
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        Id templateId;
        try{
            templateId = [SELECT Id, Name FROM EmailTemplate WHERE Name = 'New Trial Notification For Contact'].Id;
        } catch(Exception e) {
            System.debug('No Email template.' + e.getMessage());
        }

        for(OrgWideEmailAddress owa : [SELECT Id, Address FROM OrgWideEmailAddress]) {
            if(owa.Address.toLowerCase().contains(Label.TrialSupportTeamSenderEmail)){
                email.setOrgWideEmailAddressId(owa.Id);
            }
        }

        email.setTargetObjectId(contactId);
        email.setTemplateId(templateId);
        email.setSaveAsActivity(true);      

        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }

    public static HttpResponse sendRequest(Contact reqContact){        
        Http h = new Http();
        Trial_Server_URL__c trialUrl = [SELECT Id, Endpoint__c, Input_Email__c, Input_Password__c FROM Trial_Server_URL__c WHERE Name ='Trial Server URL' LIMIT 1];       

        Map<String, String> parameters = new Map<String, String>();
        Account contactAccount = [SELECT Id, Name FROM Account WHERE Id = :reqContact.AccountId];

        parameters.put('&email=', reqContact.Email != null ? reqContact.Email : '');
        parameters.put('&fullName=', reqContact.Name);
        parameters.put('&title=', reqContact.Title != null ? reqContact.Title : '');
        parameters.put('&contactName=', reqContact.Name);
        parameters.put('&companyName=', contactAccount.Name);
        parameters.put('&address=', reqContact.MailingStreet != null ? reqContact.MailingStreet : '');
        parameters.put('&city=', reqContact.MailingCity != null ? reqContact.MailingCity : '');
        parameters.put('&state=', reqContact.MailingState != null ? reqContact.MailingState : '');
        parameters.put('&zip=', reqContact.MailingPostalCode != null ? reqContact.MailingPostalCode: '');
        parameters.put('&contactPhone=', reqContact.Phone != null ? reqContact.Phone : '');

        String body = 'action=GET_COMPANY_FROM_POOL&page=Login&service=external&inputEmail=' + trialUrl.Input_Email__c + '&inputPassword=' + trialUrl.Input_Password__c + '&hitId=' + String.valueOf(reqContact.Id);

        for(String key : parameters.keySet()){
            body += key;
            body += parameters.get(key);
        }

        system.debug('request body === ' + body);

        HttpRequest req = new HttpRequest();
        req.setEndpoint(trialUrl.Endpoint__c);
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        req.setBody(body);
        req.setTimeout(120000);
        
        // Send the request, and return a response
        HttpResponse res = null;
        if(!Test.isRunningTest()){
            res = h.send(req);    
        }
        else{
            TrialKeyWebservGenerator tr = new TrialKeyWebservGenerator();
            res = tr.respond(req);
        }
        
        //system.debug('response body === ' + res.getBody());
        return res;
    } 
}