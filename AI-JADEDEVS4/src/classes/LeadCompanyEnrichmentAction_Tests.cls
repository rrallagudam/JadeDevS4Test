@IsTest
public class LeadCompanyEnrichmentAction_Tests {

    @IsTest public static void basicTests(){
        TestData.initTriggerSettings();
        Lead newLead = new Lead(FirstName = 'FName',
                               LastName = 'LName',
                               Email = 'lead.unit@test.com',
                               Company = 'Salesforce');
        insert newLead;
        ID leadID = newLead.Id;
        System.assert(leadID != null);
        
        // Verify DatacloudCompany records can be queried from unit test
        List<DatacloudCompany> companies = [SELECT Id, Name FROM DataCloudCompany WHERE Name Like 'Salesforce'];
        //System.assert(companies.size() > 0); // Fails. Not queryable from unit tests.
        LeadCompanyEnrichmentAction.enrichLead(new List<Lead>{newLead});
        
        newLead = [SELECT Id, Name FROM Lead WHERE Id=:leadID LIMIT 1];
        System.assert(newLead != null);         
    }
}