/**@@
#TRIGGER NAME          :    User_Trigger_OPTIMIZED 
#HANDLER CLASS NAME    :    Trigger_User_Handler
#HELPER CLASS NAME     :    Trigger_User_Helper
#TEST CLASS            :    User_Trigger_Test
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.
@@**/public class Trigger_User_Handler{

    /**@@
        #DESCRIPTION     : Before Insert Handler
        #Paramaters        : trigger.newList, trigger.oldMap
     @@**/
     /*public static void beforeInsertHandler(List<User> newList, Map<Id,User> oldMap){
       }// END OF BEFORE INSERT HANDLER */

    /**@@
        #DESCRIPTION     : Before Update Handler
        #Paramaters        : trigger.newList
     @@**/
     /*public static void beforeUpdateHandler(List<User> newList){   
       
       }//END OF BEFORE UPDATE HANDLER*/

    /**@@
        #DESCRIPTION     : After Insert Handler
        #Paramaters        : trigger.newList
     @@**/
     public static void afterInsertHandler(List<User> newList){
        Trigger_User_Helper.displayUserIdonContact(newList, null);

    }//END OF AFTER INSERT HANDLER

    /**@@
        #DESCRIPTION     : After Update Handler
        #Paramaters        : trigger.newList, trigger.oldMap
     @@**/
     public static void afterUpdateHandler(List<User> newList, Map<Id, User> oldMap){
        Trigger_User_Helper.displayUserIdonContact(newList, oldMap);
    }//END OF AFTER UPDATE HANDLER

}//END OF CLASS