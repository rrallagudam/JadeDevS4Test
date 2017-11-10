@isTest                     
global class TrialKeyWebservGenerator implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        Map<String, String> bodyParams = new Map<String, String>();
        HttpResponse res = new HttpResponse();

        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('https://sfdc.adaptiveplanning.com/app', req.getEndpoint());
        System.assertEquals('POST', req.getMethod());

        String [] splitedParams = req.getBody().split('&', -1);
        
        for(String dubleParam : splitedParams){
            String[] singleParams = dubleParam.split('=', -1);
            bodyParams.put(singleParams[0], singleParams[1]);
        }

        if(bodyParams.get('email') != null && bodyParams.get('email') != ''){
                // Create a fake response
                res.setHeader('Content-Type', 'application/x-www-form-urlencoded');
                res.setBody('<getCompanyFromPool>' +
                                '<result>' +
                                    '<resultText>OK</resultText>' +
                                    '<resultValue>0</resultValue>' +
                                    '<password>ey@ars.id@d</password>' +
                                    '<email>sad@as2w3d.com</email>' +
                                '</result>' +
                            '</getCompanyFromPool>'
                    );
                res.setStatusCode(200);
        } else {
            // Create a fake response
            res.setHeader('Content-Type', 'application/x-www-form-urlencoded');
            res.setBody('<getCompanyFromPool>' +
                            '<result>' +
                                '<resultText>Email in use</resultText>' +
                                '<resultValue>-2</resultValue>' +
                                '<hitId/>' +
                            '</result>' +
                        '</getCompanyFromPool>'
                );
            res.setStatusCode(200);
        }
        return res;
    }
}