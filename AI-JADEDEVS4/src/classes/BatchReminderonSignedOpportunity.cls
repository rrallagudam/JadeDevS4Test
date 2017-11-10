/**@@
#Batch CLASS NAME  :    BatchReminderonSignedOpportunity
#DESCRIPTION       :    This batch claas sends reminder on opportunity signed stage at 12hrs, 24 hrs, esclates at 36 hrs and repeat esclation ever 12 hrs till stage is not Updated.    
@@**/
public class BatchReminderonSignedOpportunity implements Database.Batchable<sObject>
{
    /**@@
    #DESCRIPTION     : This is a Start method for batch class which returns a Opportunities in signed stage in every 1 hr.
    #Paramaters      : BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    @@**/
    public Database.QueryLocator start(Database.BatchableContext bc)
    { 
        DateTime lastHour = System.Now().addHours(-1);
        DateTime currentHour = System.Now();
                        
        String query ='Select id,Owner.email,Next_Send_Email_Date__c,Workflow_Execution_Date__c, Owner.Managerid, Owner.Manager.Email from Opportunity where StageName=\'signed\' and Next_Send_Email_Date__c >=: lastHour and Next_Send_Email_Date__c <=: currentHour';
        return Database.getQueryLocator(query);
        
    }//End of start method
    
    /**@@
    #DESCRIPTION     : This execute method of batch class, Its sending reminder on opportunity signed stage after 12 hrs, 24 hrs and escalate after 36 hrs. 
    #Paramaters      : 1) BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object.
    2) lstLeads(List<Opportunity>)    : It is used to take a list of Opportunities which are returned from start method of batch class. 
    @@**/
    public void execute(Database.BatchableContext bc,List<Opportunity> lstOpportunity)
    {
        /**@@
        #DESCRIPTION   : totalTimeElapsed is used to store hours difference between current datetime and Workflow Execution Date.
        @@**/
        long totalTimeElapsed;
        
        List<Opportunity> oppListUpdate=new List<Opportunity>();
        
        //Email Template for opportunity owner
        EmailTemplate templateIdOwner = [Select id from EmailTemplate where name = 'Email template to AM'];
        //Email Template for escalation after 36 hours
        EmailTemplate templateIdEscalate = [Select id from EmailTemplate where name = 'Email template to Sales ops'];
        
        // Create new Contact for setting TargetObjectId
        list<contact> conList=new list<contact>();
        set<String> sOppOwnerEmail = new set<String>();
        Map<String,id> mapContactIdOwnerEmail=new Map<String,id>();
        for(Opportunity opp: lstOpportunity)
        {    
            sOppOwnerEmail.add(opp.owner.Email);            
        }
        for(String str: sOppOwnerEmail){
            Contact con = new Contact();
            con.FirstName = 'Test';
            con.LastName = 'Contact';
            con.Email = str;
            conList.add(con);
        }
        
        Contact conSalesOps = new Contact();
        conSalesOps.FirstName = 'Test';
        conSalesOps.LastName = 'Contact';
        //conSalesOps.Email = 'SalesOps-Orders@adaptiveinsights.com';
        //for testing email used. needs to update pre deployment
        conSalesOps.Email = 'sloveall@adaptiveinsights.com';
        
        //inserting contact to set target object id 12 hrs and 24 hrs logic
        insert conSalesOps;
        //inserting contact to set target object id for 36 hrs logic
        insert conList;
        
        for(contact conlst:conList )
        {
            mapContactIdOwnerEmail.put(conlst.Email, conlst.id);
        }
        
       for(Opportunity opp: lstOpportunity)
        {
            //following variables are used for totalTimeElapsed calculation.
            long i=system.now().getTime();
            long i1=opp.Workflow_Execution_Date__c.getTime();
            //formula used to calculating the hours difference
            totalTimeElapsed=(integer)((i-i1)/3600000);
            
            System.debug('######');
            system.debug('### Oppty Id: '+opp.Id);
            system.debug('### Total Time Elapsed: '+totalTimeElapsed);
            System.debug('######');
            
            //Send Email to opportunity owner if opportunity stage is signed from 12 hrs or 24 hrs
            if(totalTimeElapsed == 12 || totalTimeElapsed == 24){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                //following variables used for email send 
                String[] toAddresses = new String[] {};
                String[] ccAddresses= new String[] {};
                mail.setToAddresses(toAddresses);
                
                mail.setTemplateID(templateIdOwner.id);
                mail.setTargetObjectId(mapContactIdOwnerEmail.get(opp.owner.email));
                mail.setWhatId(opp.id);
                mail.setSaveAsActivity(false);
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                
                //Updating Next Send Email Date to Current TIME (NOW) + 12 hours
                //opp.Next_Send_Email_Date__c=system.now()+ 0.5;
                opp.Next_Send_Email_Date__c = opp.Next_Send_Email_Date__c.addhours(12);           
                
            }//End of if statement 
            //Send Email to opportunity owner, Salesops and manager of opportunity owner if opportunity stage is signed from 36 hrs and repeat this mail after every 12 hrs.
            else if(totalTimeElapsed>=36)
            {
                //system.debug('Inside >=36 loop');
                //following variables used for email send 
                String[] toAddresses = new String[] {};
                String[] ccAddresses= new String[] {};
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setToAddresses(toAddresses);
                
                ccAddresses.add(opp.Owner.email);
                if(opp.Owner.Managerid!=NULL){
                    ccAddresses.add(opp.Owner.Manager.Email);
                    
                }
                mail.setCcAddresses(ccAddresses);
                
                mail.setTemplateID(templateIdEscalate.id);
                mail.setTargetObjectId(conSalesOps.id);
                mail.setWhatId(opp.id);
                mail.setSaveAsActivity(false);
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                
                //Updating Next Send Email Date to Current TIME (NOW) + 12 hours
                //opp.Next_Send_Email_Date__c=system.now()+ 0.5;
                opp.Next_Send_Email_Date__c = opp.Next_Send_Email_Date__c.addhours(12);
            }//End of else if statement            
            oppListUpdate.add(opp);
         
        }//end of for loop
        
        //Updating Opportunity Next Send Email Date after 12 hrs of email fire
         Update oppListUpdate;
        
        //deleting test contact which is used to set target object id
        delete conList;
        delete conSalesOps;
        
    }//End of Execute method
    
    /**@@
#DESCRIPTION     :  It is a fisnish method of batch class. used for None purpose but its required in batch class.
#Paramaters      :  BC (Database.BatchableContext) : It is a reference to the Database.BatchableContext object 
@@**/
    public void Finish(Database.BatchableContext bc)
    {
        
    }//End of finish method
    
}