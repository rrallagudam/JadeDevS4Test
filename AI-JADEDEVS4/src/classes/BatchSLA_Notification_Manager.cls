/**@@
#Batch CLASS NAME  : BatchSLA_Notification_Manager
#DESCRIPTION       : This send a weekly email for Managers if record is Out of SLA for lead,contact,Opportunity
@@**/

public class BatchSLA_Notification_Manager implements Database.Batchable<sObject>
{
    /**@@
#DESCRIPTION     : This is start method to get the ManagerID's to whome the Email should be send for weekly SLA
#Paramaters      : Database.BatchableContext
@@**/
    public Database.QueryLocator start(Database.BatchableContext bc)
    { 
        set<ID> UserId = new set<Id>();
        set<Id> ManagerIDs =new set<Id>();
        List<Lead> leadRec;
        List<Contact> contactRec;
        List<Opportunity> opportunityRecProspect;
        List<Opportunity> opportunityRecSAO;
        
        //New and Restored Leads should be identified as out of SLA Lead Owner after 2 business days still remaining in New or Restored status
        leadRec = [SELECT id,OwnerId,Status FROM Lead WHERE  X2_Business_Days_from_MQL__c <=: System.now() AND (Status =:CustomConstants.LeadStatusNew OR Status =:CustomConstants.LeadStatusRestored) AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner_Account__c = null AND Partner_Contact__c = null];
        
        for(Lead ld:leadRec )
            UserId.add(ld.OwnerId);    
        
        //Restored Contacts should be out of SLA if remaining in Restored status over 2 days.
        contactRec = [SELECT id,Name, Status__c,OwnerId FROM Contact WHERE  X2_Business_Days_from_MQL__c <=: System.today() AND  Status__c =:CustomConstants.ContactStatusRestored AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner__c = null AND Partner_Contact__c = null];
      
        for(Contact con:contactRec )
            UserId.add(con.OwnerId);
        
        //For opportunities that are in the Prospect status and have the first meeting scheduled, 5 days after the Meeting Schedule date
        opportunityRecProspect = [SELECT id,Name, StageName, OwnerId FROM Opportunity WHERE  X5_Business_Days_from_First_Meeting__c <=:System.today() AND StageName =:CustomConstants.OpportunityStageProspect AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile];
        
        for(Opportunity opp:opportunityRecProspect )
            UserId.add(opp.OwnerId);
        
        //For opportunities that are in the SAO status and have been in that status longer than 15 days
        opportunityRecSAO = [SELECT id,Name, StageName, OwnerId FROM Opportunity WHERE  SAO_Ischanged_Date_15_Days__c <=:System.today() AND  StageName =:CustomConstants.OpportunityStageSAO AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile];
        
        for(Opportunity opp:opportunityRecSAO )
            UserId.add(opp.OwnerId);
       
        List<User> usr= [SELECT id,ManagerID FROM user where id IN:UserId ];
        
        for(user u :usr)
            ManagerIDs.add(u.ManagerID);
            
        // For Testing -- START
        //ManagerIDs = new set<Id>();
        //ManagerIDs.add('00561000001Y3db');        
        // For Testing -- END
        string strCustManagerProfile = CustomConstants.strCustomerSuccessManagerProfile;
        String query ='SELECT ID FROM User WHERE ID In:ManagerIDs and Profile.Name !=: strCustManagerProfile';
        
        return Database.getQueryLocator(query);
        
    }//End of start method
    
