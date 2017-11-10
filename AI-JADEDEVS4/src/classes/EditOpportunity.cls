/**@@
#CLASS NAME    :  EditOpportunity
#DESCRIPTION   :  This is a apex controller class for 'EditOpportunity' lightning component.
@@**/
public class EditOpportunity {
      
/**@@
#DESCRIPTION    : This method is used to fetch opportunity detail
#Paramaters     :  Id
@@**/
    public static boolean success;
    @AuraEnabled
    public static Opportunity fetchOpportunityDetail(Id opportunityId) {
        
        return ([Select id,Likely__c,CloseDate,StageName,Type from Opportunity Where id =: opportunityId]);
        
    }//End of fetchOpportunityDetail
    
/**@@
#DESCRIPTION    : This method is used to update the opportunity CloseDate and Likely ARR using Lightning Component
#Paramaters     :  Opportunity ID, OpportunityObject
@@**/    
     @AuraEnabled
    public static Boolean saveOpportunityDetail(Id oppid,Opportunity opp){
      
      List<Opportunity> oppToSave= [Select id,Likely__c,CloseDate from Opportunity Where id =: oppid];
      List<Opportunity> oppToUpdate;
      for(Opportunity oppObj :oppToSave)
      {
          oppObj.Likely__c = opp.Likely__c;
          oppObj.CloseDate = opp.CloseDate;
      }//End of For 
        try{
            //update oppToSave;
            updateOpportunityField objupdateOpp = new updateOpportunityField();
            objupdateOpp.updateOpportunity(oppToSave);
        Success =true;
        }
       Catch(Exception ex)
       {
            ExceptionHandlingEmail.sendEmailonException(ex);
            Success =false;
       }
        return Success;
    }//End of saveOpportunityDetail
    
    /**@@
    #DESCRIPTION    : This With out sharing Class is used to share registere Opportunity, Account and Contact with Partner
    @@**/ 
    public without sharing class updateOpportunityField{                
         public void updateOpportunity(List<Opportunity> opp){             
             try{
                 update opp; }catch (Exception ex){
             
             }
         }
     }
}//End of Class