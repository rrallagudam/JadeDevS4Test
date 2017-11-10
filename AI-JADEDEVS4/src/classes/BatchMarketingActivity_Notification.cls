/**@@

#Batch CLASS NAME  : BatchMarketingActivity_Notification
#DESCRIPTION       : This will send weekly email to owner of record (Partners)
@@**/

public class BatchMarketingActivity_Notification implements Database.Batchable<sObject>{
    /**@@
    #DESCRIPTION     : This is start method to get the user to whom the Email should be send.
    #Paramaters      : Database.BatchableContext
    @@**/
    public Database.QueryLocator start(Database.BatchableContext bc){
             
        String query ='SELECT ID, Name, ContactId FROM User WHERE IsPortalEnabled = true and Contactid != null';   
        
        if(Test.isRunningTest()){
            query ='SELECT ID, Name, ContactId FROM User WHERE IsPortalEnabled = true and Contactid != null and Username = \'test1234567@adaptiveinsights.com.adaptive\' LIMIT 1'; 
        }else{
            // For Testing -- START
            // query ='SELECT ID, Name, ContactId FROM User WHERE id = \'00561000002GTTX\''; // For Fullbox
            //query ='SELECT ID, Name, ContactId FROM User WHERE id = \'0050q000000Ucga\''; // For jadedevs4
            //query ='SELECT ID, Name, ContactId FROM User WHERE id = \'00561000002HbYu\'';//For Production
            
            // For Testing -- END
        }
        return Database.getQueryLocator(query);
        
    }//End of start method
    
