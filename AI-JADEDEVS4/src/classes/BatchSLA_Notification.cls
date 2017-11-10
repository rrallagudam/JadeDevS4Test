/**@@

#Batch CLASS NAME  : BatchSLA_Notification
#DESCRIPTION       : This send an daily email for owner of record if record is Out of SLA
@@**/

public class BatchSLA_Notification implements Database.Batchable<sObject>
{
    /**@@
#DESCRIPTION     : This is start method to get the user to whome the Email should be send.
#Paramaters      : Database.BatchableContext
@@**/
    public Database.QueryLocator start(Database.BatchableContext bc)
    { 
        set<ID> UserId = new set<Id>();
        List<Lead> leadRec;
        List<Contact> contactRec;
        List<Opportunity> opportunityRecProspect;
        List<Opportunity> opportunityRecSAO;
       
        //New and Restored Leads should be identified as out of SLA Lead Owner after 2 business days still remaining in New or Restored status
        leadRec = [SELECT Name, Status,OwnerId FROM Lead WHERE  X2_Business_Days_from_MQL__c<=: System.now() AND (Status =:CustomConstants.LeadStatusNew OR Status =:CustomConstants.LeadStatusRestored) AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner_Account__c = null AND Partner_Contact__c = null];
     
        
        for(Lead ld:leadRec )
        UserId.add(ld.OwnerId);    
        
        //Restored Contacts should be out of SLA if remaining in Restored status over 2 days.
        contactRec = [SELECT Name, Status__c,OwnerId FROM Contact WHERE  X2_Business_Days_from_MQL__c <=: System.today() AND  Status__c =:CustomConstants.ContactStatusRestored AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner__c = null AND Partner_Contact__c = null];
        
        for(Contact con:contactRec )
        UserId.add(con.OwnerId);
       
        //For opportunities that are in the Prospect status and have the first meeting scheduled, 5 days after the Meeting Schedule date
        opportunityRecProspect = [SELECT Name, StageName, OwnerId FROM Opportunity WHERE  X5_Business_Days_from_First_Meeting__c <=:System.today() AND StageName =:CustomConstants.OpportunityStageProspect AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile];
          
        for(Opportunity opp:opportunityRecProspect )
        UserId.add(opp.OwnerId);
        
        //For opportunities that are in the SAO status and have been in that status longer than 15 days
         opportunityRecSAO = [SELECT Name, StageName, OwnerId FROM Opportunity WHERE  SAO_Ischanged_Date_15_Days__c <=:System.today() AND  StageName =:CustomConstants.OpportunityStageSAO AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile];
        
        for(Opportunity opp:opportunityRecSAO )
        UserId.add(opp.OwnerId);
        
        // For Testing -- START
        //UserId = new set<Id>();
        //UserId.add('00561000002GiGt');
        // For Testing -- END
        
        String query ='SELECT ID FROM User WHERE ID In:UserId';
            
        return Database.getQueryLocator(query);
        
    }//End of start method
    
