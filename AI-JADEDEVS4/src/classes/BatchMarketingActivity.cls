/**@@
#Batch CLASS NAME  :  BatchMarketingActivity
#DESCRIPTION       : An email will be sent on a daily basis containing a digest of all new activity history on leads and contacts within the past 24 hours
@@**/

public class BatchMarketingActivity implements Database.Batchable<sObject>, Database.Stateful
{
    Set<Id> whoIds;
    /**@@
#DESCRIPTION     : This is start method which return the task records.
#Paramaters      : (Database.BatchableContext bc) It is a reference to the Database.BatchableContext object 
@@**/
    public Database.QueryLocator start(Database.BatchableContext bc)
    { 
        //select task which is created within in past 24 hr.
        Datetime dt = System.now()-1;
        
        whoIds = new set<id>();
        set<id> ownerids = new set<id>();
        List<Task> t = [select id ,whoid ,who.Name ,subject,Type from task where createdDate >=:dt AND Status='Completed' AND (NOT Subject LIKE '%Unsubscribe%') AND CreatedById='00561000001XyHU' LIMIT 5000];

        for(Task tsk:t)
        {
            whoIds.add(tsk.WhoId);
            
        }
        List<Lead>  leadList = [SELECT id,ownerid FROM Lead WHERE Id IN:whoIds];
        for(Lead l:leadList)
        {
            ownerids.add(l.Ownerid);
        }
        
        List<Contact>  ConList = [SELECT id, Ownerid FROM Contact WHERE Id IN:whoIds];
        for(Contact c:ConList)
        {
            ownerids.add(c.Ownerid);
        }
        String query = 'SELECT id FROM User WHERE Id IN:ownerids';
        system.debug(query);
        return Database.getQueryLocator(query);
    }//End of start method
    
