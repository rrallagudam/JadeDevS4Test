@IsTest
public class OpportunityCloneQuoteAction_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void basicTests(){
        TestData data = new TestData();
        
        Attachment attach = new Attachment(
            Name = 'test_attachment',
            Body = Blob.valueOf('test'),
            ParentId = data.TestQuote.Id
        );
        insert attach;
        
        SBQQ__QuoteDocument__c testQuoteDocument = new SBQQ__QuoteDocument__c(
            SBQQ__Quote__c = data.TestQuote.Id,
            SBQQ__Opportunity__c = data.TestOpportunity.Id,
            SBQQ__Version__c = 1,
            SBQQ__Template__c ='An order Template',
            SBQQ__AttachmentId__c = attach.Id,
            SBQQ__DocumentId__c = attach.Id
        );
        insert testQuoteDocument;
        
        ID opportunityID = data.TestOpportunity.Id;
        List<Attachment> attachments = [SELECT Id, Name FROM Attachment WHERE ParentId=:opportunityID];
        System.assertEquals(0, attachments.size());
        OpportunityCloneQuoteAction.copyQuote(new List<Opportunity>{data.TestOpportunity});
        attachments = [SELECT Id, Name FROM Attachment WHERE ParentId=:opportunityID];
        System.assertEquals(1, attachments.size());
    }
}