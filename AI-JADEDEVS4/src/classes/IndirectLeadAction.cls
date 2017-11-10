public class IndirectLeadAction {
    public final static ID ChannelLead_QueueID = [SELECT Id, Name, DeveloperName, Type FROM Group WHERE Type='Queue' AND DeveloperName='Channel_Lead_Validation'].ID;
    public static boolean Iscampaignmemberinsert = false;
    @InvocableMethod(
        label='Indirect Lead Processing Action'
        description='Attempts to match Lead website with an existing Account')
    public static void process(List<Lead> leadRecord) {
        // WARNING: This is NOT bulkified! Any process flows that invoke this method
        // should be disabled prior to bulk importing indirect Leads.
        List<CampaignMember> campaignMemberList = new List<CampaignMember>();
        
        if(ChannelLead_QueueID == null){
            Logger.error(leadRecord[0].Id , 'Lead', 'IndirectLeadAction Error', 'Channel_Lead_Validation Queue Not Found');
            return;
        }
        
        List<Lead> updateLeads = new List<Lead>();
        List<Lead> convertLeads = new List<Lead>();
        for(Lead l : leadRecord){
            if( l.Type__c=='Customer Prospect'){
                list<CampaignMember> existingCampaignMember = [SELECT ID FROM CampaignMember WHERE ID=: system.label.Lead_Partner_Campaign_ID AND LeadID =: l.ID];
                if(existingCampaignMember.isEmpty()){                
                    CampaignMember cm = new CampaignMember (CampaignId=system.label.Lead_Partner_Campaign_ID, LeadId=l.id);
                    campaignMemberList.add(cm);
                }
            }
            LeadAccountMatcher matcher = new LeadAccountMatcher(leadRecord[0]).validateWebsite();
            if(matcher.hasErrors()){
                Logger.error(l.Id , 'Lead', 'IndirectLeadAction Error', 'LeadAccountMatched failed validation: ' + matcher.Errors[0]);
                continue;
            }
            
            List<Account> accountList = matcher.getMatchingAccountsByWebsite();
            if(accountList.size() > 0){
                //  l.OwnerId = ChannelLead_QueueID;
                lead templead = new lead(id=l.id,ownerid = ChannelLead_QueueID);
                updateLeads.add(templead);
            }
            else{
                convertLeads.add(l);
            }
        }
        if(campaignMemberList.size() > 0 && Iscampaignmemberinsert == false){
           Iscampaignmemberinsert = true;
            Database.insert(campaignMemberList, false);
        }
        if(convertLeads.size() > 0){
            convertAllLeads(convertLeads);
        }
        if(updateLeads.size() > 0){
            update updateLeads;
        }
    }
    
    private static void convertAllLeads(List<Lead> leadList){
        List<Database.LeadConvert> leadConverts = new List<Database.LeadConvert>();
        map<ID,Lead> leadMap = new map<ID,Lead>();
        for(Lead l : leadList){
            Database.LeadConvert lc = new Database.LeadConvert();
            lc.setLeadId(l.Id);
            lc.convertedStatus = 'Accept';
            string ownerid = l.OwnerID;
            leadMap.put(l.id,l);
            if(ownerid != null && ownerid.startsWith('00G')){
                lc.setOwnerId(UserInfo.getUserID());
            }
            lc.setDoNotCreateOpportunity(false);
            leadConverts.add(lc);
        }
        
        List<Database.LeadConvertResult> conversionResults  = Database.convertLead(leadConverts, false);
        Integer record_index = 0;
        for(Database.LeadConvertResult result : conversionResults){
            if(result.isSuccess() == false){
                Logger.error(leadList.get(record_index).Id, 'Lead', 'Lead conversion failed in IndirectLeadAction', result.getErrors()[0].getMessage());
            }
            record_index++;
        }
        updateOpportunities(conversionResults,leadMap);
    }
    
    @TestVisible private static Map<ID,Account> getConvertedAccounts(List<Database.LeadConvertResult> conversionResults){
        Set<ID> accountIDs = new Set<ID>();
        for(Database.LeadConvertResult lcr : conversionResults){
            if(lcr.isSuccess() == false){
                continue;
            }
            if(lcr.getAccountId() != null){
                accountIDs.add( lcr.getAccountId() );
            }
        }
        return new Map<Id,Account>([SELECT Id,OwnerId,Partner_Contact__c 
                                    FROM Account 
                                    WHERE id IN: accountIDs]);
    }
    
    @TestVisible private static void updateOpportunities(List<Database.LeadConvertResult> conversionResults, map<ID,Lead> leadMap){
        List<Opportunity> opportunityList = new List<Opportunity>();
        date date270Days = system.today().addDays(Integer.valueof(Label.Opportunity_Close_Date));
        
        Map<ID,Account> accountMap = getConvertedAccounts(conversionResults);
        
        for(Database.LeadConvertResult lcr : conversionResults){
            if(lcr.isSuccess() == false){
                continue;
            }
            
            Opportunity o = new Opportunity(ID=lcr.getOpportunityId());
            o.StageName='Prospect';
            o.CloseDate=date270Days;
            o.OwnerID=accountMap.get(lcr.getAccountId()).OwnerID;
            o.Primary_Contact__c = lcr.getcontactID();
            o.Partner_Opportunity__c = true;
            o.NextStep = leadMap.containsKey(lcr.getLeadId())== true?leadMap.get(lcr.getLeadId()).Next_Steps__c:'';

            opportunityList.add(o);
        }
        
        update opportunityList;
    }
}