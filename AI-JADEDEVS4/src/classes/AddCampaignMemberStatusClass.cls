Public class AddCampaignMemberStatusClass{
    Map<Id,Map<String,CampaignMemberStatus>> mapCampMemberStatus = new Map<Id,Map<String,CampaignMemberStatus>>();
    Map<Id,Integer> mapCampMemberStatusCount = new Map<Id,Integer>();
    Map<String,CampaignMemberStatus> statusValue;      
    public void AddCampaignMemberStatusclassMethod(List<Campaign> CampaignRecords){
        List<CampaignMemberStatus> lstCmpMemberStatus = new List<CampaignMemberStatus>();
    
        List<String> lstCmpMemberStatusValue = new List<String>();
        lstCmpMemberStatusValue.add('Sent');
        lstCmpMemberStatusValue.add('Responded');
        lstCmpMemberStatusValue.add('Registered - Attended');
        lstCmpMemberStatusValue.add('Registered - Not Attended');
        lstCmpMemberStatusValue.add('Not Registered - Attended');
        lstCmpMemberStatusValue.add('Registered - Denied');
        lstCmpMemberStatusValue.add('Registered - Canceled');
        lstCmpMemberStatusValue.add('Registered - Elevated');
        lstCmpMemberStatusValue.add('Registered - Confirmed');
        lstCmpMemberStatusValue.add('Registered - Qualifying');
    
        Set<Id> cmpIds = new Set<Id>();
        Map<Id,Integer> mapCampMemberStatusCount = new map<id,Integer>();
        
        for(Campaign cmp : CampaignRecords){
            cmpIds.add(cmp.Id);
        }
    
        if(cmpIds.size()>0){
            setCampMemberStatusCount(cmpIds);
        }
    
        for(Campaign cmp : CampaignRecords){      
            //*if(cmp.Type !=null && GoogleSyncTypes__c.getInstance(cmp.Type) != null )
            
            Map<String,CampaignMemberStatus> stValus = mapCampMemberStatus.get(cmp.Id);
            Integer sortNumber = 0;
            if(!mapCampMemberStatusCount.isEmpty() && mapCampMemberStatusCount.containsKey(cmp.Id))
            {
                sortNumber = mapCampMemberStatusCount.get(cmp.Id);
            }
            for(String newStatusValue : lstCmpMemberStatusValue){
                if(stValus != null){
                    if(!stValus.containsKey(newStatusValue)){
                        sortNumber++;
                        Boolean def=false;
                        Boolean res=false;
                        if(newStatusValue=='Responded'){
                            def = true;
                            res = true;
                            lstCmpMemberStatus.add(new CampaignMemberStatus(Label=newStatusValue,SortOrder=sortNumber,CampaignId=cmp.Id,HasResponded=def,IsDefault=res));                            
                        }
                        
                    }
                    else if(stValus.containsKey(newStatusValue)){
                        CampaignMemberStatus testCamp = stValus.get(newStatusValue);
                        if(testCamp.Label=='Responded'){
                            testCamp.HasResponded = true;
                            testCamp.IsDefault = true;
                            lstCmpMemberStatus.add(testCamp);
                        }
                    }
                }
            }       
        }
    
        System.debug('###### before upsert'+lstCmpMemberStatus);
        if(lstCmpMemberStatus.size() > 0){
            upsert lstCmpMemberStatus;
            System.debug('###### after upsert');
        }
    }    
          
    Public void setCampMemberStatusCount(Set<Id> cmpId){
        List<CampaignMemberStatus> lstCampStatus = [select id,CampaignId,Label from CampaignMemberStatus where CampaignId in:cmpId];
        System.debug('#### cmp size = '+lstCampStatus.size());
        Boolean flag = true;
        String campaignId;
        if(lstCampStatus != null && lstCampStatus.size()>0){
            CampaignMemberStatus testCmp = new CampaignMemberStatus();
            for(CampaignMemberStatus cmpStatus : lstCampStatus){
                if(mapCampMemberStatusCount.containsKey(cmpStatus.CampaignId)){
                    statusValue.put(cmpStatus.Label,cmpStatus);
                    campaignId = cmpStatus.CampaignId;
                    mapCampMemberStatusCount.put(cmpStatus.CampaignId,mapCampMemberStatusCount.get(cmpStatus.CampaignId)+1);
                }
                else{                    
                    if(!flag){
                        mapCampMemberStatus.put(campaignId,statusValue);
                    }
                    statusValue = new Map<String,CampaignMemberStatus>();
                    campaignId = cmpStatus.CampaignId;
                
                    statusValue.put(cmpStatus.Label,cmpStatus);
                    flag = false;
                    mapCampMemberStatusCount.put(cmpStatus.CampaignId,1);
                }
                
                if(statusValue != null && statusValue.size()>0){
                    mapCampMemberStatus.put(campaignId,statusValue);
                }
            }
            System.debug('### mapCampMemberStatusCount size = '+ mapCampMemberStatusCount.size());
        }
        else{
            for(Id cmpgnId : cmpId){
                statusValue = new Map<String,CampaignMemberStatus>();
                mapCampMemberStatus.put(cmpgnId,statusValue);
                mapCampMemberStatusCount.put(cmpgnId,0);
            }
        }
        //}
    }
}