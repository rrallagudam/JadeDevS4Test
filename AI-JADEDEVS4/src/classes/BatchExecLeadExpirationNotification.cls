/**@@
#Batch CLASS NAME  : BatchExecLeadExpirationNotification
#DESCRIPTION       : This is Batch class used to send an Email to Lead Owner and Related Contact
from "partners@adaptiveinsights.com" email address for Expiration Notification of Lead.
@@**/
public class BatchExecLeadExpirationNotification implements Database.Batchable<sObject>{
    /**@@
    #DESCRIPTION     : This is start method which return the user records.
    #Paramaters      : (Database.BatchableContext bc) It is a reference to the Database.BatchableContext object 
    @@**/
    public Database.QueryLocator start(Database.BatchableContext bc){
        Date dt = System.today()-1;
        //String query = 'SELECT id, owner.Email, Partner_Contact__c, Partner_Contact__r.Email, IsConverted, Partner_Last_Activity_Date__c, Registration_Status__c FROM Lead WHERE Partner_Last_Activity_Date__c =: dt AND IsConverted= false';
        //For Testing
        set<Id> sLeadId = new set<Id>();
        Date dtToday = System.today();
        sLeadId.add('00Q2F0000017wHJ');
        String query = 'SELECT id, owner.Email, Partner_Contact__c, Partner_Contact__r.Email, IsConverted, Partner_Last_Activity_Date__c, Registration_Status__c FROM Lead WHERE id IN: sLeadId AND Partner_Last_Activity_Date__c !=: dtToday AND IsConverted= false';
        return Database.getQueryLocator(query);
    }//End of start method
    
    /**@@
    #DESCRIPTION     : This is execute method, which is used to send Lead Expiration Notification E-mail to 
    Lead Owner and Related Contact from "partners@adaptiveinsights.com" 
    #Paramaters      :  1)BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
                        2)List<lstLead> lstLead: List of Leads.
    @@**/
    public void execute(Database.BatchableContext bc,List<Lead> lstLead){      
        try{
            EmailTemplate templateIdPartnerExpNotification = [Select id from EmailTemplate where name =: CustomConstants.strPartnerLeadExpirationNotificationTemplate];     
            OrgWideEmailAddress[] owea = [select id ,address from OrgWideEmailAddress where address=: CustomConstants.partnerEmailAddress];
            String[] toAddresses = new String[] {};
            String[] ccAddresses = new String[] {};
            ccAddresses.add(CustomConstants.partnerEmailAddress);
            for(Lead leadVar: lstLead){ 
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                toAddresses = new String[] {};
                toAddresses.add(leadVar.Partner_Contact__r.Email);
                toAddresses.add(leadVar.owner.Email);
                mail.setToAddresses(toAddresses);
                mail.setCCAddresses(ccAddresses);
                mail.setTemplateID(templateIdPartnerExpNotification.id);
                mail.setTargetObjectId(leadVar.Id);
                
                //mail.setWhatId(leadVar.id);
                                        
                mail.setTreatTargetObjectAsRecipient(false);
                mail.setSaveAsActivity(false);
                mail.setOrgWideEmailAddressId(owea.get(0).Id);
                
                //Sending Partner Lead Expiration Notification Email
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                
            }//End of For
        }//End of try
        Catch(exception e){
             ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//End of Execute() method
    
    /**@@
    #DESCRIPTION     :  It is a finish method of batch class. used for None purpose but its required in batch class.
    #Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
    @@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
}//End of BatchDailySummary class