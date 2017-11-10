/*********************************
 * Class Name: ContactSharingForPartners
 * Author: Jade Global Inc.
 * Date: 13th July 2017
 * Purpose: This class will impose all the sharing settings for Contacts.
 *          This class will insert the records in ContactShare object to open the access of the records for particular partner.
 * *******************************/

public without sharing class ContactSharingForPartners {
    
    public static void insertContactShare2(List<Contact> listContacts, Map<Id, Contact> oldMap)
    {
        List<Contact> updateConList = new List<Contact>();
        Set<Id> setPartnerContactIds = new Set<Id>();
        Set<Id> setConIds = new Set<Id>();
        Map<Id, Id> mapConIdToUserId = new Map<Id, Id>();
        
        // go through leads
        for(Contact conObj : listContacts)
        {
            if(Trigger.isUpdate && oldMap != null)
            {
                // if partner contact, we need to remove the previous rules, if owner changes, we need to add partner contact back
                if(conObj.Partner_Contact__c != OldMap.get(conObj.id).Partner_Contact__c || conObj.OwnerId != OldMap.get(conObj.Id).OwnerId)
                {
                    setConIds.add(conObj.Id);
                    setPartnerContactIds.add(OldMap.get(conObj.id).Partner_Contact__c);
                    
                    // if partner contact isn't null, we need to add the rule
                    if(conObj.Partner_Contact__c != null)
                    {
                    	updateConList.add(conObj);
                    	setPartnerContactIds.add(conObj.Partner_Contact__c);
                    }
                }
            }
            else if(Trigger.isInsert)
            {
                // if partner contact is there on insert, we need to add the rule
                if(conObj.Partner_Contact__c != null && LeadConvertController.IsSharedFromLeadConversion == FALSE)
                {
                    updateConList.add(conObj);
                    setPartnerContactIds.add(conObj.Partner_Contact__c);
                }
            }
        }
        
        // get the list of user ids
        List<User> userList = [SELECT Id, ContactId FROM User WHERE ContactId IN :setPartnerContactIds];
        
        for(User userObj : userList)
        {
            mapConIdToUserId.put(userObj.ContactId, userObj.Id);
        }
        
        if(setConIds.size() > 0)
        {
            List<ContactShare> currShare = [SELECT id FROM ContactShare WHERE ContactId IN: setConIds AND UserOrGroupId IN :mapConIdToUserId.values()];
        
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
        
        List<ContactShare> newShare = new List<ContactShare>();
        
        for(Contact conObj : updateConList)
        {
            if(!mapConIdToUserId.containsKey(conObj.Partner_Contact__c))
                continue;
            
            ContactShare conshare = new ContactShare();
            conshare.ContactId = conObj.id;
            conshare.UserOrGroupId = mapConIdToUserId.get(conObj.Partner_Contact__c);
            conshare.ContactAccessLevel = 'Read';
            conshare.RowCause = 'Manual';
            
            newShare.add(conshare);
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
    
    
    
    
    //Static set to avoid recursion on same Contact
    public static set<Id> ProcessedContactIdsSet = new set<Id>();
    public static boolean IsContactShareExecuted = FALSE;
    
    public static void insertContactShare(list<Contact> listContacts, map<id,Contact> oldMap){
        
        if(/*IsContactShareExecuted == FALSE*/ LeadConvertController.IsSharedFromLeadConversion == FALSE) {
        
            //IsContactShareExecuted = TRUE;
        
            list<ContactShare> listContactSharesToBeInserted = new list<ContactShare>();
            set<Id> setContactIds = new set<Id>();
            set<Id> setContactIdsFromTriggerNew = new set<Id>();
            map<Id,Id> MapContactIdAndUserId = new map<id,id>();
            map<id,Contact> MapContactIdAndContact = new map<id,Contact>();
            
            for(Contact con : listContacts){
                if(con.Partner_Contact__c != null){
                    setContactIds.add(con.Partner_Contact__c);   
                }//End of IF
                
                if(!MapContactIdAndContact.ContainsKey(con.id)){
                    MapContactIdAndContact.put(con.id,con);
                }//End of IF
          
                if(Trigger.isUpdate){
                    if(con.OwnerId == OldMap.get(con.id).OwnerId && con.Partner_Contact__c != OldMap.get(con.id).Partner_Contact__c){
                    	setContactIdsFromTriggerNew.add(con.id);
                    }
                }//End of isUpdate()
                
            }//End of FOR

            //DELETION of existing ContactShare Records for Contact present in the system [Contact's Primary Contact Change/Update Scenario]
            if(!setContactIdsFromTriggerNew.isEmpty()){
                Map<Id,ContactShare> MapShare = new Map<id,ContactShare>([SELECT id,ContactId,UserOrGroupId,RowCause FROM ContactShare WHERE ContactId IN: setContactIdsFromTriggerNew]);

                if(!MapShare.isEmpty()){
                    for(ContactShare con: MapShare.values()){
                        Contact ConRec = MapContactIdAndContact.get(con.ContactId);
                        if(con.UserOrGroupId == ConRec.ownerId || string.valueof(con.UserOrGroupId).startswith('00G') || con.RowCause == 'Rule' || con.RowCause == 'ImplicitChild' || con.RowCause == 'PortalImplicit'){
                            MapShare.remove(con.Id);
                        }//End of IF
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
                
                //Logic to INSERT the records in ContactShare object
                for(Contact c : listContacts){
                    if(!MapContactIdAndUserId.isEmpty() && MapContactIdAndUserId.containsKey(c.Partner_Contact__c) && c.Partner_Contact__c != null){
                        ContactShare ConShare = new ContactShare();
                        ConShare.ContactId = c.id;
                        ConShare.UserOrGroupId = MapContactIdAndUserId.get(c.Partner_Contact__c);
                        ConShare.ContactAccessLevel = 'Read';
                        ConShare.RowCause = 'Manual';
                        
                        //Allowing only 1 record per Contact to avoid Duplicate COntact Share Records for the same Contact and Partner Contact
                        if(!ProcessedContactIdsSet.contains(c.id)){
                            ProcessedContactIdsSet.add(c.id);
                            listContactSharesToBeInserted.add(ConShare);
                        }//End of IF
                        
                    }//End of IF
                }//End of FOR         
            }//End of IF
            
            if(!listContactSharesToBeInserted.isEmpty()){
                try{
                    system.debug('!!!!!!!!!!!!!!!'+listContactSharesToBeInserted);
                    INSERT listContactSharesToBeInserted;
                }//End of try
                Catch(Exception ex){
                    ExceptionHandlingEmail.sendEmailonException(ex);
                }
            }//End of IF
        }//End of IF for Boolean check
    }//End of method insertContactShare()
}//End of class ContactSharingForPartners