public class ClosedLostOpportunityActivities {

    public Opportunity opp1{ get; set; }
    public Opportunity opp2{ get; set; }
    public string fromDate{get;set;}
    public string toDate{get;set;}
    public string strExport='';

    public String selectedStage { get; set; }
    
    public list<wrapperData> lstOpp{get;set;}
    public list<wrapperData> lstOppExport{get;set;}
   
    public integer displayRecords = 25;
    public ClosedLostOpportunityActivities(){
        selectedStage = 'Closed Lost';
        opp1 = new Opportunity();
        opp2 = new Opportunity();
        runReport();   
    }
    public void runReport(){
        runReportData(strExport); 
    }
    public void runReportData(string isExport){
        system.debug('selectedStage @@'+selectedStage+'opp1@@'+opp1.OpttyClosedWonLostActy__c+'opp2@@'+opp2.OpttyClosedWonLostActy__c);
        lstOppExport= new list<wrapperData>();
        lstOpp= new list<wrapperData>();
        Date fromDate = opp1.OpttyClosedWonLostActy__c;
        Date toDate = opp2.OpttyClosedWonLostActy__c;
        
        string strQuery = 'select id,Name,Owner.Name,Account.Name,StageName,CloseDate from Opportunity where StageName =:selectedStage ';
        if(fromDate !=null)
            strQuery += ' AND CloseDate >=: fromDate ';
        if(toDate !=null)
            strQuery += ' AND CloseDate <=: toDate ';
        
        system.debug('strQuery@@'+strQuery);
        map<Id,Opportunity> mapOpp = new map<Id,Opportunity>((list<Opportunity>)Database.Query(strQuery));
        if(mapOpp.isEmpty())
            return;
        set<Id> setOptyIds = new set<Id>();
        for(Task ts:[select id,Subject,Type,WhatId from Task where Type='Pre-sales' AND WhatId=:mapOpp.keySet()]){
            setOptyIds.add(ts.WhatId);
        } 
        set<Id> setAccIds = new set<Id>();        
        map<Id,list<Task>> mapOppTasks = new map<Id,list<Task>>();
        map<Id,Opportunity> mapOppwithActivities = new map<Id,Opportunity>([select id,Name,Owner.Name,AccountId, Account.Name,StageName,CloseDate,Total_New_ARR__c,(select id,Subject,Type,What.name,Owner.Name from Tasks where Type = 'Pre-sales') from Opportunity where Id IN:setOptyIds]);
        for(Opportunity opp:mapOppwithActivities.Values()){
            //list<Task> lstTasks = new list<Task>();
            ////lstTasks.addAll(opp.Tasks);
           // mapOppTasks.put(opp.Id,lstTasks);   
            setAccIds.add(opp.AccountId);        
        }
        map<Id,list<Task>> mapAccTasks= new map<Id,list<Task>>();
        for(Task ts:[select id,Subject,Type,WhatId,What.name,Owner.Name from Task where Type='Pre-sales' AND WhatId IN:setAccIds]){
            if(mapAccTasks.containsKey(ts.WhatId)){
                list<Task> lstT = mapAccTasks.get(ts.WhatId);
                lstT.add(ts);
                mapAccTasks.put(ts.WhatId,lstT);
            }
            else{
                list<Task> lstT = new list<Task>();
                lstT.add(ts);
                mapAccTasks.put(ts.WhatId,lstT);
            }       
        }
        for(Opportunity opp:mapOppwithActivities.Values()){
            for(Task objT:opp.Tasks){
                 wrapperData objW = new wrapperData();   
                 objW.oppty = opp;
                 objW.objTask = objT;
                 objW.relatedTo = 'Opportunity';
                 if(isExport=='yes')
                    lstOppExport.add(objW);
                 if(isExport!='yes' && lstOpp.size()<displayRecords)
                    lstOpp.add(objW); 
            } 
            if(mapAccTasks.containsKey(opp.AccountId)){
                for(Task objT:mapAccTasks.get(opp.AccountId)){
                     wrapperData objW = new wrapperData();   
                     objW.oppty = opp;
                     objW.objTask = objT;
                     objW.relatedTo = 'Account';
                     if(isExport=='yes')
                        lstOppExport.add(objW);
                     if(isExport!='yes' && lstOpp.size()<displayRecords)
                        lstOpp.add(objW); 
                } 
            
            }
              
        }

    }
    public class wrapperData{
        public Opportunity oppty{get;set;}
        public Task objTask{get;set;}  
        public string relatedTo{get;set;}      
    }
    
    public PageReference ExportToExcel(){
        strExport ='yes';
        runReport();
        PageReference pf=new PageReference('/apex/ClosedLostOpportunityActivitiesExport');
        return pf;
//return null;
    }
}