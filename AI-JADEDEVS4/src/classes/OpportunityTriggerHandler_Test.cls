/**@@
#APEX CLASS     : OpportunityTriggerHandler_Test
#DESCRIPTION    : This test class is written for OpportunityTriggerHandler Apex class.
@@**/

@IsTest
public class OpportunityTriggerHandler_Test{
    
     /**@@
    #DESCRIPTION     : Creating test records
    #Paramaters      : None
    @@**/
    @testSetup static void setup() {
        //Insert custom settings
        DataFactory.insertCustomSetting();
    }
    
    
    /**@@
    #DESCRIPTION     :  This is test class method is creating test data old Method of OpportunityTriggerHandler
    #Paramaters      :  void
    @@*
     public static testMethod void Test1(){
        Test.startTest();
        
        List<user> u1=DataFactory.createUserTestRecords('test user1',1);
        List<Account> oacc = DataFactory.createAccountTestRecords('Test Account', 1);
        List<Contact> ocon = DataFactory.createContactTestRecords('Test contact',oacc[0].ID ,1);
        oacc[0].NAICScode='01238';
        oacc[0].OwnerID = u1[0].ID;
        oacc[0].Account_CSM__c = u1[0].ID;
        
        update oacc;
        
        // negative testing
        oacc[0].NAICScode='4501238';     
        
        list<Opportunity> lstOpp=DataFactory.createOpportunityTestRecords('Test',1);
        
        list<Opportunity>  lstOpp1= DataFactory.createOpportunityTestRecords('test',1); 
        lstOpp1[0].StageName = CustomConstants.OpportunityStageCW;
        lstOpp1[0].NextStep = 'Change';
        lstOpp1[0].AccountId = oacc[0].id;
        update lstOpp1;
        
        map<Id,Opportunity> newMap = new map<Id,Opportunity>();
        newMap.put(lstOpp1[0].Id,lstOpp1[0]);
        map<Id,Opportunity> oldMap = new map<Id,Opportunity>();
        oldMap.put(lstOpp1[0].Id,lstOpp[0]);
        
        //Trigger_Opportunity_Helper.onAfterInsertUpdate(newMap, oldMap,false);
        
        lstOpp[0].OwnerID = [SELECT ID FROM User WHERE isActive =: true AND Profile.Name =: 'System Administrator' AND ID !=: userinfo.getUserID() LIMIT 1 ].ID;
        lstOpp[0].Primary_Contact__c = ocon[0].ID;         
        lstOpp[0].StageName = CustomConstants.OpportunityStageCW;
        lstOpp[0].Closed_Reasons__c = 'closed won';
        lstOpp[0].Reason_Won_Lost__c = 'Cost';
        lstOpp[0].NextStep = 'Test 1';   //IT-111
     //   update lstOpp[0];         
        Trigger_Opportunity_Helper oppHandler = new Trigger_Opportunity_Helper();
        
        Test.stopTest();
    }
    /**@@
    #DESCRIPTION     :  This is test class method is creating test data old Method of OpportunityTriggerHandler
    #Paramaters      :  void
    @@**/
    public static testMethod void Test2(){ 
        Test.startTest();
        
        //Insert custom settings
        DataFactory.insertCustomSetting();
        
        ID pricebookId = Test.getStandardPricebookId();   
        
        //Insert account record
        List<Account> oacc =DataFactory.createAccountTestRecords('Test Account', 1);
        system.assertEquals(oacc.size(), 1);
        
        //Insert Contact record
        List<Contact> ocon= DataFactory.createContactTestRecords('LName', oacc[0].id, 1);
        system.assertEquals(ocon.size(), 1);
        
        //Insert Opportunity record
        List<opportunity> oppListProspect = DataFactory.createOpportunityTestRecords('Test Prospecting' , 1);
        oppListProspect[0].Type = 'New';
        oppListProspect[0].StageName = CustomConstants.OpportunityStageSentToOrders;
        update oppListProspect;
        
        Test.stopTest();
        
        system.assertEquals(oppListProspect[0].StageName, CustomConstants.OpportunityStageSentToOrders);
        
        //Insert Opportunity record
        List<opportunity> oppListRenewal = DataFactory.createOpportunityTestRecords('test Renewal', 1);
        oppListRenewal[0].StageName = 'Renewal';
        
        update oppListRenewal;
        
        
    } 
    
