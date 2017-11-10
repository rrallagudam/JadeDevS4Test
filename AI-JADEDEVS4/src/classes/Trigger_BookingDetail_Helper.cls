/**@@
#TRIGGER NAME          :    BookingDetailTrigger
#HANDLER CLASS NAME    :    Trigger_BookingDetail_Handler
#HELPER CLASS NAME     :    Trigger_BookingDetail_Helper
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/
public class Trigger_BookingDetail_Helper {
      
    public static boolean bookingDetailTriggerHandler_flag = false;
    public Trigger_BookingDetail_Helper(){

    }
    /**@@
        #DESCRIPTION     : This method is used to update Booking detail information based on relate Order and Opportunity information
        #Paramaters      : map<ID, Booking_Detail__c> newmap, map<ID, Booking_Detail__c> oldmap
        #Return type     : void
    @@**/
    public static void onAfterInsertUpdate(map<ID, Booking_Detail__c> newmap, map<ID, Booking_Detail__c> oldmap) {
            
         list<Booking_Detail__c> bookingDetailsUpdate = new list<Booking_Detail__c>();
         set<Id> sOrderId = new set<Id>();
         set<Id> sOppId = new set<Id>();
         
         for(Booking_Detail__c bd : newmap.values()) {
             if(bd.Order__c != null){
                 sOrderId.add(bd.Order__c);
             }
             if(bd.Opportunity__c != null){
                 sOppId.add(bd.Opportunity__c);
             }
         }
         // Fetch Existing Order related to Booking Detail
         Map<Id, Order> mapOrderList = new Map<Id, Order>();
         if(!sOrderId.isEmpty()){
             mapOrderList = new Map<Id, Order>([Select Id, Term_Months__c, Free_Months__c, Renewal_Term__c, Total_Subscription_Revenue__c from Order where Id IN: sOrderId]);
         }
         
         // Fetch Existing Opportunity related to Booking Detail
         Map<Id, Opportunity> mapOpportunityList = new Map<Id, Opportunity>();
         if(!sOppId.isEmpty()){
             mapOpportunityList = new Map<Id, Opportunity>([Select Id, Renewal_Term__c, Target_Renewal_ARR__c, SBQQ__PrimaryQuote__r.Id, Total_Subscription_Revenue__c from Opportunity where Id IN: sOppId]);
         }
            
         for(Booking_Detail__c bd : newmap.values()) {
            Booking_Detail__c objBD = new Booking_Detail__c(ID=bd.ID);            
            
            double asr = 0.00;
            double myr = 0.00;
            double tadd = 0.00;
            double trenewal = 0.00;
            double tsubbooking = 0.00;
            double renewalTerm = 0.00;
            double annualTerm = 0.00;
            
            if(bd.Order__c != null && mapOrderList.containsKey(bd.Order__c)){
                Order relatedOrder = mapOrderList.get(bd.Order__c);
                if ((relatedOrder.Term_Months__c - relatedOrder.Free_Months__c) > 12){
                    renewalTerm = relatedOrder.Term_Months__c - relatedOrder.Free_Months__c;
                } else {
                    renewalTerm = 12;
                }
    
                if (relatedOrder.Term_Months__c > 12) {
                    annualTerm = 12;
                } else {
                    annualTerm = relatedOrder.Term_Months__c;
                }
    
                asr = (relatedOrder.Total_Subscription_Revenue__c/relatedOrder.Term_Months__c) * annualTerm;
                myr = (relatedOrder.Total_Subscription_Revenue__c/relatedOrder.Term_Months__c) * bd.MYR_Term__c;
                
                objBD.Subscription_Term_Months__c = relatedOrder.Term_Months__c;
            }
            
            if(bd.Opportunity__c != null && mapOpportunityList.containsKey(bd.Opportunity__c)){
                Opportunity relatedOpp = mapOpportunityList.get(bd.Opportunity__c);
            
                if(bd.Is_Add_On_Booking__c) {
                    tadd = asr;
                } else {
                    IF(bd.Is_Renewal_Booking__c) {
                        IF(asr > relatedOpp.Target_Renewal_ARR__c) {
                            tadd = asr - relatedOpp.Target_Renewal_ARR__c;
                            } else {
                                tadd = 0;
                            }
                    } else {
                        tadd = 0;
                    }
                }

                if(bd.Is_Renewal_Booking__c){
                    if((asr - relatedOpp.Target_Renewal_ARR__c) > 0){
                        trenewal = relatedOpp.Target_Renewal_ARR__c;
                    } else {
                        trenewal = asr;
                    }
                } else {
                    trenewal = 0;
                }
            }
            tsubbooking = bd.Total_New_Booking__c + bd.Total_Renewal_Booking__c;
            
            
            objBD.Temp_Annualized_Subscription_Revenue__c = asr;
            objBD.Temp_AddOn_ARR__c = tadd;
            objBD.Temp_Renewal_ARR__c = trenewal;
            objBD.Temp_Total_Bookings__c = tsubbooking;
            bookingDetailsUpdate.add(objBD );
        }
        if(!bookingDetailsUpdate.isEmpty()){
            bookingDetailTriggerHandler_flag = true;
            update bookingDetailsUpdate;
        }
        
    }
    
    /**@@
        #DESCRIPTION     : This method is used to update Booking detail information based on relate Order and Opportunity information
        #Paramaters      : List<Booking_Detail__c> newRecord
        #Return type     : void
    @@**/
    public static void OnBeforeInsert(List<Booking_Detail__c> newRecord) {
        
        set<Id> sOrderId = new set<Id>();
        set<Id> sOppId = new set<Id>();
        
        for(Booking_Detail__c bd : newRecord) {
            if(bd.Order__c != null){
                sOrderId.add(bd.Order__c);
            }
            if(bd.Opportunity__c != null){
                sOppId.add(bd.Opportunity__c);
            }
        }
        // Fetch Existing Order related to Booking Detail
        Map<Id, Order> mapOrderList = new Map<Id, Order>();
        if(!sOrderId.isEmpty()){
            mapOrderList = new Map<Id, Order>([Select Id, Term_Months__c, Free_Months__c, Renewal_Term__c, Total_Subscription_Revenue__c from Order where Id IN: sOrderId]);
        }
        
        // Fetch Existing Opportunity related to Booking Detail
        Map<Id, Opportunity> mapOpportunityList = new Map<Id, Opportunity>();
        if(!sOppId.isEmpty()){
            mapOpportunityList = new Map<Id, Opportunity>([Select Id, Renewal_Term__c, Target_Renewal_ARR__c, SBQQ__PrimaryQuote__r.Id, Total_Subscription_Revenue__c from Opportunity where Id IN: sOppId]);
        }
        
        for(Booking_Detail__c bd : newRecord) {
                        
                                            
            double asr = 0.00;
            double myr = 0.00;
            double tadd = 0.00;
            double trenewal = 0.00;
            double tsubbooking = 0.00;
            double renewalTerm = 0.00;
            double annualTerm = 0.00;
            
            if(bd.Order__c != null && mapOrderList.containsKey(bd.Order__c)){
                Order relatedOrder = mapOrderList.get(bd.Order__c);
                double calculatedTerm = relatedOrder.Term_Months__c - relatedOrder.Free_Months__c;

                if ((calculatedTerm) > 12){
                    renewalTerm = calculatedTerm;
                    annualTerm = 12;
                } else {
                    renewalTerm = 12;
                    annualTerm = calculatedTerm;
                }

            
                asr = (relatedOrder.Total_Subscription_Revenue__c/(calculatedTerm)) * annualTerm;
                myr = (relatedOrder.Total_Subscription_Revenue__c/(calculatedTerm)) * bd.MYR_Term__c;
                bd.Subscription_Term_Months__c = relatedOrder.Term_Months__c;
            }
            
            if(bd.Opportunity__c != null && mapOpportunityList.containsKey(bd.Opportunity__c)){
                Opportunity relatedOpp = mapOpportunityList.get(bd.Opportunity__c);
                if(bd.Is_Add_On_Booking__c) {
                    tadd = asr;
                } else {
                    IF(bd.Is_Renewal_Booking__c) {
                        IF(asr > relatedOpp.Target_Renewal_ARR__c) {
                            tadd = asr - relatedOpp.Target_Renewal_ARR__c;
                            } else {
                                tadd = 0;
                            }
                    } else {
                        tadd = 0;
                    }
                }
                if(bd.Is_Renewal_Booking__c){
                    if((asr - relatedOpp.Target_Renewal_ARR__c) > 0){
                        trenewal = relatedOpp.Target_Renewal_ARR__c;
                    } else {
                        trenewal = asr;
                    }
                } else {
                    trenewal = 0;
                }
            }
            tsubbooking = bd.Total_New_Booking__c + bd.Total_Renewal_Booking__c;
            
            bd.Temp_Annualized_Subscription_Revenue__c = asr;
            bd.Temp_AddOn_ARR__c = tadd;
            bd.Temp_Renewal_ARR__c = trenewal;
            bd.Temp_Total_Bookings__c = tsubbooking;
        }
    }
}