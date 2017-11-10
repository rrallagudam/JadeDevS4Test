/**@@
#Batch CLASS NAME  : BatchContactDailySummary
#DESCRIPTION       : This is Batch class used to send an Email to Account owners.
An email containing a digest of all new contacts on accounts within the past 24 hours.
@@**/

public class BatchContactDailySummaryCSM implements Database.Batchable<sObject>
{
    /**@@
#DESCRIPTION     : This is start method which return the user records.
#Paramaters      : (Database.BatchableContext bc) It is a reference to the Database.BatchableContext object 
@@**/
    public Database.QueryLocator start(Database.BatchableContext bc)
    { 
        Map<Id, Id> mapOwnerIds = new Map<Id, Id>();
        
        //select accounts which has contacts created within in 24 hr.
        Datetime dt = System.now()-1;
        List<Account> accs = [SELECT Account_CSM__c,id FROM Account WHERE Id IN (SELECT accountId FROM Contact WHERE CreatedDate >=: dt)];
        
        for(Account acc : accs)
            mapOwnerIds.put(acc.Account_CSM__c, acc.Id);
        
        Set<Id> setOwnerIds = mapOwnerIds.keySet(); // this is de-duping account owners
        
        String query = 'SELECT Id FROM User WHERE Id IN :setOwnerIds';
        
        return Database.getQueryLocator(query);
    }//End of start method
    
    /**@@
#DESCRIPTION     : This is execute method, which is used to send an E-mail to Account CSM of the account. 
#Paramaters      :  1)BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
2)List<Account> lstAcc : List of users.
@@**/
    public void execute(Database.BatchableContext bc,List<User> lstUsers)
    {       
        
        Datetime dt = System.now()-1;
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        Map <id, list<Contact>> MapContact = new Map <id, list<Contact>>();
        List<Contact> listInnerContact = new List<Contact>();
        string htmlBody='' ;
        
        for(User u:lstUsers){
                     
            list<Contact> conList =[SELECT id,Name,Accountid,Account.name,Account.Owner.name,Status__c,Account.Account_CSM__c,Lead_Offer_Most_Recent__c,Title,Account_Type__c,Calculated_Score__c FROM Contact WHERE CreatedDate >=: dt AND Account.Account_CSM__c =:u.id  ];
           
            if(!conList.isEmpty()){
                htmlBody= '<h2>Summary of Contacts Created Within Last Day </h2>'+
                    '<p>You are receiving this email because in the last day a new contact was created on an account on which you are as a Account CSM. '+
                    'If the status is equal to New, you have 2 days to review the contact and move it to Qualified, Unqualified or Unresponsive. '+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Contact Name</th>'+
                    '<th>Title</th>'+
                    '<th>Account Name</th>'+
                    '<th>Lead Score</th>'+
                    '<th>Contact Status</th>'+
                    '<th>Account Type</th>'+
                    '<th>Account Owner</th>'+
                    '<th>Lead Offer - Most Recent</th>'+
                    '</tr>';
                for(integer i=0;i<conList.size();i++)
                {
                    if(conList[i].Title == null)
                        conList[i].Title = '';
                    if(conList[i].Lead_Offer_Most_Recent__c == null)
                        conList[i].Lead_Offer_Most_Recent__c = '';
                    htmlBody+= '<tr><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+conList[i].id+'">' +conList[i].Name+ '</a></td>'+
                        '<td>'+ conList[i].Title+'</td>'+
                        '<td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+conList[i].AccountId+'">' + conList[i].Account.name + '</td>'+
                        '<td>' + conList[i].Calculated_Score__c + '</td>'+
                        '<td>' + conList[i].Status__c + '</td>'+
                        '<td>' + conList[i].Account_Type__c + '</td>'+
                        '<td>' + conList[i].Account.Owner.Name + '</td>'+
                        '<td>' + conList[i].Lead_Offer_Most_Recent__c + '</td>'+
                        '</tr>';
                }//End of For
                
            }//End of If  
            mail.setTargetObjectId(u.id);
            mail.setHtmlBody(htmlBody);   
            mail.setSaveAsActivity(false);
            mail.setSubject('New Contacts Created - Action Required for New Status');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            htmlBody='';
        }//End of For
    }//End of Execute() method
    
    /**@@
#DESCRIPTION     :  It is a finish method of batch class. used for None purpose but its required in batch class.
#Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
@@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
}//End of BatchDailySummary class