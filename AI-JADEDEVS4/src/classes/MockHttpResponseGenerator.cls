@isTest
global class MockHttpResponseGenerator implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('[{"Name":"Jade"},{"Website":"www.google.com"},{"City":"Mountain view"},{"company":"google inc."}]');
        res.setStatusCode(200);
        return res;
    }
}