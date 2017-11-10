public class InstallmentsAction {

    @InvocableMethod(
		label='Installments Action'
		description='Provisions installments for multi-year orders on payment plans')
		public static void provisionInstallments(List<Opportunity> opportunityRecord) {
            /*
             * Field that triggers installment? Checkbox on Oppty?
             * Terms and amounts must add-up to total on contracted order/oppty.
             * 
             * Allow sales reps to define annual installment payments.
             * Rollup summaries that verify sum of installments equals totals.
             * 
             * 1-to-1 mapping between installments and future forecast opportunities.
             * 
             */
            /*
			Map<ID, Order> orderMap = getOrders(opportunityRecord);
			boolean hasErrors = validateRecords(opportunityRecord, orderMap);
			if(hasErrors){ 
                System.debug('Opportunity has errors. Aborting provisionBookingDetails().');
                return;
            }
            
			for(Opportunity o : opportunityRecord){
            	provisionInstallments(o, orderMap);
			}*/
		}
}