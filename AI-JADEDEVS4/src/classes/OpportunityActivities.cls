public class OpportunityActivities {
    
    public list<Opportunity> lstOpp{get;set;}
    public list<Opportunity> lstOppExport{get;set;}
    public integer displayRecords = 25;
    public OpportunityActivities(){
        map<Id,Opportunity> mapOpp = new map<Id,Opportunity>([select id,Name,Account.Name,Owner.Name, StageName, CloseDate, Solutions_Exploration_Stage_Start_Date__c from Opportunity where StageName IN ('Commitment & Negotiation','Sent to Orders','Solution Exploration') and Account.Type!='Customer' order by Name]);
        for(Task ts:[select id,Subject,Type,WhatId from Task where Type='Pre-sales' AND WhatId=:mapOpp.keySet()]){
            mapOpp.remove(ts.WhatId);
        }               
        lstOppExport= new list<Opportunity>();
        lstOppExport= mapOpp.Values();   
        lstOpp = new list<Opportunity>();
        if(lstOppExport.size()<displayRecords)
            lstOpp.addAll(lstOppExport);
        else{    
            for(Opportunity opp:lstOppExport){
                if(lstOpp.size()<displayRecords)
                    lstOpp.add(opp);  
            }
       }
    }
    
    public PageReference ExportToExcel(){
        PageReference pf=new PageReference('/apex/OpportunityActivitiesExportPage');
        return pf;
//return null;
    }
}