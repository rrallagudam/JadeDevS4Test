/*********************************
 * Class Name: OpportunitySharingForPartners
 * Author: Jade Global Inc.
 * Date: 13th July 2017
 * Purpose: This class will impose all the sharing settings for Opportunities.
 *          This class will insert the records in OpportunityShare object to open the access of the records for particular partner.
 * *******************************/

public without sharing class OpportunitySharingForPartners {    
    
    //Static set to avoid recursion on same Opportunity
    public static set<Id> ProcessedOpptyIdsSet = new set<Id>();
    public static boolean IsOpportunityShareExecuted = FALSE;
    
    public static void insertOpportunityShare(list<Opportunity> listOpportunities, map<id,Opportunity> oldMap){
        
        if(/*IsOpportunityShareExecuted == FALSE*/ LeadConvertController.IsSharedFromLeadConversion == FALSE){
            
            //IsOpportunityShareExecuted = TRUE;
            
            list<OpportunityShare> listOpportunitySharesToBeInserted = new list<OpportunityShare>();
            set<Id> setContactIds = new set<Id>();
            set<Id> setOpportunityIds = new set<Id>();
            map<Id,Id> MapContactIdAndUserId = new map<id,id>();
            map<id,Opportunity> MapOppIdAndOpportunity = new map<id,Opportunity>();
            
            for(Opportunity opp: listOpportunities){          
                // DO NOT RUN FOR INSTALLMENT OPPORTUNITY
                if(opp.Is_Installment_Opportunity__c == false &&  opp.Has_Installments__c == false) {
                    if(Trigger.isInsert){
                        if(opp.Partner_Contact__c != null){
                            setContactIds.add(opp.Partner_Contact__c);   
                        }//End of IF
                    }
                    if(!MapOppIdAndOpportunity.ContainsKey(opp.id)){
                        MapOppIdAndOpportunity.put(opp.id,opp);
                    }//End of IF
              
                    if(Trigger.isUpdate){
                        if(opp.Partner_Contact__c != OldMap.get(opp.id).Partner_Contact__c){
                            setOpportunityIds.add(opp.id);
                            setContactIds.add(opp.Partner_Contact__c);
                        }
                    }//End of isUpdate()
                }//End of IF
            }//End of FOR

            //DELETION of existing OpportunityShare Records for Opportunity present in the system [Opportunity's Primary Contact Change/Update Scenario]
            if(!setOpportunityIds.isEmpty()){
                Map<Id,OpportunityShare> MapShare = new Map<id,OpportunityShare>([SELECT id,OpportunityId,UserOrGroupId,RowCause FROM OpportunityShare WHERE OpportunityId IN: setOpportunityIds]);

                if(!MapShare.isEmpty()){
                    for(OpportunityShare op: MapShare.values()){
                        Opportunity OpptyRec = MapOppIdAndOpportunity.get(op.OpportunityId);
                        if(op.UserOrGroupId == OpptyRec.ownerId || string.valueof(op.UserOrGroupId).startswith('00G') || op.RowCause == 'Team' || op.RowCause == 'ImplicitChild'){
                            MapShare.remove(op.Id);
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
                system.debug('listOpportunities>>'+listOpportunities);
                //Logic to INSERT the records in OpportunityShare object
                for(Opportunity o : listOpportunities){
                    
                    if(!MapContactIdAndUserId.isEmpty() && MapContactIdAndUserId.containsKey(o.Partner_Contact__c) && o.Partner_Contact__c != null){
                        OpportunityShare OppShare = new OpportunityShare();
                        OppShare.OpportunityId = o.id;
                        OppShare.UserOrGroupId = MapContactIdAndUserId.get(o.Partner_Contact__c);
                        OppShare.OpportunityAccessLevel = 'Read';
                        OppShare.RowCause = 'Manual';
                        
                        //Allowing only 1 record per opportunity to avoid Duplicate Opportunity Share Records for the same Opportunity and Partner Contact
                        if(!ProcessedOpptyIdsSet.contains(o.id)){
                            ProcessedOpptyIdsSet.add(o.id);
                            listOpportunitySharesToBeInserted.add(OppShare);
                        }//End of IF
                        
                    }//End of IF
                }//End of FOR         
            }//End of IF
            if(!listOpportunitySharesToBeInserted.isEmpty() && listOpportunitySharesToBeInserted.size() > 0){
                try{
                    
                    system.debug('#################'+listOpportunitySharesToBeInserted);
                    INSERT listOpportunitySharesToBeInserted;
                    system.debug('IsOpportunityShareExecuted >>>'+IsOpportunityShareExecuted );
                  
                }//End of try
                Catch(Exception ex){
                    system.debug('!!!!!!!!!!!!'+ex.getMessage());
                    ExceptionHandlingEmail.sendEmailonException(ex);
                }
            }//End of IF
            
        }//End of IF for Boolean check
        
    }//End of method insertOpportunityShare()
    
}//End of class OpportunitySharingForPartners