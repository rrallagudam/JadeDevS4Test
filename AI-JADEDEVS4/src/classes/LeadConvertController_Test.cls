/**@@
#APEX CLASS NAME       :   LeadConvertController_Test
#DESCRIPTION           :   This is test class for LeadConvertController Apex class.
@@**/
@isTest
public class LeadConvertController_Test {
    
    Static List<Account> accList;
    Static List<Lead> lstLead;
    Static List<Contact> lstCon;
    Static List<User> lstUser;
    
    /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        
        
        List<User> ListUser = DataFactory.insertRunAsUser();
        
        System.runAs(ListUser[0]) {
            //DataFactory.insertCustomSetting();
        
        // Create Test Lead records
        lstLead = DataFactory.createLeadTestRecords('Test', 5);       
        
        //Insert acount
        accList = DataFactory.createAccountTestRecords('testaccountcompany',2);
        
        lstCon = DataFactory.createContactTestRecords('Test', accList[1].id, 1);
        //accList[0].Partner_Contact__c = lstCon[0].id;
        Profile portalProfile = [SELECT Id FROM Profile where Name=:'Partner Community User - Partner'];
        
        lstUser = DataFactory.insertPortalUser(lstCon[0].id);
        lstUser[0].ProfileId = portalProfile.Id;
        update lstUser;
      
        }
    }
    /**@@
    #DESCRIPTION     : This testMethod covers all the methods of LeadConvertController Apex class.
    #Paramaters      : None
    @@**/
    @isTest
    static void testMethodData() {
        
        user partnerUserObj = [Select id from user where profile.Name = 'Partner Community User - Partner' LIMIT 1];
        
        LeadConvertController.InitFieldsResponse lc = new LeadConvertController.InitFieldsResponse();
        
        lc = LeadConvertController.initFields();
        
       List<Lead> leadList = [Select id from lead limit 2];
       leadList[0].ownerId = partnerUserObj.id;
       leadList[1].ownerId = partnerUserObj.id;
       leadList[1].MDF_Sourced_Lead__c = 'Yes';
       leadList[1].Partner_Referal_Follow_Up__c = 'Partner';
       leadList[0].MDF_Sourced_Lead__c = 'Yes';
       leadList[0].Partner_Referal_Follow_Up__c = 'Partner';
       update leadList;
        
        //Get the test Account records by using a SOQL query
        List<Account> accObjList = [SELECT Id FROM Account LIMIT 2];
        accObjList[0].ownerId = partnerUserObj.id;
        //accObjList[1].ownerId = partnerUserObj.id;
        update accObjList;
        
        //LeadConvertController lcObj =new LeadConvertController();
        lead ld =LeadConvertController.fetchLeadDetail(leadList[0].id);
        
        Account acc =LeadConvertController.getAccount(accObjList[0].id);
        
        
        opportunity opp = new opportunity(Type = 'New',CloseDate = system.today() ,
                                          Likely__c= 123,ERP_System__c='Test ERP',HR_System__c='Test HR',
                                          CRM_System__c='Test CRM',Fiscal_Year_End__c = 'Jan',Budgeted_Project__c='Yes',
                                          Time_Frame__c= '1 -3 Months',Reason_for_change_Pain_Points__c='',MDF_Sourced_Lead__c='Yes',
                                          MDF_Approval_Number__c='12345',Referral_Follow_Up__c='Partner',
                                          Solution_Requirements__c = 'Dashboards', NextStep ='Test Next Step');
        
        boolean idp = LeadConvertController.ConvertLeadAction(True, True, opp, accObjList[0], leadList[0].id);
        boolean idp1 = LeadConvertController.ConvertLeadAction(True, false, opp, accObjList[1], leadList[1].id);
         
        
        }
}