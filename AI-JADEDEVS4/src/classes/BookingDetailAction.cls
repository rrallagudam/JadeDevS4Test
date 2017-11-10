public class BookingDetailAction {
    
    /**@@
        #DESCRIPTION     : This method will Create Booking Detail record. If Booking detail record exist than it is updating it using this field - Unique_Key__c
        #Paramaters      : List<Order> orderRecords
        #Return type     : void
    @@**/
    //@InvocableMethod(
      //  label='Booking Detail Action'
       // description='Provisions booking details (one for each subscription year) for an activated Order.')
    @future
    //public static void provisionBookingDetails(List<Order> orderRecords) {
    public static void provisionBookingDetails(set<Id> sOpportunityId) {  
                  
        List<Order> orderRecords = [SELECT Id, OpportunityId, CurrencyIsoCode, Type, Quote__c, Subscription_Start_Date__c, Subscription_End_Date__c, Term_Months__c FROM Order WHERE OpportunityId IN :sOpportunityId];
       
        List<Booking_Detail__c> updateList = new List<Booking_Detail__c>();
        for(Order o : orderRecords){
            if(!isValid(o)){
                continue;
            }
            List<Booking_Detail__c> bookingDetails = createBookingDetails(o);
            if(!bookingDetails.isEmpty()){
                updateList.addAll(bookingDetails);
            }
        }
        if(!updateList.isEmpty()){
            List<Database.UpsertResult> results = Database.upsert(updateList, Booking_Detail__c.Fields.Unique_Key__c, false);
            
            for(Integer i=0; i<updateList.size(); i++){ 
                Database.UpsertResult result = results[i];
                Booking_Detail__c b = updateList[i];
                if(result.isSuccess()){
                    Logger.info(result.getId(), 'Booking_Detail__c', 'BookingDetailAction: Created Booking_Detail__c', 'Upsert success');
                } else {
                    Logger.error(b.Order__c, 'Order', 'BookingDetailAction: Failed to convert Booking Detail', result.getErrors()[0].getMessage() ); 
                }
            }
        }
    }
    
    /**@@
        #DESCRIPTION     : This method will calculate number of years 
        #Paramaters      : Decimal months
        #Return type     : Decimal -- number of Years
    @@**/
    @TestVisible private static Decimal getTermYears(Decimal months){
        Decimal termMonths = months / 12;
        Decimal termYears = termMonths.round(System.RoundingMode.UP);
        return termYears;
    }
    
    /**@@
        #DESCRIPTION     : This method will assign values to all fields of Booking Detail record based on Order record
        #Paramaters      : Order orderRecord
        #Return type     : Decimal -- number of Years
    @@**/    
    public static List<Booking_Detail__c> createBookingDetails(Order orderRecord){  
        system.debug('start createBookingDetails');   

        List<Booking_Detail__c> bookingDetails = new List<Booking_Detail__c>();
        
        Date subscriptionStartDate = orderRecord.Subscription_Start_Date__c;
        Date subscriptionEndDate = orderRecord.Subscription_End_Date__c;
               
        Decimal termMonths = orderRecord.Term_Months__c;
        Decimal termYears = getTermYears(termMonths);
        
        for(Integer i=0; i < termYears; i++){
            Booking_Detail__c details = new Booking_Detail__c();

            details.Subscription_Term_Months__c = termMonths;
            
            details.CurrencyIsoCode = orderRecord.CurrencyIsoCode;
            details.Booking_Year__c = (i + 1);
            details.Subscription_Start_Date__c = subscriptionStartDate;
            details.Subscription_End_Date__c = subscriptionEndDate;
            details.Subscription_Term_Months__c = orderRecord.Term_Months__c;
            
            details.Opportunity__c = orderRecord.OpportunityId;
            details.Unique_Key__c = orderRecord.Id + ':' + String.valueOf(i);
            details.Order__c = orderRecord.Id;
            details.Booking_Start_Date__c = subscriptionStartDate.addYears(i);
            if(orderRecord.Quote__c != null){
                details.Quote__c = orderRecord.Quote__c;   
            }
            
            if( (i+1) == termYears){ // Is Last year of Subscription
                details.Booking_End_Date__c = subscriptionEndDate;
            } else {
                details.Booking_End_Date__c = details.Booking_Start_Date__c.addYears(1).addDays(-1);
            }
            system.debug('details: ' + details);

            bookingDetails.add( details );
            system.debug('bookingDetails: ' + bookingDetails);
        }

        return bookingDetails;
    }       
    
    /**@@
        #DESCRIPTION     : This method is used to check Order information is valid or not to create booking details
        #Paramaters      : Order o
        #Return type     : boolean isValid
    @@**/
    private static boolean isValid(Order o){
        boolean isValid = true;
        if(o.Subscription_Start_Date__c == null){
            isValid = false;
            Logger.error(o.Id, 'Order', 'BookingDetailMigrationStrategy: Failed to create BookingDetail from Order.', 'Order missing field Subscription_Start_Date__c');
        }
        if(o.Term_Months__c == null){
            isValid = false;
            Logger.error(o.Id, 'Order', 'BookingDetailMigrationStrategy: Failed to create BookingDetail from Order.', 'Order missing field Term_Months__c');
        }
        if(o.OpportunityId == null){
            isValid = false;
            Logger.error(o.Id, 'Order', 'BookingDetailMigrationStrategy: Failed to create BookingDetail from Order.', 'Order missing field OpportunityId');
        }
        return isValid;
    }
}