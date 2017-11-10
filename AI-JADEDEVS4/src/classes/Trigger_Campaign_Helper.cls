/**@@
#TRIGGER NAME          :    CampaignTrigger
#HANDLER CLASS NAME    :    Trigger_Campaign_Handler
#HELPER CLASS NAME     :    Trigger_Campaign_Helper
#TEST CLASS            :    Campaign_Trigger_Test
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the    appropriate logic.   
@@**/
public class Trigger_Campaign_Helper{

    //BELOW ARE THE MASTER/FINAL LISTS AND MAP TO BE USED FOR DML OPERATION

    public static Map<Id,Integer> mapCampMemberStatusCount;
    public static Map<String,CampaignMemberStatus> statusValue;
    public static Map<Id,Map<String,CampaignMemberStatus>> mapCampMemberStatus = new Map<Id,Map<String,CampaignMemberStatus>>();
    /**@@
        #DESCRIPTION   : Adding campaign member status on campaign
        #Paramaters        : trigger.new
    @@**/
    public static void AddCampaignMemberStatus (List<Campaign> newList){
        try{
            List<CampaignMemberStatus> lstCmpMemberStatus = new List<CampaignMemberStatus>();
    
            List<String> lstCmpMemberStatusValue = new List<String>();
            lstCmpMemberStatusValue.add(CustomConstants.CMstsSent);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsResp);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsRegAttend);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsRegNotAttend);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsNotRegAttend);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsNotRegDenied);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsRegCancelled);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsRegElevated);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsRegConfirmed);
            lstCmpMemberStatusValue.add(CustomConstants.CMstsRegQualifing);
            
            Set<ID> campaignIdSet = new Set<Id>();
    
            for(Campaign campaignObj :newList){
                campaignIdSet.add(campaignObj.Id);
            }
            mapCampMemberStatusCount = new Map<Id,Integer>();
            if(campaignIdSet.size()>0){
                setCampMemberStatusCount(campaignIdSet);
            }
    
            for(Campaign campaignObj :newList){
                //*if(campaignObj.Type !=null && GoogleSyncTypes__c.getInstance(campaignObj.Type) != null ){
                    Map<String,CampaignMemberStatus> stValus = mapCampMemberStatus.get(campaignObj.Id);
                    system.debug('@@@@@@@@@@stValus'+stValus);
                    if(mapCampMemberStatusCount.containskey(campaignObj.id)){
                        Integer sortNumber =  mapCampMemberStatusCount.get(campaignObj.Id);
                        for(String newStatusValue : lstCmpMemberStatusValue){
                            if(stValus != null){
                                if(!stValus.containsKey(newStatusValue)){
                                    sortNumber++;
                                    Boolean def=false;
                                    Boolean res=false;
                                    if(newStatusValue==CustomConstants.CMstsResp){
                                        def = true;
                                        res = true;
                                    }
                                    lstCmpMemberStatus.add(new CampaignMemberStatus(Label=newStatusValue,SortOrder=sortNumber,CampaignId=campaignObj.Id,HasResponded=def,IsDefault=res));
                                }
                                else if(stValus.containsKey(newStatusValue)){
                                    
                                    CampaignMemberStatus testCamp = stValus.get(newStatusValue);
                                    if(testCamp.Label==CustomConstants.CMstsResp){
                                        testCamp.HasResponded = true;
                                        testCamp.IsDefault = true;
                                        lstCmpMemberStatus.add(testCamp);
                                    }
                                }
                            }
                        }
                    }
                //}
            }
            System.debug('######lstCmpMemberStatus'+lstCmpMemberStatus);
            if(lstCmpMemberStatus.size() > 0){
                database.upsert(lstCmpMemberStatus, false);
                System.debug('###### after upsert');
            }
        }//Enf of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//end of AddCampaignMemberStatus method
 
     
    /**@@
        #DESCRIPTION   : Setting campaign Member status count
        #Paramaters        : Set
    @@**/
    private static void setCampMemberStatusCount(Set<Id> campaignObjIDs){
        Map<String,CampaignMemberStatus> mapCampaignMemberStatus = new Map<String,CampaignMemberStatus>();
        List<Campaign> lstCampaign = [select id, (select id,CampaignId,Label from CampaignMemberStatuses) from Campaign where Id in:campaignObjIDs];
        for(Campaign cmp: lstCampaign){
            mapCampaignMemberStatus = new Map<String,CampaignMemberStatus>();
            for(CampaignMemberStatus cmpStatus: cmp.CampaignMemberStatuses){
                mapCampaignMemberStatus.Put(cmpStatus.Label, cmpStatus);
            }
            if(!cmp.CampaignMemberStatuses.isEmpty()){
                mapCampMemberStatusCount.Put(cmp.Id, cmp.CampaignMemberStatuses.size());
            }
            system.debug('$$$$$$$$$$$$$$$$'+mapCampaignMemberStatus);
            mapCampMemberStatus.Put(cmp.Id, mapCampaignMemberStatus);
        }
    }//End of setCampMemberStatusCount method
}//End of class