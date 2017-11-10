global class TrialKeyWebservice {
    WebService static String getTrialKey(Id leadId) {
                
        Lead selectedLead = [SELECT Id, Name, Email, Title, Company, Address, Phone, Trial_Key__c, Trial_Username__c, Trial_Created_Date__c FROM Lead WHERE Id = :leadId];
        HttpResponse res;
        Trial_Key_History__c hist;

        try {
            hist = new Trial_Key_History__c(
                            Button_Pressed_By__c = UserInfo.getUserId(),
                            Trial_Key_Lead__c = selectedLead.Id,
                            When_Button_Pressed__c = Datetime.now()
            );
            if (selectedLead != null && selectedLead.Email != null) { 
                
                // Getting a response from server for current lead
                res = sendRequest(selectedLead);

                Dom.Document doc = res.getBodyDocument();
                
                //Retrieve the root element for this document.
                Dom.XMLNode getCompanyFromPool = doc.getRootElement();

                String resultText = getCompanyFromPool.getChildElement('result', null).getChildElement('resultText', null).getText();

                if(resultText == 'OK'){
                    selectedLead.Trial_Key__c = getCompanyFromPool.getChildElement('result', null).getChildElement('password', null).getText();
                    selectedLead.Trial_Username__c = selectedLead.Email;
                    selectedLead.Trial_Created_Date__c = Date.today();
                    update selectedLead;
                    sendEmail(selectedLead.Id);
                    hist.Trial_Key_Status__c = 'SUCCESS';
                    insert hist;
                    return '1';

                } else if(resultText == 'Email in use'){
                    hist.Trial_Key_Status__c = 'FAIL';
                    insert hist;
                    return '3';

                } else {
                    hist.Trial_Key_Status__c = 'FAIL';
                    insert hist;
                    return '5';
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
            String emailPlainText = 'User ' + UserInfo.getUserName() + ' try to create trial Lead creds. User ID: ' + UserInfo.getUserId() + ' User ProfileID: ' + UserInfo.getProfileId() + ' Lead fields: Lead.Id: ' + selectedLead.Id + ' Lead.Name: ' + selectedLead.Name + ' Lead.Email: ' + selectedLead.Email + ' Lead.TrialKey: ' +  selectedLead.Trial_Key__c + ' Lead.TrialUserName: ' +  selectedLead.Trial_Username__c +' Lead.TrialCreatedDate: '+ selectedLead.Trial_Created_Date__c + '\n\n';
            emailPlainText += 'TrialKeyHistory fields:  History.Button_Pressed_By__c: ' + hist.Button_Pressed_By__c + ' History.Trial_Key_Lead__c: ' + hist.Trial_Key_Lead__c + ' History.When_Button_Pressed__c: ' + hist.When_Button_Pressed__c + ' History.Trial_Key_Status__c: ' + hist.Trial_Key_Status__c + '\n\n';
            emailPlainText += 'Exception message: ' + e.getMessage() + '\n\n';
            emailPlainText += 'Exception lineNumber: ' + e.getLineNumber() + '\n\n';
            emailPlainText += 'Response from server: <pre>' + res.getBody() + '</pre>';
            email.setToAddresses(toAddresses);
            email.setSubject(subject);
            email.setPlainTextBody(emailPlainText);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
            return '0';
        }
    }

    public static void sendEmail(Id leadId){
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        Id templateId;
        try{
            templateId = [SELECT Id, Name FROM EmailTemplate WHERE Name = 'New Trial Notification'].Id;
        } catch(Exception e) {
            System.debug('No Email template.' + e.getMessage());
        }

        for(OrgWideEmailAddress owa : [SELECT Id, Address FROM OrgWideEmailAddress]) {
            if(owa.Address.toLowerCase().contains('customersuccess@adaptiveinsights.com')){
                email.setOrgWideEmailAddressId(owa.Id);
            }
        }

        email.setTargetObjectId(leadId);
        email.setTemplateId(templateId);
        email.setSaveAsActivity(true);    

        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }

    public static HttpResponse sendRequest(Lead reqlead){
        Http h = new Http();
        Trial_Server_URL__c trialUrl = [SELECT Id, Endpoint__c, Input_Email__c, Input_Password__c FROM Trial_Server_URL__c WHERE Name ='Trial Server URL' LIMIT 1];       

        Map<String, String> parameters = new Map<String, String>();
        parameters.put('&email=', reqlead.Email != null ? reqlead.Email : '');
        parameters.put('&fullName=', reqlead.Name);
        parameters.put('&title=', reqlead.Title != null ? reqlead.Title : '');
        parameters.put('&contactName=', reqlead.Name);
        parameters.put('&companyName=', reqlead.Company);
        parameters.put('&address=', reqlead.Address != null ? String.valueOf(reqlead.Address) : '');
        parameters.put('&city=', (reqlead.Address != null && reqlead.Address.getCity() != null) ? reqlead.Address.getCity() : '');
        parameters.put('&state=', (reqlead.Address != null && reqlead.Address.getState() != null) ? reqlead.Address.getState() : '');
        parameters.put('&zip=', (reqlead.Address != null && reqlead.Address.getPostalCode() != null) ? reqlead.Address.getPostalCode() : '');
        parameters.put('&contactPhone=', reqlead.Phone != null ? reqlead.Phone : '');

        String body = 'action=GET_COMPANY_FROM_POOL&page=Login&service=external&inputEmail=' + trialUrl.Input_Email__c + '&inputPassword=' + trialUrl.Input_Password__c + '&hitId=' + String.valueOf(reqlead.Id);

        for(String key : parameters.keySet()){
            body += key;
            body += parameters.get(key);
        }

        HttpRequest req = new HttpRequest();
        req.setEndpoint(trialUrl.Endpoint__c);
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/x-www-form-urlencoded');         
        
        req.setBody(body);
        req.setTimeout(120000);
        
        // Send the request, and return a response
        HttpResponse res = h.send(req);
        system.debug('response body === ' + res.getBody());
        return res;
    } 
}