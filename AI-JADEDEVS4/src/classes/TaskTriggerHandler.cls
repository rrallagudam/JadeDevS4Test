/**@@
#HANDLER CLASS NAME         :  TaskTriggerHandler
#TRIGGER NAME               :  TaskTrigger
#HELPER CLASS NAME          :  None
#TEST CLASS                 :  TaskTriggerHandler_Test
#DESCRIPTION                :  This is used for different methods depends on trigger events   
@@**/
public class TaskTriggerHandler{
    
    public static void onAfterInsertUpdate(List<Task> triggernew,Map<Id,Task> oldMap){
        
        Id CurrentUserId = UserInfo.getUserId();
        
        List<Account> accountList = new List<Account>();
        List<Contact> contactList = new List<Contact>();
        List<Opportunity> OpportunityList = new List<Opportunity>();
        
        //Added by Bill Feeheley - 08/19/2016
        //List<SObject> reopenRecords = new List<SObject>();
        
        set<Id> setIds = new set<Id>();
        set<ID> conObjId = new set<ID>();
        Set<ID> objectIDs = new Set<ID>();
        Set<ID> ownerIDs = new set<ID>();
        
        //task created by Id
        Set<ID> tskcreatedIDs = new Set<ID>();
        
        //Task assigned means OwnerId
        Set<ID> tskassignedIDs = new Set<ID>();
        
        map<string,Task> mapLeadIdTasks = new map<string,Task>();   //IT-81
        //map<string,Task> mapContactTasks = new map<string,Task>();
        
        for(Task otask:triggernew){
            if(objectIDs.contains(otask.WhoID) || objectIDs.contains(otask.WhatID)){
                continue;
            }
            
            //Added by Bill Feeheley - 08/19/2016
            //Update the Lead or Contact Reopen flag to true whenever a new Activity is added.
            /*if(Trigger.isInsert && otask.WhoID != null && otask.CreatedById == Label.ELOQUA_USER_SF_ID) {
                if(!setIds.contains(otask.WhoID)){
                    SObject sObj = otask.WhoID.getSObjectType().newSObject();
                    sObj.put('Id', otask.WhoID);
                    sObj.put('Reopen__c', true);
                    reopenRecords.add(sObj);
                    setIds.add(otask.WhoID);
                    ownerIDs.add(otask.ownerId);
                }
            }*/
            
            if(otask.WhoID != null && (''+otask.Whoid).StartsWith('003')){
                contactList.add(new Contact(ID=otask.Whoid,Last_Modified_Date_Activity__c=otask.LastModifiedDate));
                objectIDs.add(otask.WhoId);
                conObjId.add(otask.WhoId);
                tskcreatedIDs.add(otask.CreatedById);
                tskassignedIDs.add(otask.ownerId);
                //ownerIDs.add(otask.whoid.)
            }
            if(otask.WhatId != null && (''+otask.whatid).StartsWith('001')){
                accountList.add(new Account(ID=otask.whatid,Last_Modified_Date_Activity__c=otask.LastModifiedDate));
                objectIDs.add(otask.WhatId);
            }
            if(otask.WhatId != null && (''+otask.whatid).StartsWith('006')){
                OpportunityList.add(new Opportunity(ID=otask.whatid,Last_Modified_Date_Activity__c=otask.LastModifiedDate));
                objectIDs.add(otask.WhatId);
            }
            //IT- 81
            System.debug('### checking if task has been completed');
            if(otask.CreatedById != Label.ELOQUA_USER_SF_ID && otask.CreatedById != Label.EXCLUDE_PABLO && otask.WhoId != null){
                if(Trigger.isInsert && otask.status=='Completed'){
                    system.debug('### task has been completed');
                    mapLeadIdTasks.put(otask.WhoId,otask);                
                }
                else if (Trigger.isUpdate && ((otask.status != oldMap.get(otask.id).status) && otask.status == 'Completed') ){
                    system.debug('### task has been completed');
                    mapLeadIdTasks.put(otask.WhoId,otask);                
                }
            }                                 
            
            
        }//End of for loop
        
        Set<ID> conOwnerId = new Set<ID>();
        Map<ID,Contact> mapOwnerID = new Map<ID,Contact>([select id,ownerid from contact where id IN: conObjId]);
        String userProfileId = UserInfo.getProfileId();
        
        //IT - 81 Start
        list<Lead> lstLeads = new list<Lead>();
         if(!mapLeadIdTasks.keySet().isEmpty()){               
            system.debug('mapLeadIdTasks>>>>  for Lead : ' +mapLeadIdTasks);
            for(Lead ol:[select id, LastActivityDate,Owner.ProfileId, LastActivityDate_MinusEloqua__c from Lead where Id=:mapLeadIdTasks.keySet()]){
      //for(Lead ol:[select id, LastActivityDate,Owner.ProfileId from Lead where Id=:mapLeadIdTasks.keySet()]){
                if(userProfileId == CustomConstants.SDRProfileId || userProfileID == CustomConstants.SalesRepProfileId)
                {
                    system.debug('### adding lead to update last touch');
                    ol.LastActivityDate_MinusEloqua__c = System.now();
                    lstLeads.add(ol); 
                }    
            }
        }
        list<Contact> lstContacts = new list<Contact>();
        if(!mapLeadIdTasks.keySet().isEmpty()){       
        system.debug('mapLeadIdTasks>>>> For Contact ' +mapLeadIdTasks);
            for(Contact con:[select id, LastActivityDate,Ownerid, LastActivityDate_MinusEloqua__c from Contact where Id=:mapLeadIdTasks.keySet()]){
      //for(Contact con:[select id, LastActivityDate,Ownerid from Contact where Id=:mapLeadIdTasks.keySet()]){
                if(userProfileId == CustomConstants.SDRProfileId || userProfileID == CustomConstants.SalesRepProfileId)
                {
                    system.debug('### adding contact to update last touch');
                    con.LastActivityDate_MinusEloqua__c = System.now();
                    lstContacts.add(con);  
                }      
            }
        }
        if(!lstLeads.isEmpty())
            update lstLeads;
        
        if(!lstContacts.isEmpty())
            update lstContacts;
        
        // IT- 81 End
        if(!accountList.isEmpty()){
            update accountList;
        }
        if(!contactList.isEmpty()){
            update contactList;
        }
        if(!OpportunityList.isEmpty()){
            update OpportunityList;
        }
        //Added by Bill Feeheley - 08/19/2016
        /*if(!reopenRecords.isEmpty()) {
            update reopenRecords;
        }*/
    }
    //==========================================================
    
