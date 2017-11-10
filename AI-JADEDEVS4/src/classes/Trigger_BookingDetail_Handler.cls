/**@@
#HANDLER CLASS NAME      :  Trigger_BookingDetail_Handler
#HELPER CLASS NAME       :  Trigger_BookingDetail_Helper
#TEST CLASS              :  BookingDetailAction_Tests
#DESCRIPTION             :  This is used for different methods depends on trigger events   
@@**/
public class Trigger_BookingDetail_Handler{
    
    /**@@
        #DESCRIPTION   : Before Insert Hanlder
        #Paramaters    : trigger.new,trigger.newMap
    @@**/ 
    public static void beforeInsertHandler(List<Booking_Detail__c> newList, Map<Id,Booking_Detail__c> newMap){
        Trigger_BookingDetail_Helper.OnBeforeInsert(newList);
    }// END OF BEFORE INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : Before Update Hanlder
        #Paramaters    : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void beforeUpdateHandler(List<Booking_Detail__c> newList, Map<Id,Booking_Detail__c> newMap, List<Booking_Detail__c> oldList, Map<Id,Booking_Detail__c> oldMap){   
        Trigger_BookingDetail_Helper.OnBeforeInsert(newList);
    }//END OF BEFORE UPDATE HANDLER
    
    
    /**@@
        #DESCRIPTION   : Before Delete Hanlder
        #Paramaters    : trigger.old, trigger.oldMap
    @@**/
    public static void beforeDeleteHandler(List<Booking_Detail__c> oldList, Map<Id,Booking_Detail__c> oldMap){
        //AWAITING FOR YOU...
    }//END OF BEFORE DELETE HANDLER
    
    /**@@
        #DESCRIPTION   : After Insert Hanlder
        #Paramaters    : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterInsertHandler(List<Booking_Detail__c> newList, Map<Id,Booking_Detail__c> newMap, List<Booking_Detail__c> oldList, Map<Id,Booking_Detail__c> oldMap){
        
    }//END OF AFTER INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : After Update Hanlder
        #Paramaters    : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterUpdateHandler(List<Booking_Detail__c> newList, Map<Id,Booking_Detail__c> newMap, List<Booking_Detail__c> oldList, Map<Id,Booking_Detail__c> oldMap){
        if(Trigger_BookingDetail_Helper.bookingDetailTriggerHandler_flag == false){
           Trigger_BookingDetail_Helper.onAfterInsertUpdate(newMap, oldMap);
        }
    }//END OF AFTER UPDATE HANDLER

    /**@@
        #DESCRIPTION   : After Delete Hanlder
        #Paramaters    : trigger.new,trigger.old, trigger.oldMap
    @@**/
    public static void afterDeleteHandler(List<Booking_Detail__c> newList, List<Booking_Detail__c> oldList, Map<Id,Booking_Detail__c> oldMap){
               
    }//END OF AFTER DELETE HANDLER
    /**@@
        #DESCRIPTION   : After Undelete Hanlder
        #Paramaters    : trigger.new,trigger.newMap
    @@**/
    public static void afterUnDeleteHandler(List<Booking_Detail__c> newList, Map<Id,Booking_Detail__c> newMap){
        
    }

}//END OF CLASS