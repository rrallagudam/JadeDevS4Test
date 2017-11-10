/**
 * trac_OpportunityProductController
 * @description Controller class for OpportunityProduct object
 * @author Thomas Diego Prananta, Traction on Demand
 * @date Sept 14, 2016
 */
public with sharing class trac_OpportunityProductController {
    
    public ID opportunityID {get;set;}

    // Constructor
    public trac_OpportunityProductController() {
        
    }

    // Method to get a SORTED list of Product Names based on 
    // a specific opportunity ID.
    // May return empty list if the opportunity does not have
    // any related products.
    public List<Product2> getSortedProductNameList () {

        List<Product2> productNameList = new List<Product2>();

        List<OpportunityLineItem> oppProdList =
        [ 
          SELECT Name, Product2.Name 
          FROM OpportunityLineItem
          WHERE (OpportunityId  =: opportunityID AND Product2Id != null)
          ORDER BY Product2.Name
          LIMIT 2000
        ];

        for(OpportunityLineItem oppProd : oppProdList) {
          productNameList.add(oppProd.Product2);
        }
  
        return productNameList;
    }
}