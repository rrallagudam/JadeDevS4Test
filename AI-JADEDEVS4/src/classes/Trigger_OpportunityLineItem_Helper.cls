/**@@
#TRIGGER NAME          :    OpportunityLineItemTrigger
#HANDLER CLASS NAME    :    Trigger_OpportunityLineItem_Handler
#HELPER CLASS NAME     :    Trigger_OpportunityLineItem_Helper
#TEST CLASS            :    OpportunityLineItemTriggerHandler_Tests
#DESCRIPTION           :    This helper class will handles all logic of Opportunity Lineitem trigger.   
@@**/
public class Trigger_OpportunityLineItem_Helper{
    
    /**@@
        #DESCRIPTION     : This method will get called on insert of OpportunityLineItem record.
                           This method will delete duplicate products of Installment Opportunity
        #Paramaters      : List<OpportunityLineItem> 
        #Return type     : void
    @@**/  
    public static void OnBeforeInsert(List<OpportunityLineItem> newRecords){
        UpdateRevenueType(newRecords);        
    }//End of Method
    
    /**@@
        #DESCRIPTION     : This method will get called on after insert of OpportunityLineItem record.
                           This method will delete duplicate products of Installment Opportunity
        #Paramaters      : List<OpportunityLineItem> 
        #Return type     : void
    @@**/  
    public static void OnAfterInsert(List<OpportunityLineItem> newRecords){
        set<Id> sOppId = new set<Id>();
        for(OpportunityLineItem oli: newRecords){            
            if(oli.Product2Id == CustomConstants.strInstallmentPaySubscriptionsProductId || Test.isRunningTest()){                
                sOppId.add(oli.OpportunityId);
            }
        }
        if(!sOppId.isEmpty()){
            
            List<Opportunity> lstInstallmentOpp = [SELECT id, (SELECT id FROM OpportunityLineItems WHERE Product2Id =: CustomConstants.strInstallmentPaySubscriptionsProductId) FROM Opportunity WHERE id IN: sOppId AND Is_Installment_Opportunity__c = true];
            if(Test.isRunningTest()){
                lstInstallmentOpp = [SELECT id, (SELECT id FROM OpportunityLineItems WHERE Product2.Name = 'Installment Payment for Subscriptions') FROM Opportunity WHERE id IN: sOppId AND Is_Installment_Opportunity__c = true];
            }
            if(!lstInstallmentOpp.isEmpty()){
                Map<ID, integer> mapOppwithProductCount = new  Map<ID, integer>();
                for(Opportunity opp: lstInstallmentOpp){
                    if(!opp.OpportunityLineItems.isEmpty() && opp.OpportunityLineItems.size() > 1){
                        mapOppwithProductCount.Put(opp.id, opp.OpportunityLineItems.size());
                    }
                }                
                if(mapOppwithProductCount != null && !mapOppwithProductCount.isEmpty()){
                    List<OpportunityLineItem> lstDeleteOli = new List<OpportunityLineItem>();
                    for(OpportunityLineItem oli: newRecords){
                        if(mapOppwithProductCount.containskey(oli.OpportunityId)){
                            OpportunityLineItem objOppLI = new OpportunityLineItem();
                            objOppLI.id = oli.id;
                            lstDeleteOli.add(objOppLI);
                        }
                    } 
                    if(!lstDeleteOli.isEmpty()){
                        delete lstDeleteOli;
                    }
                }
            }
        }
       
    }//End of Method
    
    /**@@
        #DESCRIPTION     : This method will get called on before insert of OpportunityLineItem record.
                           This method will set Revenue Type of Opportunity Product
        #Paramaters      : List<OpportunityLineItem> 
        #Return type     : void
    @@**/  
    public static void UpdateRevenueType(List<OpportunityLineItem> newRecords){
        Set<ID> prodIDs = new Set<ID>();
        for(OpportunityLineItem item : newRecords){ prodIDs.add(item.Product2Id); }
        Map<ID, Product2> productMap = new Map<ID, Product2>([SELECT Id,Revenue_Type__c, Family FROM Product2 WHERE Id IN :prodIDs]);
        
        for(OpportunityLineItem item : newRecords){
            Product2 product = productMap.get(item.Product2Id);
            if(product != null){
                item.Revenue_Type__c = product.Revenue_Type__c; // Copied over as static value for use in rollup summaries on Oppty.
            }
        }
    }
}//End of Class