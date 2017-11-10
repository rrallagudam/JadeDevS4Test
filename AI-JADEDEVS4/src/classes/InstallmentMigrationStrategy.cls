global class InstallmentMigrationStrategy implements IOpportunityMigrationStrategy {

	public void Migrate(List<Opportunity> scope){
		OpportunityInstallmentsAction.createInstallmentOpportunities(scope);
	}
}