     /**@@
    #DESCRIPTION     :  This is test class method for setContactLifecycle Method of OpportunityTriggerHandler
    #Paramaters      :  void
    @@**/
  public static testMethod void setContactLifecycle_Test(){
        
        //Insert custom settings
        DataFactory.insertCustomSetting();
        
        //Insert account record
        List<Account> oacc =DataFactory.createAccountTestRecords('Test Account', 1);
        oacc[0].Type= CustomConstants.AccountTypeCustomerProspect;
        update oacc;
        system.assertEquals(oacc.size(), 1);
        
        //Insert Contact record related to above account
        List<Contact> ocon= DataFactory.createContactTestRecords('LName', oacc[0].id, 2);
        system.assertEquals(ocon.size(), 2);
        
        Test.startTest();
        
        //Insert opportnity record
        List<Opportunity> oppoList= DataFactory.createOpportunityTestRecords('Test Opportunity',1);
        oppoList[0].AccountId = oacc[0].id;
        update oppoList;
        
        Test.stopTest();
        
        //updating opportunity stage to Prospect
        oppoList[0].StageName=CustomConstants.OpportunityStageSDRNur; 
        update oppoList;
        
        //Assert check: Conatct Lifecycle update based on Opportunity stage changed
        list<contact> conList1 = [select id,Lifecycle_Stage__c from contact where Accountid =: oppoList[0].Accountid];
        system.assertEquals(conList1[0].Lifecycle_Stage__c, CustomConstants.LifecycleSQL);
        system.assertEquals(conList1[1].Lifecycle_Stage__c, CustomConstants.LifecycleSQL);
        
        //updating opportunity stage to SAO
        oppoList[0].StageName=CustomConstants.OpportunityStageSAO; 
        update oppoList;
        
        //Assert check: Conatct Lifecycle update based on Opportunity stage changed
        list<contact> conLst = [select id,Lifecycle_Stage__c from contact where Accountid =: oppoList[0].Accountid];
        system.assertEquals(conLst[0].Lifecycle_Stage__c, CustomConstants.LifecycleSAO);
        system.assertEquals(conLst[1].Lifecycle_Stage__c, CustomConstants.LifecycleSAO);
        
        //updating opportunity stage to SDR Nurture
        oppoList[0].StageName = CustomConstants.OpportunityStageSDRNur; 
        update oppoList;
       
       
        
        //Assert check: Conatct Lifecycle update based on Opportunity stage changed
        list<contact> conLst1 = [select id,Lifecycle_Stage__c from contact where Accountid =: oppoList[0].Accountid];
        system.assertEquals(conLst1[0].Lifecycle_Stage__c, CustomConstants.LifecycleSQL);
        system.assertEquals(conLst1[1].Lifecycle_Stage__c, CustomConstants.LifecycleSQL);
        
        
        
        }//End of setContactLifecycle_Test test method
    
    
public static testMethod void setContactLifecycle_Test2(){
        
        //Insert custom settings
        DataFactory.insertCustomSetting();
        
        //Insert account record
        List<Account> oacc =DataFactory.createAccountTestRecords('Test Account', 1);
        oacc[0].Type= CustomConstants.AccountTypeCustomerProspect;
        update oacc;
        system.assertEquals(oacc.size(), 1);
        
        //Insert Contact record related to above account
        List<Contact> ocon= DataFactory.createContactTestRecords('LName', oacc[0].id, 2);
        system.assertEquals(ocon.size(), 2);
        Test.startTest();
        
        //Insert opportnity record
        List<Opportunity> oppoList= DataFactory.createOpportunityTestRecords('Test Opportunity',1);
        oppoList[0].AccountId = oacc[0].id;
        update oppoList;
        
        oppoList[0].StageName = CustomConstants.OpportunityStageFieldNur;
        update oppoList;
         Test.stopTest();
        
        //Assert check: Conatct Lifecycle update based on Opportunity stage changed
        list<contact> conLst3 = [select id,Lifecycle_Stage__c from contact where Accountid =: oppoList[0].Accountid];
        system.assertEquals(conLst3[0].Lifecycle_Stage__c, CustomConstants.LifecycleSQO);
        
        oppoList[0].StageName = CustomConstants.OpportunityStageProspect;
        update oppoList;
        
        //Assert check: Conatct Lifecycle update based on Opportunity stage changed
        list<contact> conLst8 = [select id,Lifecycle_Stage__c from contact where Accountid =: oppoList[0].Accountid];
        system.assertEquals(conLst8[0].Lifecycle_Stage__c, CustomConstants.LifecycleSQL);
        
        oppoList[0].StageName = CustomConstants.OpportunityStageCW;
        update oppoList;
        
        //Assert check: Conatct Lifecycle update based on Opportunity stage changed
        list<contact> conLst4 = [select id,Lifecycle_Stage__c from contact where Accountid =: oppoList[0].Accountid];
        system.assertEquals(conLst4[0].Lifecycle_Stage__c, CustomConstants.AccountTypeCustomer);
        
        //updating opportunity stage to Disqualified
        /*oppoList[0].StageName = CustomConstants.OpportunityStageDisq;
        update oppoList;
  
        //Assert check: Conatct Lifecycle and status update based on Opportunity stage changed
        list<contact> conLst2 = [select id,Status__c,Lifecycle_Stage__c,Unqualified_Reason__c from contact where Accountid =: oppoList[0].Accountid];
        system.assertEquals(conLst2[0].Lifecycle_Stage__c, CustomConstants.LifecycleMAL);
        system.assertEquals(conLst2[0].Status__c,CustomConstants.ContactStatusUnqualified);
        system.assertEquals(conLst2[0].Unqualified_Reason__c, 'No Interest');
        system.assertEquals(conLst2[1].Lifecycle_Stage__c, CustomConstants.LifecycleMAL);
        system.assertEquals(conLst2[1].Status__c,CustomConstants.ContactStatusUnqualified); */
  }
    
