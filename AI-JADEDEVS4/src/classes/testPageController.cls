public class testPageController{
    public Opportunity objOpp {get; set;}
    
    public List<Opportunity> objOppNew {get; set;}
    public datetime nextplustwelve {get; set;}
    public long totalTimeElapsed {get; set;}
    public DateTime lastHour {get; set;}
    public DateTime currentHour {get; set;}
    
    public testPageController(){
    
        List<Opportunity> lstOpp = [select id, Next_Send_Email_Date__c, Custom_Last_Modified_Date__c, Workflow_Execution_Date__c, Lastmodifieddate from Opportunity where id = '0060q000002HfWD'];
       
        objOpp = lstOpp[0];
        system.debug('@@@@@@@'+lstOpp[0].Next_Send_Email_Date__c);
        system.debug('@@@@@@@'+lstOpp[0].Next_Send_Email_Date__c.addhours(12));
        
        nextplustwelve = lstOpp[0].Next_Send_Email_Date__c.addhours(12);
        
        
        
        //long i=lstOpp[0].Custom_Last_Modified_Date__c.getTime();
        long i=system.now().getTime();
        long i1=lstOpp[0].Workflow_Execution_Date__c.getTime();
        //formula used to calculating the hours difference
        totalTimeElapsed=(integer)((i-i1)/3600000);
        
        //Datetime nextTimePlusTwelve = lstOpp[0].Next_Send_Email_Date__c.addminutes(1);
        lastHour = lstOpp[0].Custom_Last_Modified_Date__c.addHours(-1);
        currentHour = lstOpp[0].Custom_Last_Modified_Date__c;
        
        //lastHour = System.Now().addHours(-1);
        //currentHour = System.Now();
        
        String query ='Select id,Owner.email,Next_Send_Email_Date__c,Workflow_Execution_Date__c, Owner.Managerid, Owner.Manager.Email from Opportunity where StageName=\'signed\' and Next_Send_Email_Date__c >=: lastHour and Next_Send_Email_Date__c <=: currentHour';
        objOppNew = Database.Query(query);
        
    }
    
    public Double offset{get{
        TimeZone tz = UserInfo.getTimeZone();
        //Milliseconds to Day
        return tz.getOffset(DateTime.now()) / (1000 * 3600 * 24.0);
    }}
}