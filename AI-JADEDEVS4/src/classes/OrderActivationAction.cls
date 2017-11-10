public class OrderActivationAction {

    @InvocableMethod(
        label='Order Activation Action'
        description='Updates various Opportunity fields associated with an Order action event')
        public static void activateOrder(List<Order> orderRecord) {
            Set<ID> opportunityIDs = new Set<ID>();
            Set<ID> oaccountIDs = new Set<ID>(); 
            List<Account> accountList = new List<Account>();

            //Why is this looking for more than 1 opp?
            for(Order o : orderRecord){
                opportunityIDs.add(o.OpportunityId);
            }

            List<Opportunity> opportunityList = [SELECT Id,Name,StageName,SBQQ__Contracted__c,AccountID FROM Opportunity WHERE Id IN :opportunityIDs];

            /*
             * Set associated Opportunity to "Closed-Won"
             */
            for(Opportunity oppty : opportunityList){
                oppty.StageName = 'Closed Won';
                
                If(oppty.Is_Installment_Opportunity__c == False){
                    oppty.SBQQ__Contracted__c = true;
                }
                oaccountIDs.add(oppty.AccountID);
            }
            update opportunityList;

            /*
             * Set associated Account to "Customer"
             */
           for(Account oaccount : [SELECT ID,Type FROM Account WHERE ID IN: oaccountIDs AND Type=: 'Customer Prospect']){
                accountList.add(new Account(ID=oaccount.ID,Type='Customer'));
            }   
            if(!accountList.isEmpty())
                update accountList;
                        
            /* 
             * Activate Contracts and auto-provision renewal Opportunity 
             */
             //How is the contract being generated?
            List<Contract> contractList = [SELECT Id,SBQQ__Opportunity__c,SBQQ__RenewalForecast__c,Status FROM Contract WHERE SBQQ__Opportunity__c IN :opportunityIDs];
            
            System.debug(contractList.size() + ' contractList size');
            for(Contract c : contractList){
                id firstid = (new list<Id>(opportunityIDs))[0];
                c.Status = 'Activated';
                //TODO: Change the term length -- this updated based on a workflow (Contract Renewal Term), but this is a default
                c.SBQQ__RenewalTerm__c = 12;
                //c.SBQQ__RenewalForecast__c = true; 
                c.SBQQ__Opportunity__c = firstid;               
            }
            if(contractList.size() > 0 && !Test.isRunningTest()){
                update contractList;
                System.debug(contractList.size() + ' contractList size');
            }
        }
}