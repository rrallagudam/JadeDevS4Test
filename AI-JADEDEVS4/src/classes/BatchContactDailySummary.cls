/**@@
#Batch CLASS NAME  : BatchContactDailySummary
#DESCRIPTION       : This is Batch class used to send an Email to Account owners.
An email containing a digest of all new contacts on accounts within the past 24 hours.
@@**/

public class BatchContactDailySummary implements Database.Batchable<sObject>
{
    /**@@
#DESCRIPTION     : This is start method which return the Account records.
#Paramaters      : (Database.BatchableContext bc) It is a reference to the Database.BatchableContext object 
@@**/
    public Database.QueryLocator start(Database.BatchableContext bc)
    { 
        //select accounts which has contacts created within in 24 hr.
        Datetime dt = System.now()-1;
        List<Account> accs = [SELECT ownerId FROM Account WHERE Id IN (SELECT accountId FROM Contact WHERE CreatedDate >=: dt)];
        
        // de-dupe the list of account owners
        Map<Id, Id> mapOwnerIds = new Map<Id, Id>();
        
        for(Account acc : accs)
            mapOwnerIds.put(acc.Ownerid, acc.Id);
        
        Set<Id> setOwnerIds = mapOwnerIds.keySet();
        
        String query = 'SELECT Id FROM User WHERE Id IN :setOwnerIds AND (NOT Profile.Name LIKE \'%Partner Community%\')';
        
        return Database.getQueryLocator(query);
    }//End of start method
    
    /**@@
#DESCRIPTION     : This is execute method, which is used to send an E-mail owner of the account. 
#Paramaters      :  1)BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object .
					2)List<User> lstUsers : List of users.
@@**/
    public void execute(Database.BatchableContext bc,List<User> lstUsers)
    {       
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        List<Messaging.SingleEmailMessage> allMails = new List<Messaging.SingleEmailMessage>();
        String[] toAddresses ;
        String[] ccAddresses ;
        List<Contact> conList;
        map<id,id> mapOwnerids=new map<id,id>();
        String accountCSM;
        String bgColor;
        
        OrgWideEmailAddress SalesOpsEmailId  = [select id ,address from OrgWideEmailAddress where address='salesops@adaptiveinsights.com'];
        List<Id> listOwnerIds =new List<Id>();
        
        for(User u : lstUsers)
            listOwnerIds.add(u.Id);
        
        
        for(integer i=0;i<listOwnerIds.size();i++){
            string htmlBody='' ;
            //contacts created within past 24 hrs
            Datetime dt = System.now()-1;
            conList =[SELECT Accountid,id,Name,Title,Calculated_Score__c,Lead_Offer_Most_Recent__c,Status__c,Account_Type__c,account.owner.email,Account.Account_CSM__r.Name,Account.ownerid,Account.name FROM Contact WHERE Account.ownerid =:listOwnerIds[i] AND CreatedDate >=: dt];
            system.debug('### '+conList.size());
            if(!conList.isEmpty()){
                htmlBody= '<h2>Summary of Contacts Created Within Last Day </h2>'+
                    '<p>You are receiving this email because in the last day a new contact was created on an account you own. '+
                    'If the status is equal to New, you have 2 days to review the contact and move it to Qualified, Unqualified or Unresponsive. '+
                    'If the account is a Customer, coordinate with the CSM to ensure someone is following up with the new contact.</p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Contact Name</th>'+
                    '<th>Title</th>'+
                    '<th>Account Name</th>'+
                    '<th>Lead Score</th>'+
                    '<th>Contact Status</th>'+
                    '<th>Account Type</th>'+
                    '<th>Account CSM</th>'+
                    '<th>Lead Offer - Most Recent</th>'+
                    '</tr>';
                
                for(integer j=0;j<conList.size();j++){
                    
                    if(conList[j].Title == null)
                        conList[j].Title = '';
                    if(conList[j].Lead_Offer_Most_Recent__c == null)
                        conList[j].Lead_Offer_Most_Recent__c = '';
                    
                    if(conList[j].Account.Account_CSM__r.Name == null)
                        accountCSM = '';
                    else
                        accountCSM = conList[j].Account.Account_CSM__r.Name;
                    
                    if(conList[j].Status__c == 'New')
                        bgColor = 'yellow';
                    else
                        bgColor = '';
                    
                    //set html body    
                    htmlBody+= '<tr bgcolor="' + bgColor + '"><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+conList[j].id+'">' +conList[j].Name + '</a></td>'+
                        '<td>'+ conList[j].Title+'</td>'+
                        '<td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+conList[j].AccountId+'">' + conList[j].Account.name + '</td>'+
                        '<td>' + conList[j].Calculated_Score__c + '</td>'+
                        '<td>' + conList[j].Status__c + '</td>'+
                        '<td>' + conList[j].Account_Type__c + '</td>'+
                        '<td>' + accountCSM + '</td>'+
                        '<td>' + conList[j].Lead_Offer_Most_Recent__c + '</td>'+
                        '</tr>';
                    
                    //to get the To and cc emails         
                    toAddresses = new String[] {conList[j].account.ownerid};
                       /* ccAddresses = new String[] {};
                            
                            if(ccAddresses[0]==null ){
                                ccAddresses.clear(); 
                            }*/
                    //mail.setTargetObjectId(conList[j].account.ownerid);
                    
                    //if(!ccAddresses.isEmpty() ){
                        //mail.setCcAddresses(ccAddresses);
                    //}
                    
                }//End of For
                
                mail.setOrgWideEmailAddressId(SalesOpsEmailId.id);
                mail.setTargetObjectId(listOwnerIds[i]);
                mail.setHtmlBody(htmlBody);   
                mail.setSaveAsActivity(false);
                //mail.setCcAddresses(ccAddresses);
                mail.setSubject('New Contacts Created - Action Reqd for New Status');
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                htmlBody='';
            }//End of If
        }//End of For
    }//End of Execute() method
    
    /**@@
#DESCRIPTION     :  It is a fisnish method of batch class. used for None purpose but its required in batch class.
#Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
@@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
}//End of BatchDailySummary class