global class BatchDelete implements Database.Batchable<sObject>{
    global final String Query;
    global BatchDelete(String q){
        Query=q;
    }

    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC,List<SObject> scope){
        delete scope;
    }

    global void finish(Database.BatchableContext BC){}
}