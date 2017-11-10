/**@@
#TRIGGER NAME          :    CampaignTrigger
#HANDLER CLASS NAME    :    Trigger_Campaign_Handler
#HELPER CLASS NAME     :    Trigger_Campaign_Helper
#TEST CLASS            :    Campaign_Trigger_Test
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the    appropriate logic.   
@@**/
public class Trigger_Campaign_Handler{

    /**@@
        #DESCRIPTION   : Before Insert Handler
        #Paramaters        : trigger.newList, trigger.newMap
    @@**/
    public static void beforeInsertHandler(List<Campaign> newList, Map<Id,Campaign> newMap){

    }// END OF BEFORE INSERT HANDLER

    /**@@
        #DESCRIPTION   : Before Update Handler
        #Paramaters        : trigger.newList, trigger.newMap, trigger.oldList, trigger.oldMap
    @@**/
    public static void beforeUpdateHandler(List<Campaign> newList, Map<Id,Campaign> newMap, List<Campaign> oldList, Map<Id,Campaign> oldMap){  

    }//END OF BEFORE UPDATE HANDLER
    
    /**@@
        #DESCRIPTION   : Before Delete Handler
        #Paramaters        : trigger.oldList, trigger.oldMap
    @@**/
    //public static void beforeDeleteHandler(List<Campaign> oldList, Map<Id,Campaign> oldMap){
        //AWAITING FOR YOU...
    //}//END OF BEFORE DELETE HANDLER

    /**@@
        #DESCRIPTION   : After Insert Handler
        #Paramaters        : trigger.newList, trigger.newMap, trigger.oldList, trigger.oldMap
    @@**/
    public static void afterInsertHandler(List<Campaign> newList, Map<Id,Campaign> newMap, List<Campaign> oldList, Map<Id,Campaign> oldMap){
        Trigger_Campaign_Helper.AddCampaignMemberStatus(newList);
    }//END OF AFTER INSERT HANDLER

    /**@@
        #DESCRIPTION   : After Update Handler
        #Paramaters        : trigger.newList, trigger.newMap, trigger.oldList, trigger.oldMap
    @@**/   
    public static void afterUpdateHandler(List<Campaign> newList, Map<Id,Campaign> newMap, List<Campaign> oldList, Map<Id,Campaign> oldMap){
        Trigger_Campaign_Helper.AddCampaignMemberStatus(newList);
    }//END OF AFTER UPDATE HANDLER

    /**@@
        #DESCRIPTION   : After Delete Handler
        #Paramaters        : trigger.newList, trigger.oldList, trigger.oldMap
    @@**/  
    //public static void afterDeleteHandler(List<Campaign> newList, List<Campaign> oldList, Map<Id,Campaign> oldMap){

    //}//END OF AFTER DELETE HANDLER
    /**@@
        #DESCRIPTION   : After Undelete Handler
        #Paramaters        : trigger.newList, trigger.newMap
    @@**/ 
    //public static void afterUnDeleteHandler(List<Campaign> newList, Map<Id,Campaign> newMap){
        
    //}//END OF AFTER UNDELETE HANDLER

}//END OF CLASS