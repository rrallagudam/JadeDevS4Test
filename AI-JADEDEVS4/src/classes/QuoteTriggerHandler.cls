public with sharing class QuoteTriggerHandler {

    public QuoteTriggerHandler(){
    
    }
    
    public void OnBeforeUpdate(List<SBQQ__Quote__c> oldRecords, List<SBQQ__Quote__c> updatedRecords, Map<ID, SBQQ__Quote__c> recordMap){
        updateApprovers(updatedRecords);
    }
    
    public void updateApprovers(List<SBQQ__Quote__c> quoteRecords){
        /*
         * Assumptions:
         * Record Owner is Field Sales
         * AVP_Dir_Customer_Service_Approver__c is the Owner's Manager
         * Sales_Executive_Approver__c is the AVP_Dir User's Manager
         * 
         * Bulkified. Many Quotes may be updated at once.
         */
        Set<ID> ownerIDs = new Set<ID>();
        for(SBQQ__Quote__c quote : quoteRecords){ownerIDs.add(quote.OwnerId);}
        Map<ID, User> ownerMap = new Map<ID, User>( [SELECT Id, ManagerId FROM User WHERE Id IN : ownerIDs] );
        
        Set<ID> tier1IDs = new Set<ID>();
        for(User u : ownerMap.values()){ tier1IDs.add(u.ManagerId);}
        Map<ID, User> tier1UserMap = new Map<ID, User>( [SELECT Id, ManagerId FROM User WHERE Id IN : tier1IDs] );
        
        Set<ID> tier2IDs = new Set<ID>();
        for(User u : tier1UserMap.values() ){ tier2IDs.add(u.ManagerId); }
        Map<ID, User> tier2UserMap = new Map<ID, User>( [SELECT Id, ManagerId FROM User WHERE Id IN : tier2IDs] );
        
        for(SBQQ__Quote__c quote : quoteRecords){
            User ownerUser = ownerMap.get(quote.OwnerId);
            User managerUser = tier1UserMap.get(ownerUser.ManagerId );            
            User salesExecutiveUser = null;
            if(managerUser != null && managerUser.ManagerId != null){
                quote.AVP_Dir_Customer_Service_Approver__c = managerUser.Id;
                salesExecutiveUser = tier2UserMap.get(managerUser.ManagerId);
            }
            if(salesExecutiveUser != null){
                quote.Sales_Executive_Approver__c = salesExecutiveUser.Id;
            }
        }
    }
}