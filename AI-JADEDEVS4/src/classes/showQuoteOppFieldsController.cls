/**@@
#APEX CLASS    : showQuoteOppFieldsController
#DESCRIPTION                 :  Controller class used in "showQuoteOppFields" VF component
@@**/
public class showQuoteOppFieldsController{
    
    public SBQQ__Quote__c customQuoteObj {get; set;}
    public id quoteObjId;
    public Integer SubscriptionARR {get; set;}
    
    //get the quote id from visualforce component
    public ID getquoteObjId(){ 
        return quoteObjId; 
    }
    
    //set the quote id 
    public void setquoteObjId(ID SBQUOTEID){
        quoteObjId = SBQUOTEID;
        showQuoteOppFieldsController();
    }
    
    public string endpointurl {get;set;}
    //set the Quote Id 
    public void showQuoteOppFieldsController(){
        
        customQuoteObj =[Select id, Account_Name__c, CurrencyIsoCode, Opportunity_Name__c, SBQQ__Opportunity2__r.AccountId, SBQQ__Opportunity2__r.Type, SBQQ__Opportunity2__r.Partner_Account__r.name, SBQQ__Opportunity2__r.CloseDate, SBQQ__Account__c, SBQQ__Account__r.name, SBQQ__Opportunity2__c, SBQQ__Opportunity2__r.name, SBQQ__Opportunity2__r.StageName, SBQQ__Opportunity2__r.Order_Type__c, SBQQ__Opportunity2__r.Partner_Account__c, Base_ARR__c, Service_Net_Amount__c, Subscription_Net_Amount__c, Subscription_Avg_Discount__c, Service_Avg_Discount__c, Quote_Term_Length__c, Special_Terms__c, SBQQ__Opportunity2__r.Competition__c, SBQQ__Opportunity2__r.Description_pain_of_current_process__c, Approval_Justification__c FROM SBQQ__Quote__c WHERE id=: quoteObjId];
        
        endpointurl = URL.getSalesforceBaseUrl().toExternalForm();
        
        SubscriptionARR = Integer.valueOf(((customQuoteObj.Subscription_Net_Amount__c/customQuoteObj.Quote_Term_Length__c)*12));
    }
    
}