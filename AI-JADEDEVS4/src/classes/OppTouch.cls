global class OppTouch implements Schedulable {

    global void execute(SchedulableContext SC) {
      touch();
   }

    
    public void touch(){ 
        
        for (integer x = 0; x < 50; x= x + 50){
        list<Opportunity> affected = [Select Id, Touch_Field__c From Opportunity
                                  Where forecast_arr__c = 0.0 
                                  and stagename != 'Closed Lost' and stagename != 'Closed Won' 
                                  and Touch_Field__c = null and closedate > 2016-07-01
                                  limit 50 offset: x];
    //30950
    //14400
            for (Opportunity thisOpp : affected){
                thisOpp.Touch_Field__c = 1;
            }
        
            update affected;
        }
    }
}