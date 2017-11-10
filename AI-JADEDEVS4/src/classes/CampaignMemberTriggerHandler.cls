public class CampaignMemberTriggerHandler
{
        public static void AfterInsert(list<CampaignMember> newrecords,list<CampaignMember> oldrecords,map<ID,CampaignMember> newmap,map<ID,CampaignMember> oldmap)
    {
        set<ID> contactIDs = new set<ID>();
        list<Contact> contactsToUpdate = new list<Contact>();
        set<Id> setLeadIds = new set<Id>();  //IT-512
        set<String> leadStatus = new set<String>{'Unqualified','Unresponsive','Reject'}; 
        
        for(CampaignMember ocamp :newrecords){
            if(ocamp.Contactid != null){
                contactIDs.add(ocamp.ContactID);
            }
            
            //IT-512
            if(ocamp.LeadId != null){
                setLeadIds.add(ocamp.LeadId);   //IT-512
        }
        for(Contact con : [SELECT ID,Status__c FROM Contact WHERE ID IN: contactIDs AND Status__c IN: leadStatus ])
        {
           contactsToUpdate.add(new Contact(ID=con.ID,Status__c='Renew')); 
        }
        if(!contactsToUpdate.isEmpty()){
            update contactsToUpdate;
        }
        //IT-512
        if(!setLeadIds.isEmpty()){
            list<Lead> lstLeads = [select id, Campaign_Last_Associated_date__c  from Lead where id IN: setLeadIds];
            for(Lead objL:lstLeads){
                objL.Campaign_Last_Associated_date__c = system.today();
            }
            if(!lstLeads.isEmpty())
                update lstLeads;
        }
        if(!contactIDs.isEmpty()){
            list<Contact> lstContacts = [select id, Campaign_Last_Associated_date__c  from Contact where id IN: contactIDs];
            for(Contact objC:lstContacts){
                objC.Campaign_Last_Associated_date__c = system.today();
            }
            if(!lstContacts.isEmpty())
                update lstContacts;
        }
        //IT-512
        
    }
    }
    
    public static void BeforeInsertUpdate(list<CampaignMember> newrecords){
    
         set<ID> contactIDs = new set<ID>();
         Map<id,Contact> contactmap = new Map<id,Contact>();
         Map<id,Contact> conmap = new Map<id,Contact>();
        list<Contact> contactsToUpdate = new list<Contact>();
                
        for(CampaignMember ocamp :newrecords){
            if(ocamp.Contactid != null){
                 contactmap.put(ocamp.Contactid,null);
            }
        }
        conmap =New Map<ID,Contact>([select id,Accountid FROM Contact where id IN:contactmap.keyset()]);
         for (CampaignMember cm:newrecords){
             if(conmap.containskey(cm.Contactid)){
             Contact a = conmap.get(cm.ContactId);
              
               cm.GS_Account__c = a.Accountid;
        }
        }
    }
    }