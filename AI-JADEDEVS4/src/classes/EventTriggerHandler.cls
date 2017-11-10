public class EventTriggerHandler
{
    public static void onAfterInsertUpdate(list<event> triggernew )
    {
        List<Account> accountList = new List<Account>();
        List<Contact> contactList = new List<Contact>();
        List<Opportunity> opportunityList = new list<Opportunity>();
        Set<ID> objectIDs = new Set<ID>();
        
        for(event oevent:triggernew){
            if(objectIDs.contains(oevent.WhoID) || objectIDs.contains(oevent.WhatID)){
                continue;
            }
            if(oevent.whoID != null && (''+oevent.whoid).StartsWith('003')){
                contactList.add(new Contact(ID=oevent.whoid,Last_Modified_Date_Activity__c=oevent.LastModifiedDate));                
                objectIDs.add(oevent.WhoId);
            }
            if(oevent.WhatId != null && (''+oevent.whatid).StartsWith('001')){
                accountList.add(new Account(ID=oevent.whatid,Last_Modified_Date_Activity__c=oevent.LastModifiedDate));
                objectIDs.add(oevent.WhatId);
            }
            if(oevent.WhatId != null && (''+oevent.whatid).StartsWith('006')){
                opportunityList.add(new Opportunity(ID=oevent.WhatId,Last_Modified_Date_Activity__c=oevent.LastModifiedDate));
                objectIDs.add(oevent.WhatId);
            }
        }
        
        if(!accountList.isEmpty()){
            update accountList;
        }
        if(!contactList.isEmpty()){
            update contactList;
        }
        if(!OpportunityList.isEmpty()){
            update opportunityList; 
        }
    }
}