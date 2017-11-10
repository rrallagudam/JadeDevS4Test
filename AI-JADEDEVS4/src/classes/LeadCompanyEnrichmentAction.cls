/*
 * (Work in progress)
 * Searches data.com for Companies that match a Lead Company.
 * Enriches Lead with NumberOfEmployees (primarily) and other fields. 
 * 
 * Current challenges (as of Feb 2016):
 * Unit test queries against DatacloudCompany return 0 records. Not easily unit tested.
 * Returned results are obfuscated. Must be purchased to view actual data.
 * Documentation says that Purchase API is required access fields.
 * Should this flow be done synchronously? Or async / batch?
 * 
 * Relevant Links:
 * Match API
 * https://developer.salesforce.com/docs/atlas.en-us.datadotcom_api_dev_guide.meta/datadotcom_api_dev_guide/request_response_bodies.htm%23request_datacloudcompany
 * 
 * 
 * https://developer.salesforce.com/docs/atlas.en-us.datadotcom_api_dev_guide.meta/datadotcom_api_dev_guide/requests_datacloudcompany.htm
 * https://developer.salesforce.com/docs/atlas.en-us.api.meta/api/sforce_api_objects_datacloudcompany.htm
 * https://developer.salesforce.com/docs/atlas.en-us.datadotcom_api_dev_guide.meta/datadotcom_api_dev_guide/intro_introduction.htm
 */
public class LeadCompanyEnrichmentAction {

    @InvocableMethod(
    label='Lead Company Enrichment Action'
    description='Queries data.com for matching DatacloudCompany records, makes Purchase API calls to procure, and enriches Lead with Company data.')
    public static void enrichLead(List<Lead> leadRecord) {
        /*
         * TODO Refactoring Notes:
         * Can data.com queries be bulified?
         * Could try "WHERE NAME In {list}", but then how to parse results when there are only near matches?
         */
        if(leadRecord == null || leadRecord.size() == 0){
            return;
        }
        Set<ID> leadIDs = new Set<ID>();
        Lead currentLead = leadRecord[0];
        String companyName = currentLead.Company;
        String FIELDS = 'SELECT Id, Name,AnnualRevenue,City,CompanyId,Country,Description,DunsNumber,EmployeeQuantityGrowthRate,ExternalId,' + 
                'FortuneRank,IncludedInSnP500,Industry,IsInactive,IsOwned,NaicsCode,NumberOfEmployees,Ownership,Sic,SicDesc,Site,State,Street,' +
                'TradeStyle,Website,Zip';
        String SOURCE = ' FROM DatacloudCompany';
        String FILTER = ' WHERE IsInactive=False AND Name Like \'' + companyName + '\' AND Site=\'Headquarters\'';
        String soql = FIELDS + SOURCE + FILTER;
            
        List<DatacloudCompany> companies = Database.query(soql);
            
        //If no HQ records, then make the query more lenient and try again
        if(companies.size() == 0){
            FILTER = ' WHERE IsInactive=False AND Name Like \'' + companyName + '\'';
            companies = Database.query(soql);
        }
        
        /*
         * One HQ record
         *  Use NumberOfEmployees from record
         * Many HQ records. 
         *  Able to identify which one is master? Match on City/State?
         * 
         * No HQ records.
         *  Sum of all sites.
         */
            
        // Check IsOwned to determine if it needs purchasing. If any results are owned, then use existing records.
    }
}