public class OpportunityInstallmentsAction{

    //@InvocableMethod(
        // label='Provisions future dated Opportunities based on Installment records'
        //description='Sets Opportunity stage to "Closed-Won Installments" and creates future opportunites for forecasting.')
    
    /**@@
        #DESCRIPTION     : This method will Create Installment Opportunity record, Installment Quote record, Installment Quote Line Items.
        #Paramaters      : Set<Id> opportunityIDs, Set<Id> quoteIDs
        #Return type     : void
    @@**/
    public static void createInstallmentOpportunities(List<Opportunity> opportunityRecord) { 
        try{
            Set<ID> opportunityIDs = new Set<ID>();
            Set<ID> quoteIDs = new Set<ID>();
            
            // Defining the Master Opporunity
            for(Opportunity opp : opportunityRecord){
                opportunityIDs.add(opp.Id);
                quoteIDs.add(opp.SBQQ__PrimaryQuote__c);
            }    
            if(!opportunityIDs.isEmpty() && !quoteIDs.isEmpty()){
                callCreateInstallmentOpportunities(opportunityIDs, quoteIDs);
            }
        }//End of try
        Catch(exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
        }
    }
    
    /**@@
        #DESCRIPTION     : This method will Create Installment Opportunity record, Installment Quote record, Installment Quote Line Items.
        #Paramaters      : Set<Id> opportunityIDs, Set<Id> quoteIDs
        #Return type     : void
    @@**/
    //@future
    public static void callCreateInstallmentOpportunities(Set<Id> opportunityIDs, Set<Id> quoteIDs) {
        
            system.debug('START createInstallmentOpportunities');
            Product2 installmentSKU = new Product2();
          if(Test.isRunningTest())
            {
           installmentSKU = [SELECT Id, Name from Product2 WHERE Name = 'Installment Payment for Subscriptions'];
            }
          else{
            installmentSKU = [SELECT Id, Name from Product2 WHERE Id =: CustomConstants.strInstallmentPaySubscriptionsProductId];
          }
            integer installmentCount = 1;
            
            // Assumption: This action is triggered after the Opportunity stage has been set to 'Closed-Won' by OrderActivationAction
    
            // Update reference to originating Order
            List<Order> orderList = [SELECT Id,OpportunityId, Type FROM Order WHERE OpportunityId IN :opportunityIDs];
            Map<Id, Order> mapOpportunityIdwithOrder = new Map<Id, Order>();
            for(Order ord: orderList){
                mapOpportunityIdwithOrder.Put(ord.OpportunityId, ord);
            }
            
            List<Opportunity> installmentOpps = new List<Opportunity>();
            Map<Id, Installment__c> installments = new Map<Id, Installment__c>([SELECT Id,Payment_Due_Amount__c, Payment_Due_Date__c, Total_Order_Amount__c, Quote__c, Quote__r.SBQQ__Opportunity2__c,
                                                    Quote__r.SBQQ__Opportunity2__r.Name, Quote__r.SBQQ__StartDate__c, Quote__r.SBQQ__EndDate__c, Quote__r.Display_End_Date__c,Quote__r.SBQQ__Opportunity2__r.OEM_AI__c,  
                                                    Quote__r.SBQQ__Opportunity2__r.AccountID, Quote__r.SBQQ__PricebookId__c, Quote__r.Billing_Contact__r.Id, 
                                                    Quote__r.Provisioning_Contact__r.Id, Quote__r.SBQQ__Opportunity2__r.Partner_Account__c, Quote__r.SBQQ__Opportunity2__r.Partner_Commission_Type__c,
                                                    Quote__r.SBQQ__Opportunity2__r.Owner.Id, Quote__r.SBQQ__Opportunity2__r.OwnerId, Quote__r.SBQQ__Opportunity2__r.currencyISOcode 
                                                    FROM Installment__c WHERE Quote__c IN :quoteIDs]);
    
            system.debug('opportunityIDs: ' + opportunityIDs);
            system.debug('quoteIDs: ' + quoteIDs);
            system.debug('installments: ' + installments);
    
            system.debug('START parsing installments');
            
            // Create Installment Opportunity -- START
            List<Opportunity> lstInstallOpportunity = new List<Opportunity>();
            
            // Create Opportunity LineItem (Revenye type = Service) for First Installment Opportunity -- START
            List<OpportunityLineItem> lstOpportunityLineItem = new List<OpportunityLineItem>();
            Map<Id, List<OpportunityLineItem>> mapOppWithServiceLineItem = new Map<Id, List<OpportunityLineItem>>();
            List<Opportunity> lstMasterOpportunity = [SELECT id, (select id, PricebookEntryId, Quantity, Product2Id, TotalPrice, UnitPrice from OpportunityLineItems where Revenue_Type__c =: CustomConstants.strOLIRevenueType) FROM Opportunity WHERE id IN: opportunityIDs];
            for(Opportunity opp: lstMasterOpportunity){
                if(!opp.OpportunityLineItems.isEmpty()){
                    mapOppWithServiceLineItem.put(opp.id, opp.OpportunityLineItems);
                }
            }
            // Create Opportunity LineItem (Revenye type = Service) for First Installment Opportunity -- END
            
            for(Installment__c installment : installments.values()){
                // Add Installment Opportunity
                Opportunity installOpp = new Opportunity();
                installOpp.Name = installment.Quote__r.SBQQ__Opportunity2__r.Name + ' Installment ' + installmentCount;
                installOpp.OwnerId = installment.Quote__r.SBQQ__Opportunity2__r.OwnerId;
                installOpp.currencyISOcode = installment.Quote__r.SBQQ__Opportunity2__r.currencyISOcode;
                installOpp.AccountID = installment.Quote__r.SBQQ__Opportunity2__r.AccountID;
                installOpp.Is_Installment_Opportunity__c = True;
                installOpp.OEM_AI__c = installment.Quote__r.SBQQ__Opportunity2__r.OEM_AI__c;
                installOpp.Amount = installment.Payment_Due_Amount__c;
                installOpp.CloseDate = installment.Payment_Due_Date__c;
                installOpp.StageName = 'Closed Won';
                installOpp.MasterOpportunity__c = installment.Quote__r.SBQQ__Opportunity2__c;
                installOpp.InstallmentKey__c = installment.Id;
                installOpp.Pricebook2Id = installment.Quote__r.SBQQ__PricebookId__c;
                installOpp.Partner_Account__c = installment.Quote__r.SBQQ__Opportunity2__r.Partner_Account__c;
                installOpp.Partner_Commission_Type__c = installment.Quote__r.SBQQ__Opportunity2__r.Partner_Commission_Type__c;
                installOpp.Owner = installment.Quote__r.SBQQ__Opportunity2__r.Owner;
    
                // TODO: change to target, then change target to Process Builder instead of formula
                installOpp.ARCHIVE_Prior_ARR__c = installment.Payment_Due_Amount__c;
                
                // Set the initial installment opportunity to match the master opportunity order type
                if(mapOpportunityIdwithOrder.containsKey(installOpp.MasterOpportunity__c)){
                    installOpp.Order__c = mapOpportunityIdwithOrder.get(installOpp.MasterOpportunity__c).id;                
                    if(installmentCount == 1){
                        installOpp.Type = mapOpportunityIdwithOrder.get(installOpp.MasterOpportunity__c).Type;
                        installOpp.First_Installment__c = True;
                        
                        if(mapOppWithServiceLineItem != null && installment.Quote__c != null && installment.Quote__r.SBQQ__Opportunity2__c != null && mapOppWithServiceLineItem.containsKey(installment.Quote__r.SBQQ__Opportunity2__c)){
                            for(OpportunityLineItem oli: mapOppWithServiceLineItem.get(installment.Quote__r.SBQQ__Opportunity2__c)){
                                OpportunityLineItem objOLI = new OpportunityLineItem();
                                objOLI.PricebookEntryId = oli.PricebookEntryId;
                                objOLI.Quantity = oli.Quantity;
                                objOLI.TotalPrice = oli.TotalPrice;
                                //objOLI.UnitPrice = oli.UnitPrice;
                                Opportunity objOpp = new Opportunity(InstallmentKey__c=installment.id);
                                objOLI.Opportunity = objOpp;
                                lstOpportunityLineItem.add(objOLI);
                            }
                        }
                    } else {
                        installOpp.Type = 'Renewal';
                    }                
                }
                            
                system.debug('START INSERT opportunity');
                lstInstallOpportunity.add(installOpp);
                installmentCount++;
            }
            if(!lstInstallOpportunity.isEmpty()){
                try{
                    
                    insert lstInstallOpportunity;
                    
                    insert lstOpportunityLineItem;
                   }//End of try
              Catch(exception e){
                 ExceptionHandlingEmail.sendEmailonException(e);
        }//End of exception
            }
            // Create Installment Opportunity -- END
            
                    
            // Create Installmet Quote -- START
            installmentCount = 1;
            Map<Id, Id> mapInstallmentWithOppId = new Map<Id, Id>();
            List<SBQQ__Quote__c> lstInstallSBQuote = new List<SBQQ__Quote__c>();
            for(Opportunity installOpp: lstInstallOpportunity){
                mapInstallmentWithOppId.Put(installOpp.InstallmentKey__c, installOpp.id);
                
                system.debug('START build out of quote');
                SBQQ__Quote__c installQuote = new SBQQ__Quote__c();
                
                // Add Quote:
                Id installOppId = installOpp.Id;
    
                installQuote.SBQQ__Account__c = installments.get(installOpp.InstallmentKey__c).Quote__r.SBQQ__Opportunity2__r.AccountID;
                installQuote.SBQQ__Opportunity2__c = installOppId;
                installQuote.SBQQ__SalesRep__c = installOpp.User__c;
                installQuote.SBQQ__ExpirationDate__c = installments.get(installOpp.InstallmentKey__c).Payment_Due_Date__c;
                installQuote.SBQQ__PricebookId__c = installments.get(installOpp.InstallmentKey__c).Quote__r.SBQQ__PricebookId__c;
                installQuote.SBQQ__PaymentTerms__c = 'Net 30';
                system.debug('installQuote: ' + installQuote);
    
                // Set the initial installment quote type to match the installment opportunity type
                // Set the initial installment opportunity to match the master opportunity order type
                if(mapOpportunityIdwithOrder.containsKey(installOpp.MasterOpportunity__c)){                
                    installQuote.SBQQ__Type__c = installOpp.Type;                
                }           
                installQuote.SBQQ__StartDate__c = installments.get(installOpp.InstallmentKey__c).Payment_Due_Date__c;
                system.debug('installment.size: ' + installments.size());
                system.debug('installmentCount: ' + installmentCount);
    
                if(installments.size() == installmentCount){
                    installQuote.SBQQ__EndDate__c = installments.get(installOpp.InstallmentKey__c).Quote__r.Display_End_Date__c;
                    installQuote.Display_End_Date__c = installments.get(installOpp.InstallmentKey__c).Quote__r.Display_End_Date__c;
                } else {
                    installQuote.SBQQ__EndDate__c = installments.values()[installmentCount].Payment_Due_Date__c.addDays(-1);
                    installQuote.Display_End_Date__c = installments.values()[installmentCount].Payment_Due_Date__c.addDays(-1);
                }
    
                system.debug('start date: ' + installQuote.SBQQ__StartDate__c);
                system.debug('end date: ' + installQuote.SBQQ__EndDate__c);
                if(installQuote.SBQQ__EndDate__c != null){
                    installQuote.SBQQ__SubscriptionTerm__c = installQuote.SBQQ__StartDate__c.monthsBetween(installQuote.SBQQ__EndDate__c);
                    installQuote.Quote_Term_Length__c = installQuote.SBQQ__StartDate__c.monthsBetween(installQuote.SBQQ__EndDate__c);
                }
                installQuote.SBQQ__Primary__c = True;
                installQuote.Billing_Contact__c = installments.get(installOpp.InstallmentKey__c).Quote__r.Billing_Contact__r.Id;
                installQuote.Provisioning_Contact__c = installments.get(installOpp.InstallmentKey__c).Quote__r.Provisioning_Contact__r.Id;
    
                system.debug('START INSERT quote'); 
                lstInstallSBQuote.add(installQuote);
                installmentCount++;
            }
            if(!lstInstallSBQuote.isEmpty()){
                try{
                    insert lstInstallSBQuote;
                }
                Catch(Exception e)
                {
                    system.debug('##############'+e.getMessage());
                    system.debug('##############'+lstInstallSBQuote);
                    ExceptionHandlingEmail.sendEmailonException(e);
                }
            }
            // Create Installmet Quote -- END
            
            // Update Installment Object - START
            List<Installment__c> lstInstallmentUpdate = new List<Installment__c>();
            for(Installment__c installment: installments.values()){
                installment.Installment_Opportunity__c = mapInstallmentWithOppId.get(installment.id);
                lstInstallmentUpdate.add(installment);
            }
            if(!lstInstallmentUpdate.isEmpty()){
                update lstInstallmentUpdate;
            }
            // Update Installment Object - END
            
            
            // Create Installmet Quote Line Items -- START
            List<SBQQ__Quote__c> lstInstallmentSBQuoteInserted = [SELECT id, currencyISOcode, SBQQ__Opportunity2__r.InstallmentKey__c from SBQQ__Quote__c where id IN: lstInstallSBQuote];
            List<SBQQ__QuoteLine__c> lstInstallSBQuoteLine = new List<SBQQ__QuoteLine__c>();
            for(SBQQ__Quote__c installQuote: lstInstallmentSBQuoteInserted){
                system.debug('START quote line items');
                SBQQ__QuoteLine__c installQuoteLineItem = new SBQQ__QuoteLine__c();
                
                // Add Quote Line Items:
                Id installQuoteId = installQuote.Id;
                               
                installQuoteLineItem.SBQQ__Product__c = CustomConstants.strInstallmentPaySubscriptionsProductId;
                if(Test.isRunningTest()){
                    installQuoteLineItem.SBQQ__Product__c = installmentSKU.id;
                }
                installQuoteLineItem.SBQQ__PricingMethod__c = 'Custom';
                installQuoteLineItem.SBQQ__ListPrice__c = installments.get(installQuote.SBQQ__Opportunity2__r.InstallmentKey__c).Payment_Due_Amount__c;
                installQuoteLineItem.SBQQ__NetPrice__c = installments.get(installQuote.SBQQ__Opportunity2__r.InstallmentKey__c).Payment_Due_Amount__c; 
                installQuoteLineItem.SBQQ__Quantity__c = 1;
                installQuoteLineItem.SBQQ__Quote__c = installQuote.Id;
                installQuoteLineItem.currencyISOcode = installQuote.currencyISOcode;
                //TODO: add the services to the first installment opp
    
                system.debug('installQuoteLineItem: ' + installQuoteLineItem);
                system.debug('START INSERT quote line item');
                //insert installQuoteLineItem;
                lstInstallSBQuoteLine.add(installQuoteLineItem);    
                system.debug('UPDATE installment opportunity');                
            }
            if(!lstInstallSBQuoteLine.isEmpty()){
                insert lstInstallSBQuoteLine;
            }
            // Create Installmet Quote Line Items -- END
            
            system.debug('START Change master opp to Close Won - Installments');
            // Executing within an After update trigger. Updating the Oppotunity stage requires a re-query of the Oppty
            List<Opportunity> lstOpportunityUpdate = new List<Opportunity>();
            for(Id oppID : opportunityIDs) {
                Opportunity newStageOppty = new Opportunity();
                newStageOppty.ID = oppID;
                newStageOppty.StageName = 'Closed Won - Installments';
                lstOpportunityUpdate.add(newStageOppty);
            }
            if(!lstOpportunityUpdate.isEmpty()){
                update lstOpportunityUpdate;
            }    
            system.debug('END createInstallmentOpportunities');
        
        set<Id> sOpportunityId = new set<Id>();
        sOpportunityId.addall(opportunityIDs);
        for(Opportunity opp: lstInstallOpportunity){
            sOpportunityId.add(opp.id);
        }
        // List<Order> orderListforInstallment = [SELECT Id, OpportunityId, Type, Quote__c, Subscription_Start_Date__c, Subscription_End_Date__c, Term_Months__c FROM Order WHERE (OpportunityId IN :lstInstallOpportunity OR OpportunityId IN :opportunityIDs)];
        // Create booking Detail On Master Opportunity
        BookingDetailAction.provisionBookingDetails(sOpportunityId);
        
    }
}