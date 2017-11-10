/**@@
#TRIGGER NAME          :    OpportunityTrigger
#HANDLER CLASS NAME    :    Trigger_Opportunity_Handler
#HELPER CLASS NAME     :    Trigger_Opportunity_Helper
#TEST CLASS            :    Trigger_Opportunity_Helper_Test
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.   
@@**/
public class Trigger_Opportunity_Handler{
    
    /**@@
        #DESCRIPTION   : Before Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap
    @@**/ 
    public static void beforeInsertHandler(List<Opportunity> newList, Map<Id,Opportunity> newMap){
        Trigger_Opportunity_Helper.onBeforeInsert(newList);
    }// END OF BEFORE INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : Before Update Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void beforeUpdateHandler(List<Opportunity> newList, Map<Id,Opportunity> newMap, List<Opportunity> oldList, Map<Id,Opportunity> oldMap){   
        if(Trigger_Opportunity_Helper.oppAccountrecurssionFlag == false){
            Trigger_Opportunity_Helper.OnBeforeUpdate(newList, oldMap);
        }
        
    }//END OF BEFORE UPDATE HANDLER
    
    
    /**@@
        #DESCRIPTION   : Before Delete Hanlder
        #Paramaters        : trigger.old, trigger.oldMap
    @@**/
    public static void beforeDeleteHandler(List<Opportunity> oldList, Map<Id,Opportunity> oldMap){
       
       
    /**@@
        # Author          :  Jade Global Inc.
        # Date            :  3rd Oct 2017
        # Method          :  restrictOpportunityDeletion()
        Method call to restrict the Opportunity Deletion for Non-SalesOps and non Admins
    @@**/
        Trigger_Opportunity_Helper.restrictOpportunityDeletion(Trigger.old);
    
    }//END OF BEFORE DELETE HANDLER
    
    /**@@
        #DESCRIPTION   : After Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterInsertHandler(List<Opportunity> newList, Map<Id,Opportunity> newMap, List<Opportunity> oldList, Map<Id,Opportunity> oldMap){
        if(Trigger_Opportunity_Helper.oppAccountrecurssionFlag == false){                        
            Trigger_Opportunity_Helper.onAfterInsert(newMap, oldMap);
        }
        //upadting Contact Lifecycle and Status based on Opportunity Stage
        Trigger_Opportunity_Helper.setContactLifecycle(newMap, Null);
        
        //assign owner to the contacts based on opportunity conditions
        Trigger_Opportunity_Helper.reassignOwnerOnOppConditions(newList, Null);
         
        //Method call to insert the data in OpportunityShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        //OpportunitySharingForPartners.insertOpportunityShare2(newList,null);
        OpportunitySharingForPartners.insertOpportunityShare(newList,null);
        
    }//END OF AFTER INSERT HANDLER
    
    /**@@
        #DESCRIPTION   : After Update Hanlder
        #Paramaters        : trigger.new,trigger.newMap, trigger.old, trigger.oldMap
    @@**/
    public static void afterUpdateHandler(List<Opportunity> newList, Map<Id,Opportunity> newMap, List<Opportunity> oldList, Map<Id,Opportunity> oldMap){
        //upadting Contact Lifecycle and Status based on Opportunity Stage Changes
        Trigger_Opportunity_Helper.setContactLifecycle(newMap, oldMap);
        
        //assign owner to the contacts based on opportunity conditions
        Trigger_Opportunity_Helper.reassignOwnerOnOppConditions(newList, oldMap);
               
        //order notification
        Trigger_Opportunity_Helper.OrderNotificationandCSNotification(newList, oldMap);
        
        Trigger_Opportunity_Helper.NotifyIfClosedOpportunityUpdated(newList, oldMap);
        
        if(Trigger_Opportunity_Helper.oppAccountrecurssionFlag == false){
            Trigger_Opportunity_Helper.onAfterUpdate(newMap, oldMap);            
        }
     
        //Method call to insert the data in OpportunityShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        //OpportunitySharingForPartners.insertOpportunityShare2(newList,OldMap);
        OpportunitySharingForPartners.insertOpportunityShare(newList,OldMap);
    }//END OF AFTER UPDATE HANDLER

    /**@@
        #DESCRIPTION   : After Delete Hanlder
        #Paramaters        : trigger.new,trigger.old, trigger.oldMap
    @@**/
    public static void afterDeleteHandler(List<Opportunity> newList, List<Opportunity> oldList, Map<Id,Opportunity> oldMap){
               
    }//END OF AFTER DELETE HANDLER
    /**@@
        #DESCRIPTION   : After Undelete Hanlder
        #Paramaters        : trigger.new,trigger.newMap
    @@**/
    public static void afterUnDeleteHandler(List<Opportunity> newList, Map<Id,Opportunity> newMap){
        
    }

}//END OF CLASS