    //Created by Eoghan 14/03/2017
    //Stamps Contact and/or Opportunity with task creation date
    
    @future
    public static void afterInsert(List<Id> taskIds)
    {
        
        Map<Id,Task> taskMap = new Map<Id,Task>([select Id, WhoCount, CreatedDate, WhatId, (select Id, RelationId, Type from TaskWhoRelations) from Task where Id in: taskIds]);
        List<Id> contactIds = new List<Id>();
        Map<Id,Datetime> dateValuesMap = new Map<Id,Datetime>();
        List<Contact> contactsToUpdate = new List<Contact>();
        DateTime dt;
        Date lastActivityDate;
        
        List<Id> opportunityIds = new List<Id>();
        List<opportunity> opportunitiesToUpdate = new List<opportunity>();
        
        for(Id taskId: taskMap.keySet())
        {
            Task aTask = taskMap.get(taskId);
            
            //Integer whoCount = aTask.WhoCount;
            Integer whoCount = taskMap.get(taskId).TaskWhoRelations.size();
            
            //System.debug('Who Count: ' + whoCount);
            
            //create a list of contacts ids(relation ids) to update
            for(Integer i = 0;i < whoCount; i++)
            {
                System.debug('ID:  ' + aTask.TaskWhoRelations[i].RelationId);
                if(aTask.TaskWhoRelations[i].RelationId != NULL)
                {
                    contactIds.add(aTask.TaskWhoRelations[i].RelationId);
                    dateValuesMap.put(aTask.TaskWhoRelations[i].RelationId,aTask.CreatedDate);
                }
            }
            
            
            //Deal with opportunities
            if(aTask.WhatId != NULL && ('' + aTask.WhatId).startsWith('006'))
            {
                dateValuesMap.put(aTask.WhatId,aTask.CreatedDate);
                opportunityIds.add(aTask.WhatId);
            }
            
        }
        
        //add new Last activity date to all relevant contacts
         if(!contactIds.isEmpty()){
        contactsToUpdate = [SELECT id,Last_Activity_Date__c FROM Contact WHERE Id IN: contactIds];
         }
        if(!opportunityIds.isEmpty()){
        opportunitiesToUpdate = [SELECT id,Last_Activity_Date__c FROM Opportunity WHERE Id IN: opportunityIds];
        }
        contactsToUpdate = updateContactLastActivityDate(contactsToUpdate, dateValuesMap);
        
        //Add Activity date to Opportunities
        for(Opportunity opp: opportunitiesToUpdate)
        {
            dt = dateValuesMap.get(opp.Id);
            lastActivityDate = date.newInstance(dt.year(), dt.month(), dt.day());
            
            opp.Last_Activity_Date__c = lastActivityDate;
        }
        
        update opportunitiesToUpdate;
        update contactsToUpdate; 
    }
    @TestVisible private static List<Contact> updateContactLastActivityDate(List<Contact> contactsToUpdate, Map<Id,Datetime> dateValuesMap)
    {
        DateTime dt;
        Date lastActivityDate;
        
        for(Contact con:contactsToUpdate)
        {
            //Get the activity date from the map, convert from datetime
            dt = dateValuesMap.get(con.Id);
            lastActivityDate = date.newInstance(dt.year(), dt.month(), dt.day());
            con.Last_Activity_Date__c = lastActivityDate;
        }
        
        return contactsToUpdate;
    }
    /**@@
    #DESCRIPTION     : EA-593 : Partner Last Activity Date will be timestamped when an activity is created by a sales rep or by a partner user.
    #Paramaters      : List<Task> newList
    @@**/    
    public static void timestampPartnerLastActivityDate(List<Task> newList)
    {
        Map<Id,Task> mapTaskPartnerUpdate = new map<Id,Task>();
        List<Lead> leadToUpdate = new List<Lead>();
        set<id> setTaskIds = new set<id>();
        for(Task objTask : newList){
            setTaskIds.add(objTask.id);
        }
        if(!setTaskIds.isEmpty()){
            List<Task> taskList = [Select id, CreatedBy.Profile.Name, WhoId from Task where Id IN: setTaskIds ];
            System.debug('taskList--->'+taskList);
            
            for(Task taskObj : taskList){
                if(taskObj.WhoID != null && (''+taskObj.Whoid).StartsWith('00Q')){
                   
                    if(taskObj.CreatedBy.Profile.Name.containsIgnoreCase('Partner Community'))
                    {
                        system.debug('adding to list');
                        mapTaskPartnerUpdate.put(taskObj.WhoId,taskObj);
                    }
                }
                For(Lead ld : [select id,Partner_Last_Activity_Date__c from Lead where Id=:mapTaskPartnerUpdate.keySet() AND Partner_Contact__c != null]){
                    ld.Partner_Last_Activity_Date__c = System.today();
                    leadToUpdate.add(ld);
                }
            }
        }
        
        if(!leadToUpdate.isEmpty()){
            update leadToUpdate;
        }
        
    }
    
    
     /**@@
    #DESCRIPTION     : EA-1247 : Restrict Partner Community users from being able to add new tasks to expired leads and opportunties
    #Paramaters      : List<Task> newList
    @@**/    
    public static void restrictPartnertoAddTaskforExpired(List<Task> newList){
        
        set<Id> sLeadId = new set<Id>();
        set<Id> sOppId = new set<Id>();
        for(Task tsk: newList){
            
            if(tsk.whoId != null && string.valueOf(tsk.whoId).startsWith('00Q')){
                sLeadId.add(tsk.whoId);
            }
            if(tsk.whatId != null && string.valueOf(tsk.whatId).startsWith('006')){
                sOppId.add(tsk.whatId);
            }            
        }

        if(!sLeadId.isEmpty() || !sOppId.isEmpty()){
            Map<Id, Lead> mapLead = new Map<Id, Lead>();
            if(!sLeadId.isEmpty()){
                mapLead = new Map<Id, Lead>([SELECT id FROM Lead where id in: sLeadId and Registration_Status__c =: CustomConstants.LeadRegistrationStatusExpired]); 
            }
            
            Map<Id, Opportunity> mapOpportunity = new Map<Id, Opportunity>();
            if(!sOppId.isEmpty()){
                mapOpportunity = new Map<Id, Opportunity>([SELECT id FROM Opportunity where id in: sOppId and Registration_Status__c =: CustomConstants.OpportunityRegistrationStatusExpired]); 
            }
            List<User> lstUser = [SELECT id FROM User where ID =: system.userinfo.getUserid() AND Profile.name like '%Partner Community%'];
            
            if(!lstUser.isEmpty()){
                for(Task tsk: newList){
                    if(tsk.whoId != null && ((!mapLead.isEmpty() && mapLead.containsKey(tsk.whoId)))){
                        tsk.addError('You can not add task for expired Lead.');
                    }
                    if(tsk.whatId != null && (!mapOpportunity.isEmpty() && mapOpportunity.containsKey(tsk.whatId))){
                        tsk.addError('You can not add task for expired Opportunity.');
                    }
                }            
            }
            
        }
    }
    
}