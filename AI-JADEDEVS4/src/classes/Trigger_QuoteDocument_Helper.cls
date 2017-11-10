/**@@
#TRIGGER NAME          :    QuoteDocumentTrigger
#HANDLER CLASS NAME    :    Trigger_QuoteDocument_Handler
#HELPER CLASS NAME     :    Trigger_QuoteDocument_Helper
#TEST CLASS            :    QuoteDocumentHandler_Tests 
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.   
@@**/
public class Trigger_QuoteDocument_Helper{

    /**@@
        #DESCRIPTION     : This method will get called on insert of QuoteDocument record.
                           This method will update quotedocument name
        #Paramaters      : List<SBQQ__QuoteDocument__c> 
        #Return type     : void
    @@**/  
    public static void OnAfterInsert(List<SBQQ__QuoteDocument__c> newRecords){
        Set<ID> idList = new Set<ID>();
        for(SBQQ__QuoteDocument__c doc : newRecords){ 
            idList.add(doc.Id);
        }
        
        if(!idList.isEmpty()){
            List<SBQQ__QuoteDocument__c> quoteDocuments = [SELECT Id, Name, SBQQ__Quote__r.SBQQ__Account__r.Name, SBQQ__Quote__r.Name, SBQQ__QuoteTemplate__c, SBQQ__QuoteTemplate__r.Name, SBQQ__Opportunity__c, SBQQ__Opportunity__r.Name, SBQQ__Quote__c FROM SBQQ__QuoteDocument__c WHERE Id IN :idList];
            System.debug('***quoteDocuments ***'+quoteDocuments);
            List<SBQQ__QuoteDocument__c> updateList = new List<SBQQ__QuoteDocument__c>();
            
            // Any QuoteDocs generated from an Order template? 
            // If so, update the document name
            for(SBQQ__QuoteDocument__c doc : quoteDocuments){
                if(doc.SBQQ__QuoteTemplate__c == null || 
                   doc.SBQQ__Opportunity__c == null || 
                   doc.SBQQ__QuoteTemplate__r.Name == null){
                     continue;
                }
                doc.Name = doc.SBQQ__Quote__r.SBQQ__Account__r.Name + ' - ' + doc.SBQQ__Quote__r.Name;
                if(doc.Name.Length()>=80){
                
                     doc.Name = (doc.SBQQ__Quote__r.SBQQ__Account__r.Name).substring(0,70)+' - '+ doc.SBQQ__Quote__r.Name;
                     //doc.Name = doc.SBQQ__QuoteTemplate__r.Name + ' - ' + doc.SBQQ__Quote__r.Name;
                }
                if(doc.SBQQ__QuoteTemplate__r.Name.toLowerCase().contains('order')){
                    doc.Is_Order_Document__c = true;
                }
                updateList.add(doc);
            }//End of For
            if(updateList.size() > 0){
                update updateList;
            }//End of update
        }
    }//End of Method
}//End of Class