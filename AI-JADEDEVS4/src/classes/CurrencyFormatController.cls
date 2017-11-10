public with sharing class CurrencyFormatController {
	
	public String opportunityId{get;set;}
	public String fieldName{get;set;}
	
	public CurrencyFormatController() {		
	}
	
	public Decimal getFormattedValue() {
		if (opportunityId == null) {
			return 0;
		}		
		SObject oppObject = Database.query('SELECT Id, convertCurrency(' + fieldName + ') FROM Opportunity WHERE Id = \'' + opportunityId + '\'');
		return (Decimal) oppObject.get(fieldName);
	}

}