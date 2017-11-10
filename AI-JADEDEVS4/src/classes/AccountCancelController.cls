public class AccountCancelController {
    public Account currentAccount {get; set;}
    public ID currentID {get; set;}

    public AccountCancelController(ApexPages.StandardController standardController) 
    {
        currentID = ApexPages.currentPage().getParameters().get('id');
        currentAccount = (Account)SObjectUtils.get('Account', currentID);
    }
    
    public PageReference cancelAccount(){        
        closeOpportunities(currentID);
        cancelContacts(currentID);
        currentAccount.Status__c = 'Cancelled';
        update currentAccount;
        return new PageReference('/'+currentAccount.Id);
    }
    
    public Integer closeOpportunities(ID aid){
        List<Opportunity> openOpps = [SELECT Id, IsClosed,StageName,Loss_Reason__c FROM Opportunity WHERE AccountId=:aid AND IsClosed=False];
        for(Opportunity oppty : openOpps){
            oppty.StageName = 'Closed Lost';
            oppty.Loss_Reason__c = 'Cancelled';
        }
        update openOpps;
        return openOpps.size();
    }
    
    public Integer cancelContacts(ID aid){
        List<Contact> accountContacts = [SELECT Id, AccountId, Status__c FROM Contact WHERE AccountId=:aid];
        for(Contact c : accountContacts){
            c.Contact_Status__c = 'Cancelled';
        }
        update accountContacts;
        return accountContacts.size();
    }
}