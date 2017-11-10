/**@@
#Batch CLASS NAME  : BatchExecOppExpirationNotification
#DESCRIPTION       : This is Batch class used to send an Email to Opportunity Owner and Related Contact
from "partners@adaptiveinsights.com" email address for Expiration Notification of Opportunity.
@@**/
public class BatchExecOppExpirationNotification implements Database.Batchable<sObject>{
    /**@@
    #DESCRIPTION     : This is start method which return the user records.
    #Paramaters      : (Database.BatchableContext bc) It is a reference to the Database.BatchableContext object 
    @@**/
    public Database.QueryLocator start(Database.BatchableContext bc){
        Date dt = System.today()-1;
        
        string OpportunityTypeRenewal = CustomConstants.OpportunityTypeRenewal;
        set<String> sFilterStageNames = new set<String>();
        sFilterStageNames.add(CustomConstants.OpportunityStageCW);
        sFilterStageNames.add(CustomConstants.OpportunityStageDisq);
        sFilterStageNames.add(CustomConstants.OpportunityStagePrepForSig);
        sFilterStageNames.add(CustomConstants.OpportunityStageSigned);
        sFilterStageNames.add(CustomConstants.OpportunityStageCLNP);
        sFilterStageNames.add(CustomConstants.OpportunityStageSentToOrders);
        sFilterStageNames.add(CustomConstants.OpportunityStageCL);
        sFilterStageNames.add(CustomConstants.OpportunityStageCWI);
        
        //String query = 'SELECT id, owner.Email, Partner_Contact__c, Partner_Contact__r.Email FROM Opportunity WHERE Last_Activity_Date__c =: dt AND Partner_Account__c != null AND Partner_Account__c !=: OpportunityTypeRenewal AND Partner_Fee__c = FALSE AND StageName NOT IN: sFilterStageNames';
        // For Testing
        set<Id> sOppId = new set<Id>();
        sOppId.add('0062F000002YJKVQA4');
        sOppId.add('0062F000002VFYqQAO');
        Date dtToday = System.today();
        
        String query = 'SELECT id, owner.Email, Partner_Contact__c, Partner_Contact__r.Email FROM Opportunity WHERE Last_Activity_Date__c =: dtToday AND Partner_Account__c != null AND Partner_Account__c !=: OpportunityTypeRenewal AND Partner_Fee__c = FALSE AND StageName NOT IN: sFilterStageNames';
        return Database.getQueryLocator(query);
    }//End of start method
    
    /**@@
    #DESCRIPTION     : This is execute method, which is used to send Opportunity Expiration Notification E-mail to 
    Opportunity Owner and Related Contact from "partners@adaptiveinsights.com" 
    #Paramaters      :  1)BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
                        2)List<lstOpportunity> lstOpportunity: List of Opportunities.
    @@**/
    public void execute(Database.BatchableContext bc,List<Opportunity> lstOpportunity){      
        try{
            EmailTemplate templateIdPartnerExpNotification = [Select id from EmailTemplate where name =: CustomConstants.strPartnerOppExpirationNotificationTemplate];     
            OrgWideEmailAddress[] owea = [select id ,address from OrgWideEmailAddress where address=: CustomConstants.partnerEmailAddress];
            String[] toAddresses = new String[] {};
            String[] ccAddresses = new String[] {};
            ccAddresses.add(CustomConstants.partnerEmailAddress);
            for(Opportunity opp: lstOpportunity){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                toAddresses = new String[] {};
                toAddresses.add(opp.Partner_Contact__r.Email);
                toAddresses.add(opp.owner.Email);
                mail.setToAddresses(toAddresses);
                mail.setCCAddresses(ccAddresses);
                mail.setTemplateID(templateIdPartnerExpNotification.id);
                mail.setTargetObjectId(opp.Partner_Contact__c);
                
                mail.setWhatId(opp.id);
                                        
                mail.setTreatTargetObjectAsRecipient(false);
                mail.setSaveAsActivity(false);
                mail.setOrgWideEmailAddressId(owea.get(0).Id);
                
                //Sending Partner Opportunity Expiration Notification Email
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