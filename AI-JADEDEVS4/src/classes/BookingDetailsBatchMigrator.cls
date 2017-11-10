global class BookingDetailsBatchMigrator implements Database.Batchable<sObject>{
    global final String Query;
    
    global BookingDetailsBatchMigrator(String q){
        Query=q;
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC,List<Order> scope){
        BookingDetailAction.provisionBookingDetails(scope);
    }
            
    global void finish(Database.BatchableContext BC){}
}