public class CallOutDataDotCom{

//Wrapper class to capture lead fields returned via Data.com   
public class LeadFields {
        
        public List<typeWrapper> Type;  
        public String Description;  //If you don't know what the term Google means, there's a leading Internet search engine you can use to find out. Google offers targeted search results from billions of Web pages. Results are based on a proprietary algorithm; its technology for ranking Web pages is called PageRank. The firm generates revenue through ad sales. Advertisers deliver relevant ads targeted to search queries or Web content. The Google Network is a network of third-party customers that use Google's ad programs to deliver relevant ads to their own sites. In October 2015, Google formally became part -- and by far the biggest part -- of the       Alphabet Inc.      holding company.
        public Integer CompanyId;   //5634951
        public String Phone;    //+1.650.253.0000
        public String Country;  //United States
        public String City; //Mountain View
        public String Name; //Google Inc.
        public String Industry; 
        public String State;    
        public String Zip;  
        public String Street;   
        public Integer numberOfEmployees;   
        public Decimal AnnualRevenue;   
    }
    public class typeWrapper{
    }

    @future (callout=true) // indicates that this is an asynchronous call
    public static void dataDotComCallOut(String sessionId, set<Id> leadIds) {
        system.debug('Call from trigger >>> '+leadIds);
        String jsonOrders;
        List<lead> ldToBeUpdated = new List<Lead>();
        
        List<Lead> ld = [SELECT Id, Company, Country, phone,website,city, Street, State, PostalCode, NumberOfEmployees, Annualrevenue FROM Lead where Id IN :leadIds];
        for(Lead l : ld){
            // Create a JSON generator object
            JSONGenerator gen = JSON.createGenerator(true);
            // open the JSON generator
            system.debug(gen);
             // List<User> usr = [select id, sessionId from User where id = '0050q000000QxqF'];
               gen.writeStartObject();
                   gen.writeFieldName('entities');
                        gen.writeStartArray();
                            gen.writeStartObject();
                                 gen.writeFieldName('attributes');
                                    gen.writeStartObject();
                                    gen.writeStringField('type', 'DatacloudCompany');
                                    gen.writeEndObject();  
                                gen.writeStringField('Name', l.Company);
                                gen.writeStringField('Website', l.website);
                                gen.writeStringField('City', l.city);
                            gen.writeEndObject(); 
                        gen.writeEndArray();
                    gen.writeFieldName('fields');
                        gen.writeStartArray();
                               gen.writeString('Name');
                               gen.writeString('Phone');
                               gen.writeString('City');
                               gen.writeString('Country');
                               gen.writeString('Description');
                               gen.writeString('CompanyId');
                               gen.writeString('Industry');
                               gen.writeString('Street');
                               gen.writeString('State');
                               gen.writeString('Zip');
                               gen.writeString('NumberOfEmployees');
                               gen.writeString('AnnualRevenue');
                               
                        gen.writeEndArray();
               //  gen.writeEndArray();
                gen.writeEndObject();  
            // close the JSON generator
    
            // create a string from the JSON generator
            jsonOrders = gen.getAsString();
            // debugging call, which you can check in debug logs
         
            System.debug('jsonOrders: ' + jsonOrders);
            // Perform Call out to Data.com API
            //create an HTTPrequest object    
            HttpRequest req = new HttpRequest();
            // set up the HTTP request with a method, endpoint, header, and body
            req.setMethod('POST');
            req.setEndpoint('https://cs64.salesforce.com/services/data/v39.0/match/DatacloudMatchEngine/DatacloudCompany/');
            req.setHeader('Content-Type', 'application/json');
            system.debug('UserInfo.getSessionId()>>>'+sessionId);
            req.setHeader('Authorization', 'OAuth '+sessionId);
            //Pass JSON string as body to Data.com API 
            req.setBody(jsonOrders);    
            // create a new HTTP object
            Http http = new Http();
            // create a new HTTP response for receiving the remote response
            // then use it to send the configured HTTPrequest
            HTTPResponse res = http.send(req);
        
            system.debug(res+'<<<<<<<<<<<<<<<<<<Body>>>>>>>>>>>>>.'+res.getBody());
            /********Parse Data.com Response via JSON Parser*****************************/
            LeadFields attr;
            String str;
            // Parse entire JSON response.
            JSONParser parser = JSON.createParser(res.getBody());
            system.debug(parser.getText());
            System.JSONToken token;
            while((token = parser.nextToken()) != null) {                
                if (parser.getCurrentToken() == JSONToken.START_ARRAY) {
                    while((token = parser.nextToken()) != null) {
                        if (parser.getCurrentToken() == JSONToken.START_Object) {
                            while((token = parser.nextToken()) != null) {
                                if (parser.getCurrentToken() == JSONToken.START_Object ) {
                                    while((token = parser.nextToken())!= null){
                                        if (parser.getCurrentToken() == JSONToken.START_Object ) {
                                            system.debug('parser.getText() >>>.'+parser.getText() );
                                            //Capture the response returned in LeadFields
                                            attr = (LeadFields)parser.readValueAs(LeadFields.class);
                                            system.debug('Invoice number: ' + attr);
                                            str = JSON.serialize(attr);
                                            system.debug('Serialized invoice: ' + str);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }                  
            system.debug('attr'+attr);
            if(attr != null){
                if(l.company == null){
                    l.company = attr.Name;
                }
                if(l.city == null){
                    l.city = attr.City;
                }
                if(l.Phone == null){
                    l.phone = attr.Phone;
                }
                
                l.Industry = attr.Industry;
                if(l.Street == null){
                    l.Street = attr.Street;
                }
                if(l.State == null){
                    l.State = attr.State;
                }
                
                if(l.PostalCode == null){
                    l.PostalCode = attr.Zip;
                }
                if(l.NumberOfEmployees == null){
                    l.NumberOfEmployees = attr.NumberOfEmployees;
                }
                if(l.Annualrevenue == null){
                    l.AnnualRevenue = attr.Annualrevenue;
                }
                l.Data_com_Enriched__c = true;
                ldToBeUpdated.add(l);
            }
        }         
        system.debug(ldToBeUpdated);
        if(!ldToBeUpdated.isEmpty()){
            update ldToBeUpdated;
        }
    }
}