    /**@@
    #DESCRIPTION     : This is execute method which is used to send an Email to record owner
    #Paramaters      : 1.Database.BatchableContext 2.List<User> lstUsers
    @@**/
    public void execute(Database.BatchableContext bc,List<User> lstUsers){       
        try{
            string strCommunityURL = '';
            List<Network> lstPartnerCommunity = [SELECT id, Name FROM Network where Status = 'Live' LIMIT 1];
            
            if(!lstPartnerCommunity.isEmpty()){
                strCommunityURL = Network.getLoginUrl(lstPartnerCommunity[0].id);
                strCommunityURL = strCommunityURL.replace('login','detail');
            }
            
            system.debug('@@@@@@@@'+strCommunityURL);      
      
            OrgWideEmailAddress[] owea = [select Id from OrgWideEmailAddress where Address =: CustomConstants.partnerEmailAddress];
            
            Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
             if ( owea.size() > 0 ) {
                mail.setOrgWideEmailAddressId(owea.get(0).Id);
            }
            String[] toAddresses ;
            string htmlBody='' ;
            List<Lead> leadRec;
            List<Contact> contactRec;        
            
            Map<Id, List<Lead>> mapLeadWithOwner = new Map<Id, List<Lead>>();
            Map<Id, List<Contact>> mapContactWithOwner = new Map<Id, List<Contact>>();
            
            set<Id> sPartnerUsersContactId = new set<Id>();
            for(User usr: lstUsers){
                sPartnerUsersContactId.add(usr.contactid);
            }
            Date lastWeek = System.today().adddays(-7); 
            List<Lead> leadExistingList = [SELECT id, Name, Title, Company, Partner_Last_Activity_Date__c, (select id from Tasks WHERE createddate >=: lastWeek and CreatedBy.ID=:CustomConstants.EloquaUserId and Status='Completed' ), (select id from Events WHERE createddate >=: lastWeek and CreatedBy.ID=:CustomConstants.EloquaUserId  ), Status, Owner.Name, LeadSource, Lead_Offer_Most_Recent__c, Partner_Contact__c, OwnerId FROM Lead WHERE Registration_Status__c =: CustomConstants.LeadRegistrationStatusAccepted AND Partner_Contact__c IN: sPartnerUsersContactId AND isConverted = false];

            List<Lead> leadList = new List<Lead>();
            for(Lead ld: leadExistingList){
                if(!ld.Tasks.isEmpty() || !ld.Events.isEmpty()){
                    if(mapLeadWithOwner.containsKey(ld.Partner_Contact__c)){
                        mapLeadWithOwner.get(ld.Partner_Contact__c).add(ld);
                    }else{
                        leadList.add(ld);
                        mapLeadWithOwner.Put(ld.Partner_Contact__c, leadList);
                    }
                }
            }
            
            List<Contact> contactExistingList = [SELECT id, Name, Title, (select id from Tasks WHERE createddate >=: lastWeek and CreatedBy.ID=:CustomConstants.EloquaUserId and Status='Completed'), (select id from Events WHERE createddate >=: lastWeek and CreatedBy.ID=:CustomConstants.EloquaUserId ), Account.Name, Status__c, Owner.Name, LeadSource, Lead_Offer_Most_Recent__c, Partner_Contact__c, Last_Activity_Date__c FROM Contact WHERE Partner_Contact__c IN: sPartnerUsersContactId];    
            List<Contact> contactList = new List<Contact>();
            for(Contact con: contactExistingList){
                if(!con.Tasks.isEmpty() || !con.Events.isEmpty()){
                    if(mapContactWithOwner.containsKey(con.Partner_Contact__c)){
                        mapContactWithOwner.get(con.Partner_Contact__c).add(con);
                    }else{
                        contactList.add(con);
                        mapContactWithOwner.Put(con.Partner_Contact__c, contactList);
                    }
                }
            }       
            String[] ccAddresses= new String[] {};
            ccAddresses.add(CustomConstants.partnerEmailAddress);  
            for(User usr :lstUsers){             
                if(usr.ContactId != null){                   
                    if(mapLeadWithOwner != null && mapLeadWithOwner.containsKey(usr.ContactId)){
                        leadRec = mapLeadWithOwner.get(usr.ContactId);                        
                    }
                    
                    if(mapContactWithOwner != null && mapContactWithOwner.containsKey(usr.ContactId)){                        
                        contactRec = mapContactWithOwner.get(usr.ContactId);                        
                    }
                    
                    if((leadRec != null && !leadRec.isEmpty()) || (contactRec != null && !contactRec.isEmpty())){                       
                        htmlBody='<div style=" max-width:580px; margin:0 auto;">'+
                            '<table class="row header" style="border-bottom:0 none;border-left:1px solid #98999b;border-right:1px solid #98999b;border-spacing:0;border-top:1px solid #98999b;display:table;padding:0;position:relative;text-align:left;vertical-align:top;width:100%;">'+
                            '<tbody>'+
                                '<tr style="padding:0;text-align:left;vertical-align:top">'+
                                    '<th colspan="9" class="small-12 large-12 columns first last" style="Margin:0 auto;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0 auto;padding:0;padding-bottom:16px;padding-left:30px;padding-right:30px;text-align:left;width:550px">'+
                                        '<table style="border-collapse:collapse;border-spacing:0;padding:0;text-align:left;vertical-align:top;width:100%">'+
                                            '<tr style="padding:0;text-align:left;vertical-align:top">'+
                                                '<th style="Margin:0;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0;padding:0;text-align:left">'+
                                                    '<table class="spacer" style="border-collapse:collapse;border-spacing:0;padding:0;text-align:left;vertical-align:top;width:100%">'+
                                                        '<tbody>'+ 
                                                            '<tr style="padding:0;text-align:left;vertical-align:top">'+ 
                                                                '<td height="15px" style="-moz-hyphens:auto;-webkit-hyphens:auto;Margin:0;border-collapse:collapse!important;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:15px;font-weight:100;hyphens:auto;line-height:15px;margin:0;mso-line-height-rule:exactly;padding:0;text-align:left;vertical-align:top;word-wrap:break-word">&#xA0;'+
                                                                '</td>'+
                                                            '</tr>'+
                                                        '</tbody>'+
                                                    '</table>'+
                                                    '<p style="Margin:0;Margin-bottom:10px;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0;margin-bottom:10px;padding:0;text-align:left"><img src="http://resources.adaptiveinsights.com/img/adaptive-logo-160x54.png" class="float-left small-float-center" style="-ms-interpolation-mode:bicubic;clear:both;display:block;float:left;max-width:100%;outline:0;text-align:left;text-decoration:none;width:auto"></p>'+
                                                '</th>'+
                                                '<th class="expander" style="Margin:0;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0;padding:0!important;text-align:left;visibility:hidden;width:0">'+
                                                '</th>'+
                                            '</tr>'+
                                        '</table>'+
                                    '</th>'+
                                '</tr>'+
                            //'</tbody>'+
                        //'</table>'+
                        //'<table class="row collapse hero" style="border-bottom:0 none;border-collapse:collapse;border-left:1px solid #98999b;border-right:1px solid #98999b;border-spacing:0;border-top:0 none;display:table;padding:0;position:relative;text-align:left;vertical-align:top;width:100%">'+
                           // '<tbody>'+
                                '<tr style="padding:0;text-align:left;vertical-align:top">'+
                                    '<th colspan="9" class="small-12 large-12 columns first last" style="Margin:0 auto;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0 auto;padding:0;padding-bottom:16px;padding-left:0;padding-right:0;text-align:left;width:595px">'+
                                    '<table style="padding:0;text-align:left;vertical-align:top;width:100%">'+
                                    '<tr style="padding:0;text-align:left;vertical-align:top"><th style="Margin:0;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0;padding:0;text-align:left"><img src="http://resources.adaptiveinsights.com/img/blue-teal-gradient-banner-600x40.jpg" style="-ms-interpolation-mode:bicubic;clear:both;display:block;max-width:100%;outline:0;text-decoration:none;width:auto"></th><th class="expander" style="Margin:0;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0;padding:0!important;text-align:left;visibility:hidden;width:0"></th></tr>'+
                                    '</table></th></tr>'+
                                    //'</tbody></table>'+
                                    //'<table class="row" style="border-bottom:0 none;border-collapse:collapse;border-left:1px solid #98999b;border-right:1px solid #98999b;border-spacing:0;border-top:0 none;display:table;padding:0;position:relative;text-align:left;vertical-align:top;width:100%"><tbody>
                                    '<tr style="padding:0;text-align:left;vertical-align:top"><th class="small-12 large-12 columns first last" style="Margin:0 auto;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0 auto;padding:0;padding-bottom:16px;padding-left:30px;padding-right:30px;text-align:left;width:550px"><table style="border-collapse:collapse;border-spacing:0;padding:0;text-align:left;vertical-align:top;width:100%"><tr style="padding:0;text-align:left;vertical-align:top">'+
                                    '<th style="Margin:0;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0;padding:0;text-align:left"><p style="Margin:0;Margin-bottom:10px;color:#54565b;font-family:Conv_MuseoSans_100,Arial,Helvetica,sans-serif;font-size:16px;font-weight:100;line-height:24px;margin:0;margin-bottom:10px;padding:0;text-align:left">';
                        
                                htmlBody+= '<p>Hello ' + usr.Name + ',</p>'+                    
                                '<p>You are receiving this email because there has been Marketing activity within the last week, with'+
                                ' one of the prospects that you have registered with Adaptive Insights. The purpose of this email is to'+
                                ' let you know what activity has taken place. </p>'+
                                
                                '<p>Please follow up with your prospect as appropriate and should you have any questions, please'+
                                ' connect with the Adaptive Sales Rep (Lead or Contact owner below) or your Partner Manager. </p>'+
                                
                                '<p>Regards,</p>'+
                                
                                '<p>The Adaptive Insights Channel Team</p>';
                                
                        if(!leadRec.isEmpty()){ 
                            string strLeadLastActivityDate = '';
                            
                                      
                            htmlBody += '<p style="font-weight:bold;">Activity on following Lead(s) within the last week</p>'+
                                            
                            '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                                '<tr>'+
                                    '<th>Lead Name</th>'+
                                    '<th>Title</th>'+
                                    '<th>Company</th>'+
                                    '<th>Lead Status</th>'+
                                    '<th>Lead Owner</th>'+
                                    '<th>Lead Source</th>'+
                                    '<th>Lead offer – Most Recent</th>'+
                                    //'<th>Campaign Name</th>'+
                                    '<th>Partner Last Activity</th>'+
                                '</tr>';            
                                for(integer j=0;j<leadRec.size();j++){
                                    strLeadLastActivityDate = '';
                                    if(leadRec[j].Partner_Last_Activity_Date__c != null){
                                        strLeadLastActivityDate = string.valueOf(leadRec[j].Partner_Last_Activity_Date__c.month()) + '/' + string.valueOf(leadRec[j].Partner_Last_Activity_Date__c.day()) + '/' + string.valueOf(leadRec[j].Partner_Last_Activity_Date__c.year());
                                    }
                                    //set html body    
                                    htmlBody+= '<tr>'+
                                        
                                        '<td><a href="'+ strCommunityURL +'/'+leadRec[j].id+'">' +leadRec[j].Name + '</a></td>'+
                                        '<td>' + leadRec[j].Title+ '</td>'+
                                        '<td>' + leadRec[j].Company + '</td>'+
                                        '<td>' + leadRec[j].Status + '</td>'+
                                        '<td>' + leadRec[j].Owner.Name + '</td>'+
                                        '<td>' + leadRec[j].LeadSource + '</td>'+
                                        '<td>' + leadRec[j].Lead_Offer_Most_Recent__c + '</td>'+
                                        //'<td>' +  + '</td>'+
                                        '<td>' + strLeadLastActivityDate + '</td>'+
                                    
                                    '</tr>';
                                }//End of For
                            htmlBody+='</table>';
                        }//End of If                        
                         
                        if(contactRec != null && !contactRec.isEmpty()){
                            string strContactLastActivityDate = '';
                                   
                            htmlBody += '<p style="font-weight:bold;">Activity on following Contacts(s) within the last week</p>'+                
                            '<table border="1" style="border-collapse: collapse" cellpadding="3">'+
                                '<tr>'+
                                    '<th>Contact Name</th>'+
                                    '<th>Title</th>'+
                                    '<th>Company</th>'+
                                    '<th>Contact Status</th>'+
                                    '<th>Contact Owner</th>'+
                                    '<th>Lead Source</th>'+
                                    '<th>Lead offer – Most Recent</th>'+
                                    //'<th>Campaign Name</th>'+
                                    '<th>Partner Last Activity</th>'+
                                '</tr>';
                        
                                for(integer j=0;j<contactRec.size();j++){
                                    strContactLastActivityDate = '';
                                    if(contactRec[j].Last_Activity_Date__c != null){
                                        strContactLastActivityDate = string.valueOf(contactRec[j].Last_Activity_Date__c.month()) + '/' + string.valueOf(contactRec[j].Last_Activity_Date__c.day()) + '/' + string.valueOf(contactRec[j].Last_Activity_Date__c.year());
                                    }
                                    
                                    //set html body    
                                    htmlBody+= '<tr>'+
                                        '<td><a href="'+ strCommunityURL +'/'+contactRec[j].id+'">' +contactRec[j].Name + '</a></td>'+
                                        '<td>' + contactRec[j].Title+ '</td>'+
                                        '<td>' + contactRec[j].Account.Name + '</td>'+
                                        '<td>' + contactRec[j].Status__c + '</td>'+
                                        '<td>' + contactRec[j].Owner.Name + '</td>'+
                                        '<td>' + contactRec[j].LeadSource + '</td>'+
                                        '<td>' + contactRec[j].Lead_Offer_Most_Recent__c + '</td>'+
                                        //'<td>' +  + '</td>'+
                                        '<td>' + strContactLastActivityDate + '</td>'+
                                    
                                    '</tr>';
                                }//End of For
                                htmlBody+='</table></div>';                        
                        }//End of if
                        
                        
                        
                        mail.setTargetObjectId(usr.ContactId);
                        mail.setHtmlBody(htmlBody);
                        mail.setCcAddresses(ccAddresses);
                        mail.setSaveAsActivity(false);
                        mail.setSubject('Marketing Activity from your Adaptive Registered prospects within the last week');
                       
                        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                        htmlBody='';
                    }//End of For
                }// End of If
            }// End of If
        } //End of try
        Catch(exception e){
            system.debug('Exception during Sending Marketing Activity Email: '+ e.getMessage());
            ExceptionHandlingEmail.sendEmailonException(e);
        }
         
    }//End of Execute() method
  
    /**@@
    #DESCRIPTION     :  It is a fisnish method of batch class. used for None purpose but its required in batch class.
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
}//End of BatchSLA_Notification class