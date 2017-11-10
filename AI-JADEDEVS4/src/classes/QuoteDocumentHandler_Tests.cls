@IsTest
public class QuoteDocumentHandler_Tests {

    public static testmethod void saveQuoteDocument(){
       DataFactory.insertCustomSetting();
       List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('TestQuoteDocOpp', 1);
       List<SBQQ__Quote__c> quoteList = DataFactory.createQuoteTestRecords(oppList[0].id, 1);
       List<SBQQ__QuoteTemplate__c> quoteTemplateList = DataFactory.createQuoteTemplateRecord('TestOrderTemplate', 1);
       List<SBQQ__QuoteDocument__c> quoteDocList =  DataFactory.createQuoteDocumentRecord('TestQuoteDoc', quoteTemplateList[0].id, quoteList[0].id, oppList[0].id, 1);
       
       List<Opportunity> oppList1 = [select id, accountid, account.name, name from opportunity where id =: oppList[0].id];
       System.debug('***oppList***'+ oppList1);
       
       List<SBQQ__Quote__c> quoteList1 = [select id, name from SBQQ__Quote__c where id =:quoteList[0].id];
       system.debug('**Quote**'+quoteList1);
       
       List<SBQQ__QuoteDocument__c> quoteDocList1 = [select id, name from SBQQ__QuoteDocument__c where id =:quoteDocList[0].id];
       System.debug('***quoteDocList***'+ quoteDocList1);
       
       String docName = oppList1[0].account.name+' - '+quoteList1[0].name;
       System.debug('***docName***'+docName);
       
       System.assertEquals(docName.trim(),quoteDocList1[0].name);
       delete  quoteDocList;
       undelete quoteDocList;
       
    }
}