    /**@@
#DESCRIPTION     : This is execute method which is used to send an Email to record owner of Out of SLA notification
#Paramaters      : 1.Database.BatchableContext 2.List<User> lstUsers
@@**/
    public void execute(Database.BatchableContext bc,List<User> lstUsers)
    {       
        
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        String[] toAddresses ;
        string htmlBody='' ;
        List<Contact> contactRec;
        List<Lead> leadRec;
        List<Opportunity> opportunityRecProspect;
        List<Opportunity> opportunityRecSAO;
        
        // Fetch Lead Records
        Map<Id, List<Lead>> mapLeadRec = new Map<Id, List<Lead>>();
        List<Lead> existingleadRec = [SELECT Name, Status,CreatedDate,Timestamp_Lifecycle_MQL__c,OwnerId FROM Lead WHERE X2_Business_Days_from_MQL__c <=: System.now() AND (Status =:CustomConstants.LeadStatusNew OR Status =:CustomConstants.LeadStatusRestored) AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner_Account__c = null AND Partner_Contact__c = null];
        for(Lead ld: existingleadRec){
            if(mapLeadRec.containsKey(ld.Ownerid)){
                mapLeadRec.get(ld.Ownerid).add(ld);
            }else{
                List<Lead> lstLead = new List<Lead>();
                lstLead.add(ld);
                mapLeadRec.Put(ld.Ownerid, lstLead);
            }
        }
        
        // Fetch Contact Records
        Map<Id, List<Contact>> mapContactRec = new Map<Id, List<Contact>>();
        List<Contact> existingContactRec = [SELECT Name, Status__c,Timestamp_Lifecycle_MQL__c,OwnerId,CreatedDate FROM Contact WHERE X2_Business_Days_from_MQL__c <=: System.today() AND  Status__c =:CustomConstants.ContactStatusRestored AND Lifecycle_Stage__c =: CustomConstants.LifecycleMQL AND Timestamp_Lifecycle_MQL__c >=: CustomConstants.augustFirstDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile AND Partner__c = null AND Partner_Contact__c = null];
        for(Contact con: existingContactRec){
            if(mapContactRec.containsKey(con.Ownerid)){
                mapContactRec.get(con.Ownerid).add(con);
            }else{
                List<Contact> lstContact = new List<Contact>();
                lstContact.add(con);
                mapContactRec.Put(con.Ownerid, lstContact);
            }
        }
        
        // Fetch Opportunity Prospect Records
        Map<Id, List<Opportunity>> mapOpportunityProspectRec = new Map<Id, List<Opportunity>>();
        List<Opportunity> existingOpportunityProspectRec = [SELECT Name, StageName,First_Meeting_Date__c,CreatedDate, OwnerId FROM Opportunity WHERE  X5_Business_Days_from_First_Meeting__c <=:System.today() AND StageName =:CustomConstants.OpportunityStageProspect AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile];

        for(Opportunity opp: existingOpportunityProspectRec){
            if(mapOpportunityProspectRec.containsKey(opp.Ownerid)){
                mapOpportunityProspectRec.get(opp.Ownerid).add(opp);
            }else{
                List<Opportunity> lstOpportunity = new List<Opportunity>();
                lstOpportunity.add(opp);
                mapOpportunityProspectRec.Put(opp.Ownerid, lstOpportunity);
            }
        }
        
        // Fetch Opportunity SAO Records
        Map<Id, List<Opportunity>> mapOpportunitySAORec = new Map<Id, List<Opportunity>>();
        List<Opportunity> existingOpportunitySAORec = [SELECT Name, StageName, OwnerId,CreatedDate,First_Meeting_Date__c,Timestamp_SAO__c FROM Opportunity WHERE  SAO_Ischanged_Date_15_Days__c <=:System.today() AND  StageName =:CustomConstants.OpportunityStageSAO AND CreatedDate >=: CustomConstants.oppCreatedDate AND Owner.Profile.Name !=: CustomConstants.strCustomerSuccessManagerProfile];
        
        for(Opportunity opp: existingOpportunitySAORec){
            if(mapOpportunitySAORec.containsKey(opp.Ownerid)){
                mapOpportunitySAORec.get(opp.Ownerid).add(opp);
            }else{
                List<Opportunity> lstOpportunitySAO = new List<Opportunity>();
                lstOpportunitySAO.add(opp);
                mapOpportunitySAORec.Put(opp.Ownerid, lstOpportunitySAO);
            }
        }
        
        for(User usr :lstUsers)
        {
        if(mapLeadRec.containsKey(usr.id)){
            leadRec = mapLeadRec.get(usr.id);
        }
        if(mapContactRec.containsKey(usr.id)){
            contactRec = mapContactRec.get(usr.id);
        }
        if(mapOpportunityProspectRec.containsKey(usr.id)){
            opportunityRecProspect = mapOpportunityProspectRec.get(usr.id);
        }
        if(mapOpportunitySAORec.containsKey(usr.id)){
            opportunityRecSAO = mapOpportunitySAORec.get(usr.id);
        }
        
        if(leadRec != null && !leadRec.isEmpty()){
             
                htmlBody= 
                    '<p>You are receiving this notification because you have a lead, contact or opportunity out of our Service Level Agreements.'+
                    ' If the record should not be yours, you are responsible for assigning it to the correct person.'+
                    ' Please click on the below link and complete the work necessary to move the record into the appropriate status.'+
                    '<p>Leads in New or Restored status for longer than our SLA of one business day. </p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Lead Name</th>'+
                    '<th>Status</th>'+
                    '<th>Lead Created Date</th>'+
                    '<th>MQL Date</th>'+
                    '</tr>';
                
                for(integer j=0;j<leadRec.size();j++){
                    //set html body    
                    htmlBody+= '<tr><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+leadRec[j].id+'">' +leadRec[j].Name + '</a></td>'+
                       '<td>' + leadRec[j].Status + '</td>'+
                        '<td>' + (leadRec[j].CreatedDate).date().format() + '</td>'+
                        '<td>' + (leadRec[j].Timestamp_Lifecycle_MQL__c==null?'':leadRec[j].Timestamp_Lifecycle_MQL__c.date().format()) + '</td>'+
                        '</tr>';
              }//End of For
            htmlBody+='</table>';
           }//End of If
            
            
           if(contactRec != null && !contactRec.isEmpty()){
             
                htmlBody+= '<p>Contacts in Restored status for longer than our SLA of one business day.</p>'+
                    //' This means that the contact was previously designated as not interested or disqualified but the contact has taken further action on our website that indicates they are interested again in Adaptive.'+
                    //' You can view the activities taken by the contact in the Activities section of the contact record. </p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Contact Name</th>'+
                    '<th>Contact Status</th>'+
                    '<th>Contact Created Date</th>'+
                    '<th>MQL Date</th>'+
                    '</tr>';
                
                for(integer j=0;j<contactRec.size();j++){
                    //set html body    
                    htmlBody+= '<tr><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+contactRec[j].id+'">' +contactRec[j].Name + '</a></td>'+
                       '<td>' + contactRec[j].Status__c + '</td>'+
                        '<td>' + (contactRec[j].CreatedDate).date().format() + '</td>'+
                        '<td>' + (contactRec[j].Timestamp_Lifecycle_MQL__c==null?'':contactRec[j].Timestamp_Lifecycle_MQL__c.date().format() )+ '</td>'+
                        '</tr>' ;
                  }//End of For
               htmlBody+='</table>';
            }//End of if
            
            if(opportunityRecProspect != null && !opportunityRecProspect.isEmpty()){
             
                htmlBody+= '<p>Opportunities in Prospect status where the First Meeting has already taken place and the opportunity status has not changed for longer than our SLA.</p>'+
                    //' Please use the following statuses: <b> SAO if you are still qualifying, </b> <b> SQO if you agree it is a qualified opportunity to include in your pipeline</b>,'+
                    //' <b>SDR Nurture if the meeting did not take place (please chatter your SDR to reschedule) or the timeframe is longer than 1 year and it needs to be nurtured by your SDR</b>,'+
                    //' or <b> Disqualify if the opportunity is not worth pursuit.</b></p>'+
                    //'</br>'+
                   '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Opportunity Name</th>'+
                    '<th>Stage Name</th>'+
                    '<th>Created Date</th>'+
                    '<th>First Meeting Date</th>'+
                    '</tr>';
                
                for(integer j=0;j<opportunityRecProspect.size();j++){
                    //set html body    
                    htmlBody+= '<tr><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+opportunityRecProspect[j].id+'">' +opportunityRecProspect[j].Name + '</a></td>'+
                       '<td>' + opportunityRecProspect[j].StageName + '</td>'+
                       '<td>' + (opportunityRecProspect[j].CreatedDate).date().format() + '</td>'+
                       '<td>' + (opportunityRecProspect[j].First_Meeting_Date__c==null?'':opportunityRecProspect[j].First_Meeting_Date__c.format())  + '</td>'+
                        '</tr>';
                    
                }//End of For         
                htmlBody+='</table>';
               }//End of if
            
             if(opportunityRecSAO != null && !opportunityRecSAO.isEmpty()){
             
                htmlBody+= '<p>Opportunities in SAO status and the opportunity status has not changed for longer than our SLA.</p>'+
                    //' Please change to the appropriate status: <b> SQO if you agree it is a qualified opportunity to include in your pipeline,'+
                    //' Field Nurture if you need to nurture it. If you wish to move it to SDR Nurture, it must be moved back to Prospect first,'+
                    //' or  Disqualify if the opportunity is not worth pursuit. </p>'+
                    '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                    '<tr><th>Opportunity Name</th>'+
                    '<th>Stage Name</th>'+
                    '<th>Create Date</th>'+
                    '<th>First Meeting Date</th>'+
                    '<th>SAO Date</th>'+
                    '</tr>';
                
                for(integer j=0;j<opportunityRecSAO.size();j++){
                    //set html body    
                    htmlBody+= '<tr><td><a href="'+System.URL.getSalesforceBaseUrl().toExternalForm()+'/'+opportunityRecSAO[j].id+'">' +opportunityRecSAO[j].Name + '</a></td>'+
                       '<td>' + opportunityRecSAO[j].StageName + '</td>'+
                        '<td>' + (opportunityRecSAO[j].CreatedDate).date().format() + '</td>'+
                        '<td>' + (opportunityRecSAO[j].First_Meeting_Date__c==null?'':opportunityRecSAO[j].First_Meeting_Date__c.format()) + '</td>'+
                        '<td>' + (opportunityRecSAO[j].Timestamp_SAO__c==null?'':opportunityRecSAO[j].Timestamp_SAO__c.format())+ '</td>'+
                        
                        '</tr>';
              }//End of For
            htmlBody+='</table>';
         }//End Of if
         if(htmlBody != ''){
             htmlBody+='<p><strong><span style="color: black;">Extra Instructions:</span></strong></p> <ul style="margin-top: 0in;"> <li style="color: black; margin-left: 0in; tab-stops: list .5in;"><span style="font-size: 12.0pt;">FOR RESTORED CONTACTS: This means that the contact was previously designated as not interested or disqualified but the contact has taken further action on our website that indicates they are interested again in Adaptive. You can view the activities taken by the contact in the Activities section of the contact record.</span></li> <li style="color: black; margin-left: 0in; tab-stops: list .5in;"><span style="font-size: 12.0pt;">FOR PROSPECT OPPORTUNITIES: Please use the following statuses: </span></li> </ul> <ul style="margin-top: 0in;"> <ul style="margin-top: 0in;"> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><strong><span style="font-size: 12.0pt;">SAO</span></strong><span style="font-size: 12.0pt;"> if you are still qualifying, </span></li> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><strong><span style="font-size: 12.0pt;">SQO</span></strong><span style="font-size: 12.0pt;"> if you agree it is a qualified opportunity to include in your pipeline, </span></li> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><strong><span style="font-size: 12.0pt;">SDR Nurture</span></strong><span style="font-size: 12.0pt;"> if the meeting did not take place (please chatter your SDR to reschedule) or the timeframe is longer than 1 year and it needs to be nurtured by your SDR, or </span></li> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><strong><span style="font-size: 12.0pt;">Disqualify</span></strong><span style="font-size: 12.0pt;"> if the opportunity is not worth pursuit.</span></li> </ul> </ul> <ul style="margin-top: 0in;"> <li style="color: black; margin-left: 0in; tab-stops: list .5in;"><span style="font-size: 12.0pt;">FOR SAO OPPORTUNITIES: Please change to the appropriate status: </span></li> </ul> <ul style="margin-top: 0in;"> <ul style="margin-top: 0in;"> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><strong><span style="font-size: 12.0pt;">SQO </span></strong><span style="font-size: 12.0pt;">if you agree it is a qualified opportunity to include in your pipeline, </span></li> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><strong><span style="font-size: 12.0pt;">Field Nurture </span></strong><span style="font-size: 12.0pt;">if you need to nurture it. </span></li> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><span style="font-size: 12.0pt;">If you wish to move it to<strong> SDR Nurture, </strong>it must be moved back to<strong> Prospect </strong>first, or </span></li> <li style="color: black; margin-left: 0in; tab-stops: list 1.0in;"><strong><span style="font-size: 12.0pt;">Disqualify </span></strong><span style="font-size: 12.0pt;">if the opportunity is not worth pursuit.</span></li> </ul> </ul>';
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
#DESCRIPTION     :  It is a fisnish method of batch class. used for None purpose but its required in batch class.
#Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
@@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
}//End of BatchSLA_Notification class