    /**@@
#DESCRIPTION     : This is execute method which is used to send an Email to record owner's Manager for Out of SLA notification
#Paramaters      : 1.Database.BatchableContext 2.List<User> lstUsers
@@**/
    public void execute(Database.BatchableContext bc,List<User> lstUsers)
    {       
        
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        string htmlBody='' ;
        List<AggregateResult> leadRecord;
        List<AggregateResult> contactRec;
        List<AggregateResult> opportunityRecProspect;
        List<AggregateResult> opportunityRecSAO;
        set<string> userID =new set<string>();
        
        for(user u:lstUsers)
        {
            userID.add(string.valueOf(u.Id).substring(0,15));
            
        }//End of For
        
        //New and Restored Leads should be identified as out of SLA Lead Owner's after 2 business days still remaining in New or Restored status for the Lead Owner's Manager
        leadRecord = [SELECT OwnerId, Owner.Name ownerName, COUNT(id) totalRec FROM Lead WHERE  X2_Business_Days_from_MQL__c <=: System.now() AND (Status =:CustomConstants.LeadStatusNew OR Status =:CustomConstants.LeadStatusRestored) AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner_s_Manager_id__c IN: userID AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner_Account__c = null AND Partner_Contact__c = null GROUP BY OwnerId, Owner.Name ORDER BY Count(id) desc];
        set<Id> sLeadOwnerId = new set<Id>();
        
        for(AggregateResult ld:leadRecord){
            sLeadOwnerId.add( string.valueOf(ld.get('OwnerId')));
        }//End of For
        
        Map<Id, Id> mapLeadOwnerwithManager = new Map<Id, Id>();
        List<User> leadOwnerList = [select id, ManagerId from User where id in: sLeadOwnerId];
        
        for(User u: leadOwnerList){
            mapLeadOwnerwithManager.Put(u.id, u.ManagerId);
        }//End of For
        
        Map<string,List<wrapperAssignedRecords>> LeadWithManagerRecords = new Map<string,List<wrapperAssignedRecords>>();
        List<wrapperAssignedRecords> lstwrapperAssignedRecords;
        wrapperAssignedRecords objwrapperAssignedRecords;
        
        if(!leadRecord.isEmpty()){
        
        for(AggregateResult ld:leadRecord){
            if(!LeadWithManagerRecords.containsKey(mapLeadOwnerwithManager.get(string.valueOf(ld.get('OwnerId'))))){
                lstwrapperAssignedRecords = new List<wrapperAssignedRecords>();
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(ld.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(ld.get('ownerName'));
                lstwrapperAssignedRecords.add(objwrapperAssignedRecords);
                LeadWithManagerRecords.put(mapLeadOwnerwithManager.get(string.valueOf(ld.get('OwnerId'))), lstwrapperAssignedRecords);
            }//End of If
            else{
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(ld.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(ld.get('ownerName'));
                LeadWithManagerRecords.get(mapLeadOwnerwithManager.get(string.valueOf(ld.get('OwnerId')))).add(objwrapperAssignedRecords);
            }//End of else
        }//End of For
        }//End of If
        
        //Restored Contacts should be out of SLA if remaining in Restored status over 2 days.
        contactRec = [SELECT OwnerId, Owner.Name ownerName, Owner.ManagerID manager, COUNT(id) totalRec FROM Contact WHERE X2_Business_Days_from_MQL__c<=: System.today() AND  Status__c =:CustomConstants.ContactStatusRestored AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner.ManagerID IN:userID AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner__c = null AND Partner_Contact__c = null GROUP BY OwnerId, Owner.ManagerID, Owner.Name ORDER BY Count(id) desc];
        Map<string,List<wrapperAssignedRecords>> ContactsWithManagerRecords = new Map<string,List<wrapperAssignedRecords>>(); 
        Map<Id, Id> mapContactOwnerwithManager = new Map<Id, Id>();
        for(AggregateResult con:contactRec){
            mapContactOwnerwithManager.put(string.valueOf(con.get('OwnerId')),string.valueOf(con.get('manager')));
        }//End of For
        
        if(!contactRec.isEmpty()){
        for(AggregateResult con:contactRec){
            if(!ContactsWithManagerRecords.containsKey(mapContactOwnerwithManager.get(string.valueOf(con.get('OwnerId'))))){
                lstwrapperAssignedRecords = new List<wrapperAssignedRecords>();
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(con.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(con.get('ownerName'));
                lstwrapperAssignedRecords.add(objwrapperAssignedRecords);
                ContactsWithManagerRecords.put(mapContactOwnerwithManager.get(string.valueOf(con.get('OwnerId'))), lstwrapperAssignedRecords);
            }else{
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(con.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(con.get('ownerName'));
                ContactsWithManagerRecords.get(mapContactOwnerwithManager.get(string.valueOf(con.get('OwnerId')))).add(objwrapperAssignedRecords);
            }
        }//End of For
        
        }
        
        opportunityRecProspect=[SELECT OwnerId, Owner.Name ownerName, Owner.ManagerID manager, COUNT(id) totalRec FROM Opportunity WHERE  X5_Business_Days_from_First_Meeting__c <=:System.today() AND StageName =:CustomConstants.OpportunityStageProspect AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.ManagerID IN:userID AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile GROUP BY OwnerId, Owner.ManagerID, Owner.Name ORDER BY Count(id) desc];
        Map<string,List<wrapperAssignedRecords>> oppProspectWithManagerRecords = new Map<string,List<wrapperAssignedRecords>>(); 
        Map<Id, Id> mapOppProspectOwnerwithManager = new Map<Id, Id>();
        for(AggregateResult opp:opportunityRecProspect){
            mapOppProspectOwnerwithManager.put(string.valueOf(opp.get('OwnerId')),string.valueOf(opp.get('manager')));
        }//End of For
        if(!opportunityRecProspect.isEmpty()){
        for(AggregateResult oppObj:opportunityRecProspect){
            if(!oppProspectWithManagerRecords.containsKey(mapOppProspectOwnerwithManager.get(string.valueOf(oppObj.get('OwnerId'))))){
                lstwrapperAssignedRecords = new List<wrapperAssignedRecords>();
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(oppObj.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(oppObj.get('ownerName'));
                lstwrapperAssignedRecords.add(objwrapperAssignedRecords);
                oppProspectWithManagerRecords.put(mapOppProspectOwnerwithManager.get(string.valueOf(oppObj.get('OwnerId'))), lstwrapperAssignedRecords);
            }else{
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(oppObj.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(oppObj.get('ownerName'));
                oppProspectWithManagerRecords.get(mapOppProspectOwnerwithManager.get(string.valueOf(oppObj.get('OwnerId')))).add(objwrapperAssignedRecords);
            }
        }//End of For
       }
        
        opportunityRecSAO = [SELECT  OwnerId, Owner.Name ownerName, Owner.ManagerID manager, COUNT(id) totalRec FROM Opportunity WHERE  SAO_Ischanged_Date_15_Days__c <=:System.today() AND  StageName =:CustomConstants.OpportunityStageSAO AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.ManagerID IN:userID AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile GROUP BY OwnerId, Owner.ManagerID, Owner.Name ORDER BY Count(id) desc];
        Map<string,List<wrapperAssignedRecords>> oppSAOWithManagerRecords = new Map<string,List<wrapperAssignedRecords>>(); 
        Map<Id, Id> mapOppSAOOwnerwithManager = new Map<Id, Id>();
        for(AggregateResult opp:opportunityRecSAO){
            mapOppSAOOwnerwithManager.put(string.valueOf(opp.get('OwnerId')),string.valueOf(opp.get('manager')));
        }//End of For
        
        if(!opportunityRecSAO.isEmpty()){
        for(AggregateResult oppObj:opportunityRecSAO){
            if(!oppSAOWithManagerRecords.containsKey(mapOppSAOOwnerwithManager.get(string.valueOf(oppObj.get('OwnerId'))))){
                lstwrapperAssignedRecords = new List<wrapperAssignedRecords>();
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(oppObj.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(oppObj.get('ownerName'));
                lstwrapperAssignedRecords.add(objwrapperAssignedRecords);
                oppSAOWithManagerRecords.put(mapOppSAOOwnerwithManager.get(string.valueOf(oppObj.get('OwnerId'))), lstwrapperAssignedRecords);
            }else{
                objwrapperAssignedRecords = new wrapperAssignedRecords();
                objwrapperAssignedRecords.intTotalAssignedRecords = integer.valueOf(oppObj.get('totalRec'));
                objwrapperAssignedRecords.strOwnerName = string.valueOf(oppObj.get('ownerName'));
                oppSAOWithManagerRecords.get(mapOppSAOOwnerwithManager.get(string.valueOf(oppObj.get('OwnerId')))).add(objwrapperAssignedRecords);
            }
        }//End of For
        }
        objwrapperAssignedRecords = new wrapperAssignedRecords();
        //get the lead report id
        ID reporIdLead = objwrapperAssignedRecords.getReportId(CustomConstants.SLALeadReportName);
        //get contact report id
        ID reporIdContact = objwrapperAssignedRecords.getReportId(CustomConstants.SLAContactReportName);
        //get Opportunity report id
        ID reporIdProspectOpp = objwrapperAssignedRecords.getReportId(CustomConstants.SLAOppProspectReportName);
        //get Opportunity report id
        ID reporIdSAO_Opp = objwrapperAssignedRecords.getReportId(CustomConstants.SLAOppSAOReportName);
        
        
        for(User usr :lstUsers)
        { 
            htmlBody+= '<p>You are receiving this email because one or more of your reports have items that are out of our Service Level Agreements.  Please follow up with your reports on managing their items in SalesForce.  Let Sales Ops <a href="mailto:SalesOPs@adaptiveinsights.com">SalesOPs@adaptiveinsights.com</a>  know if you have any questions.</p>';
       
            //to create the HTML body for Lead with New or Restored status
            if(LeadWithManagerRecords != null && LeadWithManagerRecords.containsKey(usr.id) && !LeadWithManagerRecords.get(usr.id).isEmpty()){
               
                htmlBody+= '<p><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+reporIdLead+'">Click here to view the report for New or Restored Leads out of the 2 days SLA.</a></p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Lead Owner Name</th>'+
                    '<th>Lead Violations</th>'+
                    '</tr>';
                
                for (wrapperAssignedRecords assignRec : LeadWithManagerRecords.get(usr.id))  {
                    
                    htmlBody+= '<tr><td>'+assignRec.strOwnerName + '</td>'+
                        '<td>' + assignRec.intTotalAssignedRecords + '</td>'+
                        '</tr>' ;
                }//End of For
            }//End of If
           
            htmlBody+='</table>';
           
            //to create the HTML body for Contact with Restored status
            if( ContactsWithManagerRecords!=Null && ContactsWithManagerRecords.containsKey(usr.id) && !ContactsWithManagerRecords.get(usr.id).isEmpty()){
                
                htmlBody+= '<p><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+reporIdContact+'">Click here to view the report for Restored Contacts out of the 2 day SLA.</a></p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Contact owner Name</th>'+
                    '<th>Contact Violations</th>'+
                    '</tr>';
                
                for (wrapperAssignedRecords ar : ContactsWithManagerRecords.get(usr.id))  {
                    
                    htmlBody+= '<tr><td>'+ar.strOwnerName + '</td>'+
                        '<td>' + ar.intTotalAssignedRecords + '</td>'+
                        '</tr>' ;
                }//End of For
            }//End of If
            
            
            htmlBody+='</table></br>';
            
           //to create the HTML body for Opportunity with Prospect stage
            if( oppProspectWithManagerRecords!=Null && oppProspectWithManagerRecords.containsKey(usr.id) && !oppProspectWithManagerRecords.get(usr.id).isEmpty()){
                
                htmlBody+= '<p><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+reporIdProspectOpp+'">Click here to view the report for Opportunities that have had a 1st Meeting and are still in Prospect over the 2 day SLA.</a></p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Opportunity Owner Name</th>'+
                    '<th>Opportunity Violations</th>'+
                    '</tr>';
                
                for (wrapperAssignedRecords ar : oppProspectWithManagerRecords.get(usr.id))  {
                    
                    htmlBody+= '<tr><td>'+ar.strOwnerName + '</td>'+
                        '<td>' + ar.intTotalAssignedRecords + '</td>'+
                        '</tr>' ;
                }//End of For
               
                htmlBody+='</table></br>';
            }//End of if
           
            
            //to create the HTML body for Opportunity with SAO stage
            if( oppSAOWithManagerRecords!=Null && oppSAOWithManagerRecords.containsKey(usr.id) && !oppSAOWithManagerRecords.get(usr.id).isEmpty()){
               
                htmlBody+= '<p><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+reporIdSAO_Opp+'">Click here to view the report for Opportunities that have been in SAO over the 15 day SLA.</a></p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Opportunity Owner Name</th>'+
                    '<th>Opportunity Violations</th>'+
                    '</tr>'
                    ;
                
                for (wrapperAssignedRecords ar : oppSAOWithManagerRecords.get(usr.id))  {
                    
                    htmlBody+= '<tr><td>'+ar.strOwnerName + '</td>'+
                        '<td>' + ar.intTotalAssignedRecords + '</td>'+
                        '</tr>' ;
                }//End of for
               
                htmlBody+='</table></br>';
                
            }//End Of if 
            if(htmlBody != ''){
                mail.setTargetObjectId(usr.id);
                mail.setHtmlBody(htmlBody);   
                mail.setSaveAsActivity(false);
                mail.setSubject('Action Required : Out of SLA');
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                htmlBody='';
            }
        }//End of For
        
    }//End of Execute() method
    
/**@@
#CLASS NAME  : wrapperAssignedRecords
#DESCRIPTION       : This is Wrapper class to get the name and Id of Record and total count
@@**/
    
    public class wrapperAssignedRecords{
        public integer intTotalAssignedRecords;
        public string strOwnerName;
        
        public id getReportId(String reportName){
            
            List <Report> reportId = [SELECT Id,DeveloperName FROM Report where DeveloperName =:reportName];
            if(!reportId.isEmpty() )
            {
            return reportId[0].id;
            }
            else{
                return null;
            }
        }
        
    }
    /**@@
#DESCRIPTION     :  It is a finish method of batch class. used for None purpose but its required in batch class.
#Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
@@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
}//End of BatchDailySummary class