      public static testmethod void reassignOwnerOnOppConditions_Test(){
        
        //Insert custom settings
        DataFactory.insertCustomSetting();
        
        //Insert user record
        List<user> userList = Datafactory.createUserTestRecords('TestUserLast', 3);
        
        //Insert account record
        List<Account> accList = DataFactory.createAccountTestRecords('Test Account', 1);     
        
        //Insert Contact record related to above account
        List<Contact> conList = DataFactory.createContactTestRecords('LName', accList[0].id, 2);
        conList[0].ownerId =userList[0].id;
        update conList;
        
        Test.startTest();
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('OppName', 1);
        oppList[0].AccountId = accList[0].id;
        oppList[0].OwnerId = userList[1].id;
        oppList[0].StageName = 'Signed';
        oppList[0].SDR_Owners__c = userList[2].id;
        update oppList;
        
        Test.stopTest();
        
        oppList[0].StageName = 'Prospect';
        update oppList;
        
        List<Contact> conAssert = [select id, ownerid from contact where id IN:conList]; 
        List<Opportunity> oppAssert = [select id, OwnerId, SDR_Owners__c  from Opportunity where Id IN:oppList];
        
        System.assertEquals(conAssert[0].ownerid,oppAssert[0].OwnerId);
        
        oppList[0].StageName = 'Disqualified';
        update oppList;
        List<Contact> conAssert1 = [select id, ownerid from contact where id IN:conList]; 
        System.assertEquals(conAssert1[0].ownerId, oppAssert[0].SDR_Owners__c);
    } 
    
public static testmethod void SDROwner_test(){
        //Insert custom settings
        DataFactory.insertCustomSetting();
        
        //Insert user record
        List<user> userList = Datafactory.createUserTestRecords('TestUserLast', 2);
        
        //Insert account record
        List<Account> accList = DataFactory.createAccountTestRecords('Test Account', 1);     
        System.debug('**accList**'+accList);
        
        //Insert contacts
        List<Contact> conList = DataFactory.createContactTestRecords('LName', accList[0].id, 2);
        conList[0].ownerId =userList[0].id;
        update conList;
        
        Test.startTest();
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('OppName', 1);
        oppList[0].AccountId = accList[0].id;
        oppList[0].SDR_Owners__c = userList[1].Id;
        update oppList;
        oppList[0].StageName = 'SDR Nurture';
        update oppList;
        
        Test.stopTest();    
        
        List<Contact> conAssert = [select id, ownerid from contact where id IN:conList]; 
        List<Opportunity> oppAssert = [select id, SDR_Owners__c from Opportunity where Id IN:oppList];
        System.assertEquals(conAssert[0].ownerId,oppAssert[0].SDR_Owners__c);
    } 
    
