public class QuoteLineController {
 
    //added an instance varaible for the standard controller
    private ApexPages.StandardController controller {get; set;}
    public string deleteid{get;set;}
    SBQQ__QuoteLine__c opp;
    // the actual account
     private SBQQ__Quote__c a;
    // the results from the search. do not init the results or a blank rows show up initially on page load
    public List<SBQQ__QuoteLine__c> searchResults {get;set;}
    
   
    public QuoteLineController(ApexPages.StandardController controller) {
 
        //initialize the stanrdard controller
        this.controller = controller;
        this.a = (SBQQ__Quote__c)controller.getRecord();
 
    }
 
    // fired when the search button is clicked
     public PageReference search() {   
        // use some dynamic soql to find the related lines
        String qry = 'Select o.Id, o.SBQQ__Number__c, o.SBQQ__Product__c, o.SBQQ__Product__r.Name,o.SBQQ__TotalDiscountRate__c,o.SBQQ__TotalDiscountAmount__c, o.SBQQ__NetTotal__c,o.Total_Discount_Formatted__c,o.Name,o.SBQQ__ProductCode__c, o.SBQQ__ListPrice__c, o.SBQQ__Quantity__c from SBQQ__QuoteLine__c o Where SBQQ__Quote__c =\''+a.Id+'\'';
        searchResults = Database.query(qry);
        return null;
     }        
    
    public void deletetask()
    {
        SBQQ__QuoteLine__c opp=new SBQQ__QuoteLine__c(id=deleteid);
        delete opp;
        searchResults=[Select o.Id, o.SBQQ__Number__c, o.SBQQ__Product__c, o.SBQQ__Product__r.Name,o.SBQQ__TotalDiscountRate__c,o.SBQQ__TotalDiscountAmount__c, o.SBQQ__NetTotal__c,o.Total_Discount_Formatted__c,o.Name,o.SBQQ__ProductCode__c, o.SBQQ__ListPrice__c, o.SBQQ__Quantity__c from SBQQ__QuoteLine__c o Where SBQQ__Quote__c = :a.Id];
        //a = (Account)controller.getRecord();
        
    }
    }