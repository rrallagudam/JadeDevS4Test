public class OpportunityCloneQuoteAction {

    @InvocableMethod(
        label='Copies all Order Documents to Opportunity'
        description='Copies all SBQQ QuoteDocuments to Opportunity attachments for use in DocuSigning')
    public static void copyQuote(List<Opportunity> opportunityRecord) {
        List<SBQQ__QuoteDocument__c> quoteDocuments = getQuoteDocuments(
                    getPrimaryQuotes(opportunityRecord)
                );
        List<Attachment> attachments = getQuoteAttachments(quoteDocuments);
        
        List<Attachment> clonedAttachments = new List<Attachment>();
        for(Attachment a : attachments){
            ID opptyId = getOpportunityID(a, quoteDocuments);
            Attachment attach = new Attachment(Name = a.Name, Body = a.Body, Parentid = opptyId);
            clonedAttachments.add(attach);
        }
        if(clonedAttachments.size() > 0){
            insert clonedAttachments;
        }
    }
    
    public static ID getOpportunityID(Attachment attach, List<SBQQ__QuoteDocument__c> quoteDocuments){
        for(SBQQ__QuoteDocument__c doc : quoteDocuments){
            if(doc.SBQQ__AttachmentId__c  == attach.Id){
                return doc.SBQQ__Opportunity__c;
            }
        }
        return null;
    }
   
    public static List<SBQQ__Quote__c> getPrimaryQuotes(List<Opportunity> opportunityRecord){
        Set<ID> quoteIDs = new Set<ID>();
        for(Opportunity opp : opportunityRecord){ 
            if(opp.SBQQ__PrimaryQuote__c != null){
                quoteIDs.add(opp.SBQQ__PrimaryQuote__c); 
            }
        }
        System.debug(quoteIDs.size() + ' Quote IDs');
        return [SELECT Id,SBQQ__Opportunity2__c,SBQQ__Primary__c FROM SBQQ__Quote__c WHERE SBQQ__Primary__c=True AND Id IN :quoteIDs];
    }
        
    public static List<SBQQ__QuoteDocument__c> getQuoteDocuments(List<SBQQ__Quote__c> quoteList){
        Set<ID> quoteIDs = new Set<ID>();
        for(SBQQ__Quote__c quote : quoteList){ 
            if(quote.Id  != null){
                quoteIDs.add(quote.Id);
            }
        }
        return [SELECT Id,SBQQ__DocumentId__c,SBQQ__AttachmentId__c,SBQQ__Template__c,LastModifiedDate,SBQQ__Opportunity__c,SBQQ__Quote__c 
                FROM SBQQ__QuoteDocument__c 
                WHERE SBQQ__Template__c LIKE '%Order%' AND 
                SBQQ__Quote__c IN : quoteIDs];
    }
    
    public static List<Attachment> getQuoteAttachments(List<SBQQ__QuoteDocument__c> quoteDocuments){
        Set<ID> attachmentIDs = new Set<ID>();
        for(SBQQ__QuoteDocument__c doc : quoteDocuments){
            if(doc.SBQQ__AttachmentId__c  != null){
                attachmentIDs.add(doc.SBQQ__AttachmentId__c);
            }
        }
        return [SELECT Id, Name, Body FROM Attachment WHERE Id IN :attachmentIDs];
    }
}