    /**@@
    #DESCRIPTION     :  This is test class method for OrderNotification Method of OpportunityTriggerHandler
    #Paramaters      :  void
    @@**/
   
  public static testmethod void TestOrderNotification(){
        Test.startTest();
        
        //Inserting custom settings
        DataFactory.insertCustomSetting();
        
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        system.assertEquals(accList.size(), 1);
        
        //Insert user record
        List<User> userList= DataFactory.createUserTestRecords('Test User', 1);
        system.assertEquals(userList.size(), 1);
        
        //Assert Check:  Before Order Notification send
        System.assertEquals(0, Limits.getEmailInvocations(),'no email sent');
        
        
        //Insert opportnity record
        List<Opportunity> oppoList= DataFactory.createOpportunityTestRecords('Test Opportunity', 1);
        Trigger_Opportunity_Helper.isOrderNotificationSent = false;
        oppoList[0].StageName='Sent to Orders';
       // oppoList[0].OwnerId=userList[0].id;
       // oppoList[0].AccountId=accList[0].id;
        update oppoList;
        
        //Assert Check: Opportunity Stage changed
        system.assertEquals(oppoList[0].StageName, 'Sent to Orders');
        
        //Assert Check: after Order Notification send when opportunity stage changed to Sent to Orders
        System.assertEquals(2, Limits.getEmailInvocations(),'Order Notification Send');
        
        Test.stopTest();
        
    }//End of TestOrderNotification test method   
    
    public static testmethod void TestNextStep(){
        //Inserting custom settings
        DataFactory.insertCustomSetting();
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        
        
        List<Opportunity> oppoList= DataFactory.createOpportunityTestRecords('Test Opportunity', 1);
        oppoList[0].Is_Installment_Opportunity__c = false;
        oppoList[0].Partner_Account__c = accList[0].id;
        oppoList[0].NextStep = 'Test Next Step opp';
        update oppoList;
        oppoList[0].NextStep = 'Test ahskd Next Step opp';
        update oppoList;
        
    }
    
    
    public static testmethod void TestClosedWonInstallmentOpp(){
        //Inserting custom settings
        DataFactory.insertCustomSetting();
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        
        
        List<Opportunity> oppoList= DataFactory.createOpportunityTestRecords('Test Opportunity', 1);

        oppoList[0].StageName = CustomConstants.OpportunityStageCWI;
        oppoList[0].NextStep = 'Change';
        oppoList[0].AccountId = accList[0].id;
        oppoList[0].Is_Installment_Opportunity__c = true;
        update oppoList;
        
    }
    /**@@
    #DESCRIPTION     : Method used to conver before insert of opportunity trigger handler method
    #Paramaters      : String, Integer.
    @@
    public static testmethod void TestsetDefaulutvaluesonOpp(){
        //Inserting custom settings
        DataFactory.insertCustomSetting();
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        
        
        List<Opportunity> oppoList= DataFactory.createOpportunityWithRenewedContract('Test Opportunity', 1);

        oppoList[0].StageName = CustomConstants.OpportunityStageCWI;
        oppoList[0].NextStep = 'Change';
        oppoList[0].AccountId = accList[0].id;
      //  oppoList[0].Is_Installment_Opportunity__c = true;
        update oppoList;
        
    }
    
    /**@@
    #DESCRIPTION     : Method used to conver Account Team member insertion logic during owner change
    #Paramaters      : String, Integer.
    @@**/    
    public static testmethod void TestaddAccountTemamember(){
        //Inserting custom settings
        DataFactory.insertCustomSetting();
        //Insert acount record
        List<Account> accList = DataFactory.createAccountTestRecords('TestAccount',1);
        List<user> u1=DataFactory.createUserTestRecords('test user1',1);
        
        accList[0].OwnerId = u1[0].Id;
        update accList;
        
        
        List<Opportunity> oppoList= DataFactory.createOpportunityWithRenewedContract('Test Opportunity', 1);
        
        // Check Account Team member added to OpportunityTeam
        List<OpportunityTeamMember> lstOppTeammember = [SELECT id from OpportunityTeamMember];
        system.assertEquals(lstOppTeammember.size(), 2);
    }
     public static testmethod void oppDelete_Test(){
         List<Opportunity> oppoList= DataFactory.createOpportunityTestRecords('Test Opportunity', 1);
         delete oppoList[0];
     }

}