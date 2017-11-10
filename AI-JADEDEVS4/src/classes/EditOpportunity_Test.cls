/**@@
#APEX CLASS NAME       :   EditOpportunity_Test
#DESCRIPTION           :   This is test class for EditOpportunity Apex class.
@@**/
@isTest
public class EditOpportunity_Test {
   /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        //inserting customsettings
     	 DataFactory.insertCustomSetting();
        
        //inserting opportunity test record
        DataFactory.createOpportunityTestRecords('test opp', 1);
        }//End of testSetup
     

    /**@@
    #DESCRIPTION     : This testMethod covers all the methods of update the opportunity 
    #Paramaters      : None
    @@**/

   
   static testmethod  void  testMethodData() {
        
        List<Opportunity> oppList =[SELECT id, CloseDate,Likely__c FROM Opportunity limit 1];
        EditOpportunity.fetchOpportunityDetail(oppList[0].id);
       
        oppList[0].CloseDate = System.today();
        oppList[0].Likely__c = 12;
        update oppList; 
       
		EditOpportunity.saveOpportunityDetail(oppList[0].id, oppList[0]);   
       system.assertEquals(oppList[0].CloseDate,System.today() );
       System.assertEquals(oppList[0].Likely__c,12 );
       }//End of testMethodData
}//End of class