/**@@
#TRIGGER NAME                :    LeadTrigger
#HANDLER CLASS NAME  :    Trigger_Lead_Handler
#HELPER CLASS NAME     :    Trigger_Lead_Helper
#TEST CLASS          :    LeadTriggerHandler_Test
#DESCRIPTION                   :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.   
@@**/
public class Trigger_Lead_Handler{

   /**@@
        #DESCRIPTION   : Before Insert Hanlder
        #Paramaters        : trigger.new,trigger.newMap
    @@**/
    public static void beforeInsertHandler(List<Lead> newList, Map<Id,Lead> newMap){
        // Updating the lead fields based on lead score.
        //deactivating existing logic related to SOZO-311, SOZO-372 and SOZO-310)
        //Trigger_Lead_Helper.setLeadAttributes(newList,null);
        
        // Update the Adaptive industry, Adaptive description fields based on NAICS code.
        Trigger_Lead_Helper.NAICSAdaptiveIndustryUpdate(newList,null);
        
        //Updating the Life cycle based on status.
        Trigger_Lead_Helper.newSetLeadAttributes(newList,null);
        
        //update Timestamp field based on Lifecycle field value change
        Trigger_Lead_Helper.setTimestamp(newList,null);
        
        //update state name to two digit ISO Code
        Trigger_Lead_Helper.convertStateNameOnLead(newList);
        
        //Update Email Opt-Out
        Trigger_Lead_Helper.setEmailOptOut(newList);
        
       // Set Enriched After HubSpot if HubSpot is done
        Trigger_Lead_Helper.setEnrichedAfterHubSpot(newList);
       
    }// END OF BEFORE INSERT HANDLER

    /**@@
        #DESCRIPTION   : Before Update Hanlder
        #Paramaters        : trigger.newList, trigger.newMap, trigger.oldList, trigger.oldMap
    @@**/ 
    public static void beforeUpdateHandler(List<Lead> newList, Map<Id,Lead> newMap, List<Lead> oldList, Map<Id,Lead> oldMap){  
        
        // Updating the lead fields based on lead score.
        //deactivating existing logic related to SOZO-311, SOZO-372 and SOZO-310)
        //Trigger_Lead_Helper.setLeadAttributes(newList,oldMap);
        
        // Update the Adaptive industry, Adaptive description fields based on NAICS code. 
        Trigger_Lead_Helper.NAICSAdaptiveIndustryUpdate(newList,oldMap);
        
        //setting the status to Restored.
        Trigger_Lead_Helper.setStatusRestored(newList,oldMap);
        
        //Updating the Life cycle based on status.
        Trigger_Lead_Helper.newSetLeadAttributes(newList,oldMap);
        
        //update Timestamp field based on Lifecycle field value change
        Trigger_Lead_Helper.setTimestamp(newList,oldMap);
      
        //update state name to two digit ISO Code
        Trigger_Lead_Helper.convertStateNameOnLead(newList);
        
        //Update Email Opt-Out
        Trigger_Lead_Helper.setEmailOptOut(newList);
        
        // Update the lead from partner if it has been marked as expired
        Trigger_Lead_Helper.updateExpiredLeads(newList, oldMap);
        
        // Set Enriched After HubSpot if HubSpot is done
        Trigger_Lead_Helper.setEnrichedAfterHubSpot(newList);
        
    }//END OF BEFORE UPDATE HANDLER


    /**@@
        #DESCRIPTION   : Before Update Hanlder
        #Paramaters        : trigger.oldList, trigger.oldMap
    @@**/   
    public static void beforeDeleteHandler(List<Lead> oldList, Map<Id,Lead> oldMap){
        //AWAITING FOR YOU...
    }//END OF BEFORE DELETE HANDLER