    /**@@
#DESCRIPTION     : This is execute method, which is used to send an E-mail owner of the Lead Or Contact. 
#Paramaters      :  1)BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object .
2)List<Task> listTask : List of task.
@@**/
    public void execute(Database.BatchableContext bc,List<User> listUser)
    {
        List<Lead> leadList = [SELECT id , Ownerid FROM lead where Id IN :whoIds AND Ownerid IN :listUser];
        List<Contact> conList = [SELECT id, Ownerid FROM Contact where Id IN :whoIds AND Ownerid IN :listUser];
        
       	OrgWideEmailAddress SalesOpsEmailId  = [select id ,address from OrgWideEmailAddress where address='salesops@adaptiveinsights.com'];
        
        set<id> batchWhoIds =new set<id>();        
        for(Lead leadObj:leadList)
        {
            batchWhoIds.add(leadObj.id);
        }
        
        for(Contact ConObj:conList)
        {
            batchWhoIds.add(ConObj.id);
        }
        
        Datetime dt = System.now()-1;
        List<Task> listTask = [SELECT id ,whoid ,who.Name ,Subject,Type FROM Task WHERE createdDate >=:dt AND Status='Completed' AND (NOT Subject LIKE '%Unsubscribe%') AND Whoid IN :batchWhoIds AND CreatedById='00561000001XyHU' LIMIT 5000];
        
        system.debug(listUser);
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        set<id> setLeadId=new set<id>();
        
        //set of Lead and Contact id's related to task.
        for(Task objTask : listTask){
            setLeadId.add(objTask.WhoId);
        }
        
        
        if(!setLeadId.isEmpty()){
            //Map of lead record
            Map<Id, Lead> mapLead = new Map<Id, lead> ([SELECT Id, OwnerId, Owner.Email,Title,Company, Lead_Score__c, Status, Lead_Offer_Most_Recent__c  FROM Lead WHERE Id IN: setLeadId AND Type__c NOT IN('Partner', 'Partner Prospect', 'Customer')]);
            //Map of lead record
            Map<Id, Contact> mapCon = new Map<Id, Contact> ([SELECT Id, OwnerId, Status__c, Account_Type__c , Lead_Offer_Most_Recent__c, Calculated_Score__c, Owner.Email,title,Accountid,Account.Name FROM Contact WHERE Id IN: setLeadId]);   
            
            Map<Id, List<Task>> mapListTaskByLeadId = new Map<Id, List<Task>>();
            
            for(Task objTask : listTask){
                
                List<Task> listInnerTask = new List<Task>();
                Id idLeadOwner;
                Id idContactOwner;
                
                if(mapCon.containsKey(objTask.WhoId) && mapCon.get(objTask.WhoId) != null ){
                    idContactOwner = mapCon.get(objTask.WhoId).OwnerId;
                    
                    if(idContactOwner != null && mapListTaskByLeadId.containsKey(idContactOwner)){
                        listInnerTask = mapListTaskByLeadId.get(idContactOwner);
                    }
                    listInnerTask.add(objTask);
                    mapListTaskByLeadId.put(idContactOwner, listInnerTask);
                }
                
                
                if(mapLead.containsKey(objTask.WhoId) && mapLead.get(objTask.WhoId) != null ){
                    idLeadOwner = mapLead.get(objTask.WhoId).OwnerId;
                    
                    if(idLeadOwner != null && mapListTaskByLeadId.containsKey(idLeadOwner)){
                        listInnerTask = mapListTaskByLeadId.get(idLeadOwner);
                    }
                    listInnerTask.add(objTask);
                    mapListTaskByLeadId.put(idLeadOwner, listInnerTask);
                    
                }
            }
            Set<id> userId = mapListTaskByLeadId.keySet();
            Set<id> activeuserId =new Set<Id>();
            //select the Active users only.
            List<User> userLst=[SELECT id FROM user WHERE ID IN:userId AND isActive = true];
            
            for(User usrList: userLst)
            {
                activeuserId.add(usrList.id);
            }
            
            for(Id idKey : activeuserId){
                system.debug(idKey);
                if(mapListTaskByLeadId.containsKey(idKey) && mapListTaskByLeadId.get(idKey) != null){
                    String header='';
                    String strEmailheaderlead='';
                    String strEmailLead='';
                    String strEmailCon='';
                    String strEmailheaderContact='';
                    String allEMail;
                    boolean contactAvailable =False;
                    boolean leadAvailable =False;
                    
                    header ='<h2>Summary of Marketing Activity Created Within Last Day</h2>'+
                        '<p>You are receiving this email because in the last 24 hours there was a Marketing Activity on an Lead or Contact that you own in SFDC.  This is to provide you insight into what has happened in the last day, please follow up as appropriate.</p>';
                    
                    strEmailheaderlead=  '<p> <h3>Activity on following Lead(s) within past 24Hrs</h3></p>'+
                        '<table border="1" style="border-collapse: collapse"  cellpadding="3">'+
                        '<th>Lead Name</th>'+
                        '<th>Title</th>'+
                        '<th>Company</th>'+
                        '<th>Lead Score</th>'+
                        '<th>Lead Status</th>'+
                        '<th>Lead Offer - Most Recent</th>'+
                        '<th>Activity</th>'+
                        '</tr>';
                    
                    strEmailheaderContact= '<p> <h3>Activity on following Contact(s) within past 24Hrs</h3></p>'+
                        '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                        '<th>Contact Name</th>'+
                        '<th>Title</th>'+
                        '<th>Account Name</th>'+
                        '<th>Lead Score</th>'+
                        '<th>Contact Status</th>'+
                        '<th>Account Type</th>'+
                        '<th>Lead Offer - Most Recent</th>'+
                        '<th>Activity</th>'+
                        '</tr>';
                    strEmailLead = strEmailheaderlead;
                    strEmailCon = strEmailheaderContact;
                    
                    
                    for(Task objTask : mapListTaskByLeadId.get(idKey)){
                        //insert the lead record in table
                        if((''+objTask.whoid).StartsWith('00Q')){
                            
                            
                            leadAvailable =true;
                            strEmailLead += '<tr ><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+objTask.Whoid+'">' +objTask.who.Name + '</a></td>'+
                                '<td>' +  (String.isBlank(mapLead.get(objTask.WhoId).Title)? '' : mapLead.get(objTask.WhoId).Title) + '</td>'+
                                '<td>' +  (String.isBlank(mapLead.get(objTask.WhoId).Company)? '' : mapLead.get(objTask.WhoId).Company) + '</td>'+
                                '<td>' +  mapLead.get(objTask.WhoId).Lead_Score__c + '</td>'+
                                '<td>' +  mapLead.get(objTask.WhoId).Status + '</td>'+
                                '<td>' +  (String.isBlank(mapLead.get(objTask.WhoId).Lead_Offer_Most_Recent__c)? '' : mapLead.get(objTask.WhoId).Lead_Offer_Most_Recent__c) + '</td>'+
                                '<td>' +  objTask.Subject + '</td>'+ 
                                '</tr>'; 
                        }
                        
                        if((''+objTask.whoid).StartsWith('003'))
                        {
                            //insert the Contact record in table
                            contactAvailable =true;
                            strEmailCon += '<tr ><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+objTask.Whoid+'">' +objTask.who.Name + '</a></td>'+
                                '<td>' +  (String.isBlank(mapCon.get(objTask.WhoId).Title)? '' : mapCon.get(objTask.WhoId).Title) + '</td>'+
                                '<td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+ mapCon.get(objTask.WhoId).Accountid +'">' +  mapCon.get(objTask.WhoId).Account.Name+ '</td>'+
                                '<td>' +  mapCon.get(objTask.WhoId).Calculated_Score__c + '</td>'+
                                '<td>' +  mapCon.get(objTask.WhoId).Status__c + '</td>'+
                                '<td>' +  mapCon.get(objTask.WhoId).Account_Type__c + '</td>'+
                                '<td>' +  (String.isBlank(mapCon.get(objTask.WhoId).Lead_Offer_Most_Recent__c)? '' : mapCon.get(objTask.WhoId).Lead_Offer_Most_Recent__c) + '</td>'+
                                '<td>' +  objTask.Subject+ '</td>'+ 
                                '</tr>';              
                        }   
                    }
                    strEmailLead += '</table>';
                    strEmailCon += '</table>';
                    //if contact and lead record both are available
                    if(contactAvailable && leadAvailable){
                        
                        allEMail=strEmailLead +strEmailCon; 
                    }
                    
                    //if contact is available
                    if(contactAvailable && !leadAvailable){
                        
                        allEMail= strEmailCon;                  
                    }  
                    //if lead is available
                    if(leadAvailable && !contactAvailable){
                        
                        allEMail=strEmailLead ; 
                    }
                    
                    
                    header+=allEMail ;
                    mail.setOrgWideEmailAddressId(SalesOpsEmailId.id);
                    mail.setTargetObjectId(idKey);
                    mail.setHtmlBody(header);
                    mail.setSaveAsActivity(false);
                    mail.setSubject('New Marketing Activity ');
                    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                    
                }
            }
        }
    }
    
    /**@@
#DESCRIPTION     :  It is a fisnish method of batch class. used for None purpose but its required in batch class.
#Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
@@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
}//End of BatchDailySummary class