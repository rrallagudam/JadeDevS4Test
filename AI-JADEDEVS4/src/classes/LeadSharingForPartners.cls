/*********************************
 * Class Name: LeadSharingForPartners
 * Author: Jade Global Inc.
 * Date: 11th July 2017
 * Purpose: This class will impose all the sharing settings for leads.
 *          This class will insert the records in LeadShare object to open the access of the records for particular partner.
 * *******************************/

public without sharing class LeadSharingForPartners {
        
    public static void insertLeadShare2(List<Lead> listLeads, Map<Id, Lead> oldMap)
    {
        List<Lead> updateLeadList = new List<Lead>();
        Set<Id> setPartnerContactIds = new Set<Id>();
        Set<Id> setLeadIds = new Set<Id>();
        Map<Id, Id> mapConIdToUserId = new Map<Id, Id>();
        
        // go through leads
        for(Lead leadObj : listLeads)
        {
            if(Trigger.isUpdate && oldMap != null)
            {
                // if partner contact, we need to remove the previous rules, if owner changes, we need to add partner contact back
                if(leadObj.Partner_Contact__c != OldMap.get(leadObj.id).Partner_Contact__c || leadObj.OwnerId != OldMap.get(leadObj.Id).OwnerId)
                {
                    setLeadIds.add(leadObj.Id);
                    setPartnerContactIds.add(OldMap.get(leadObj.id).Partner_Contact__c);
                    
                    // if partner contact isn't null, we need to add the rule
                    if(leadObj.Partner_Contact__c != null)
                    {
                    	updateLeadList.add(leadObj);
                    	setPartnerContactIds.add(leadObj.Partner_Contact__c);
                    }
                }
            }
            else if(Trigger.isInsert)
            {
                // if partner contact is there on insert, we need to add the rule
                if(leadObj.Partner_Contact__c != null)
                {
                    updateLeadList.add(leadObj);
                    setPartnerContactIds.add(leadObj.Partner_Contact__c);
                }
            }
        }
        
        // get the list of user ids
        List<User> userList = [SELECT Id, ContactId FROM User WHERE ContactId IN :setPartnerContactIds];
        
        for(User userObj : userList)
        {
            mapConIdToUserId.put(userObj.ContactId, userObj.Id);
        }
        
        if(setLeadIds.size() > 0)
        {
            List<LeadShare> currShare = [SELECT id FROM LeadShare WHERE LeadId IN: setLeadIds AND UserOrGroupId IN :mapConIdToUserId.values()];
        
            if(currShare.size() > 0)
            {
                Database.DeleteResult[] lsr = Database.delete(currShare,false);
    
                for(Database.DeleteResult dr : lsr){
                    if(!dr.isSuccess()){
                        // Get the first save result error
                        Database.Error err = dr.getErrors()[0];
                        
                        system.debug('### ERROR: Unable to delete sharing access due to following exception: '+ err.getMessage());
                    }
                }
            }   
        }
        
        List<LeadShare> newShare = new List<LeadShare>();
        
        for(Lead leadObj : updateLeadList)
        {
            if(!mapConIdToUserId.containsKey(leadObj.Partner_Contact__c))
                continue;
            
            LeadShare ldshare = new LeadShare();
            ldshare.LeadId = leadObj.id;
            ldshare.UserOrGroupId = mapConIdToUserId.get(leadObj.Partner_Contact__c);
            ldshare.LeadAccessLevel = 'Read';
            ldshare.RowCause = 'Manual';
            
            newShare.add(ldshare);
        }
        
        if(newShare.size() > 0)
        {
            Database.SaveResult[] lsr = Database.insert(newShare,false);

            for(Database.SaveResult sr : lsr){
                if(!sr.isSuccess()){
                    // Get the first save result error
                    Database.Error err = sr.getErrors()[0];
                    
                    // Check if the error is related to a trivial access level
                    // Access levels equal or more permissive than the object's default 
                    // access level are not allowed. 
                    // These sharing records are not required and thus an insert exception is 
                    // acceptable. 
                    if(!(err.getStatusCode() == StatusCode.FIELD_FILTER_VALIDATION_EXCEPTION && err.getMessage().contains('AccessLevel'))){
                        // Throw an error when the error is not related to trivial access level.
                        system.debug('### ERROR: Unable to grant sharing access due to following exception: '+ err.getMessage());
                    }
                }
            }
        }
    }
    
    
    
    
    //Static set to avoid recursion on same Lead
    public static set<Id> ProcessedLeadIdsSet = new set<Id>();
    public static boolean IsLeadShareExecuted = FALSE;
    
    public static void insertLeadShare(list<Lead> listLeads, map<id,Lead> oldMap){
        
        if(/*IsLeadShareExecuted == FALSE*/ LeadConvertController.IsSharedFromLeadConversion == FALSE){
        
            //IsLeadShareExecuted = TRUE;
        
            list<LeadShare> listLeadSharesToBeInserted = new list<LeadShare>();
            set<Id> setContactIds = new set<Id>();
            set<Id> setLeadIds = new set<Id>();
            map<Id,Id> MapContactIdAndUserId = new map<id,id>();
            map<Id,Lead> MapLeadIdAndLead = new map<Id,Lead>();
            
            for(Lead ld : listLeads){
                if(ld.Partner_Contact__c != null && ld.isConverted == false){
                    setContactIds.add(ld.Partner_Contact__c);   
                }//End of IF
                
                if(!MapLeadIdAndLead.containsKey(ld.id)){
                    MapLeadIdAndLead.put(ld.id,ld);
                }//End of IF
                
                if(Trigger.isUpdate){
                    if(ld.OwnerId == OldMap.get(ld.id).OwnerId && ld.Partner_Contact__c != OldMap.get(ld.id).Partner_Contact__c)
                        setLeadIds.add(ld.id);
                }//End of isUpdate()
                
            }//End of FOR

            //DELETION of existing LeadShare Records for Lead present in the system [Lead's Primary Contact Change/Update Scenario]
            if(!setLeadIds.isEmpty()){
                Map<Id,LeadShare> MapShare = new Map<id,LeadShare>([SELECT id,LeadId,UserOrGroupId,RowCause FROM LeadShare WHERE LeadId IN: setLeadIds]);
                if(!MapShare.isEmpty()){
                    for(LeadShare ls: MapShare.values()){
                        Lead leadrec = MapLeadIdAndLead.get(ls.LeadId);
                        Lead OldLeadData = OldMap.get(ls.LeadId);
                        
                            if(!ProcessedLeadIdsSet.Contains(ls.id)){
                                if(ls.UserOrGroupId == leadrec.ownerId || string.valueof(ls.UserOrGroupId).startswith('00G') || ls.RowCause == 'Rule'){
                                    MapShare.remove(ls.Id);
                                }//End of IF
                            }//Avoiding the same Lead Ids in same transaction
                        
                    }//End of FOR
                }//End of IF
                
                if(!MapShare.isEmpty()){
                    try{
                        DELETE MapShare.values();
                    }//End of Try Block
                    Catch(Exception ex){
                        ExceptionHandlingEmail.sendEmailonException(ex);
                    }//End of Catch Block
                }//End of IF
            }//End of IF
            
            if(!setContactIds.isEmpty()){
                list<User> listUserWithContactIds = [SELECT id,ContactId FROM USER WHERE ContactId IN: setContactIds];
                
                if(!listUserWithContactIds.isEmpty()){
                    for(User u : listUserWithContactIds){
                        if(!MapContactIdAndUserId.containsKey(u.ContactId)){
                            MapContactIdAndUserId.put(u.ContactId,u.id);
                        }//End of IF
                    }//End of FOR
                }//End of IF
                
                //Logic to INSERT the records in LeadShare object
                for(Lead l : listLeads){
                    if(!MapContactIdAndUserId.isEmpty() && MapContactIdAndUserId.containsKey(l.Partner_Contact__c) && l.Partner_Contact__c != null){
                        LeadShare ldshare = new LeadShare();
                        ldshare.LeadId = l.id;
                        ldshare.UserOrGroupId = MapContactIdAndUserId.get(l.Partner_Contact__c);
                        ldshare.LeadAccessLevel = 'Read';
                        ldshare.RowCause = 'Manual';
                        
                        //Allowing only 1 record per Lead to avoid Duplicate Lead Share Records for the same Lead and Partner Contact
                        if(!ProcessedLeadIdsSet.contains(l.id)){
                            ProcessedLeadIdsSet.add(l.id);
                            listLeadSharesToBeInserted.add(ldshare);
                        }//End of IF
                        
                    }//End of IF
                }//End of FOR         
            }//End of IF
            
            if(!listLeadSharesToBeInserted.isEmpty()){
                try{
                    INSERT listLeadSharesToBeInserted;
                }//End of try
                Catch(Exception ex){
                    ExceptionHandlingEmail.sendEmailonException(ex);
                }
            }//End of IF
        }//End of IF for Boolean check
    }//End of method insertLeadShare()
}//End of class LeadSharingForPartners