    /**@@
        #DESCRIPTION   : After Insert Hanlder
        #Paramaters        : trigger.newList, trigger.newMap, trigger.oldList, trigger.oldMap
    @@**/    
    public static void afterInsertHandler(List<Lead> newList, Map<Id,Lead> newMap, List<Lead> oldList, Map<Id,Lead> oldMap){
        List<Contact> cList;
        List<Account> aList;
        
        //Matchning email on contact
        cList = Trigger_Lead_Helper.matchEmail(newList);
        
        //Converting matched email leads
        if(cList!= null){
            Trigger_Lead_Helper.matchedConversion(cList);
        }

        //Matching company on contact
        aList = Trigger_Lead_Helper.matchAddress(newList);
        
        //Converting matched company leads
        if(aList != null){
            Trigger_Lead_Helper.partialMatchConversion(aList);
        }
        
        //Data.com Call Out
        Trigger_Lead_Helper.dataDotComCall(newList, null);
        //Workflow - solution @Laura
        //Send Lead Registration Approval and Rejaection email depending on Registration Status.
        Trigger_Lead_Helper.LeadRegistrationEmail(newList, null);
        // Delete lead record when Lead Registration Status changed to Rejected
        Trigger_Lead_Helper.LeadRegistrationRejected(newList, oldMap);
        
        //Invoke Desicion on Demand Lead Assignment trigger helper 
        Trigger_Lead_Helper.handleTrigger(Lead.sObjectType);
        
        //Method call to insert the data in LeadShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        LeadSharingForPartners.insertLeadShare2(newList,null);
        
    }//END OF AFTER INSERT HANDLER

    /**@@
        #DESCRIPTION   : After Update Hanlder
        #Paramaters        : trigger.newList, trigger.newMap, trigger.oldList, trigger.oldMap
    @@**/    
    public static void afterUpdateHandler(List<Lead> newList, Map<Id,Lead> newMap, List<Lead> oldList, Map<Id,Lead> oldMap){
         // Added condition to Stop recursion for SDR profile
         if(Trigger_Lead_Helper.isChatterPostsAdded == false){
             system.debug(newMap);
             Trigger_Lead_Helper.keepChatterPostonConversion(newMap, oldMap);     
         } 
         //Data.com Call Out
         Trigger_Lead_Helper.dataDotComCall(newList, oldMap);     
        //Workflow - solution @Laura
        //Send Lead Registration Approval and Rejaection email depending on Registration Status.
        Trigger_Lead_Helper.LeadRegistrationEmail(newList, oldMap);
        // Delete lead record when Lead Registration Status changed to Rejected
        Trigger_Lead_Helper.LeadRegistrationRejected(newList, oldMap);
        
        //Invoke Desicion on Demand Lead Assignment trigger helper 
        //Trigger_Lead_Helper.handleTrigger(Lead.sObjectType, trigger.newMap, Trigger.oldMap);
        
        //Method call to insert the data in LeadShare object for Sharing and Security
        //Reference Story no: EA-723 - Partner Access/Visibility
        LeadSharingForPartners.insertLeadShare2(newList,oldMap);
        
        //EA-593 : Blank out partner fields on newly created contact and opportunity when expired lead is converted.
        Trigger_Lead_Helper.blackOutContactOpportunityPatnerFields(newList);
        
        
        
    }//END OF AFTER UPDATE HANDLER

    /**@@
        #DESCRIPTION   : After Delete Hanlder
        #Paramaters        : trigger.newList, trigger.oldList, trigger.oldMap
    @@**/   
    public static void afterDeleteHandler(List<Lead> newList, List<Lead> oldList, Map<Id,Lead> oldMap){

//Invoke Desicion on Demand Lead Assignment trigger helper 
        Trigger_Lead_Helper.handleTrigger(Lead.sObjectType, trigger.newMap, Trigger.oldMap);
        
    }//END OF AFTER DELETE HANDLER
    /**@@
        #DESCRIPTION   : After Delete Hanlder
        #Paramaters        : trigger.newList, trigger.newMap
    @@**/ 
    public static void afterUnDeleteHandler(List<Lead> newList, Map<Id,Lead> newMap){

    }
}//END OF CLASS