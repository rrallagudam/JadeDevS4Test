/**@@
    #CLASS NAME                :    ContactTriggerHandler_Tests
    #DESCRIPTION                   :   Test class for "Trigger_Contact_Helper"   
@@**/
@IsTest
public with sharing class ContactTriggerHandler_Test {

    static List<User> uList;
    /**@@
        #DESCRIPTION                :    setup method for test records
        #PARAMETERS                   :   None 
    @@**/
    @TestSetup public static void setup(){
        //TestData.setup();
        
        uList = DataFactory.insertRunAsUser();
        UserRole portalRole = [Select Id From UserRole Where PortalType = 'None' Limit 1];
        uList[0].UserRoleId = portalRole.Id;
        update uList;
        
    }

   /**@@
        #DESCRIPTION                :     Populate the timestamp field based on Lifecycle
        #PARAMETERS                   :   None 
    @@**/
    public static testmethod void populateTimestampLifecycleTest(){
        Test.startTest();
            //Insert Custom setting
            DataFactory.insertCustomSetting();
        
            List<Account> accObjList = DataFactory.createAccountTestRecords('TestAcc',1);
            List<Contact> conList1 = DataFactory.createContactLifecycleTestRecords('ConTest1', accObjList[0].Id, 'MAL', 1);
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleMQL;
            update conList1;
            
            // Check Timestamp for MQL field of Contact --> Timestamp_Lifecycle_MQL__c
            List<Contact> con1 = [Select id, Timestamp_Lifecycle_MQL__c from contact where id IN:conList1];
            System.debug('**conList1**'+con1[0].Timestamp_Lifecycle_MQL__c);
            System.assert(con1[0].Timestamp_Lifecycle_MQL__c > System.now().addMinutes(-5));
            
            // Check Timestamp for MAL field of Contact --> Timestamp_Lifecycle_MAL__c
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleMAL;
            update conList1;        
            con1 = [Select id, Timestamp_Lifecycle_MAL__c from contact where id IN:conList1];
            System.assert(con1[0].Timestamp_Lifecycle_MAL__c > System.now().addMinutes(-5));
            
            // Check Timestamp for SAL field of Contact --> Timestamp_Lifecycle_SAL__c
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleSAL;
            update conList1;        
            con1 = [Select id, Timestamp_Lifecycle_SAL__c from contact where id IN:conList1];
            System.assert(con1[0].Timestamp_Lifecycle_SAL__c > System.now().addMinutes(-5));
            
            // Check Timestamp for SQL field of Contact --> Timestamp_Lifecycle_SQL__c
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleSQL;
            update conList1;        
            con1 = [Select id, Timestamp_Lifecycle_SQL__c from contact where id IN:conList1];
            System.assert(con1[0].Timestamp_Lifecycle_SQL__c > System.now().addMinutes(-5));
            
            // Check Timestamp for SQO field of Contact --> Timestamp_Lifecycle_SQO__c 
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleSQO;
            update conList1;        
            con1 = [Select id, Timestamp_Lifecycle_SQO__c, Timestamp_Lifecycle_SAO__c from contact where id IN:conList1];           
            System.assert(con1[0].Timestamp_Lifecycle_SQO__c > System.now().addMinutes(-5));
            
            // Check Timestamp for SAO field of Contact --> Timestamp_Lifecycle_SAO__c
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleSAO;
            update conList1;        
            con1 = [Select id, Timestamp_Lifecycle_SAO__c from contact where id IN:conList1];
            System.assert(con1[0].Timestamp_Lifecycle_SAO__c > System.now().addMinutes(-5));
            
            // Check Timestamp for SQO field of Contact --> Timestamp_Lifecycle_SQO__c
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleSQO;
            update conList1;        
            con1 = [Select id, Timestamp_Lifecycle_SQO__c from contact where id IN:conList1];           
            System.assert(con1[0].Timestamp_Lifecycle_SQO__c > System.now().addMinutes(-5));
            
            // Check Timestamp for Customer field of Contact --> Timestamp_Lifecycle_Customer__c
            conList1[0].Lifecycle_Stage__c =CustomConstants.LifecycleCustomer;
            update conList1;        
            con1 = [Select id, Timestamp_Lifecycle_Customer__c from contact where id IN:conList1];
            System.assert(con1[0].Timestamp_Lifecycle_Customer__c > System.now().addMinutes(-5));
            
            delete con1;
            undelete con1;
        Test.stopTest();
    }//End of method
    
    /**@@
        #DESCRIPTION                :   Test method to cover Contact Status Update 
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void contactStatusRestoredTest(){
        Test.startTest();
            //Insert Custom setting
            DataFactory.insertCustomSetting();
        
            List<Account> accObjList = DataFactory.createAccountTestRecords('TestAcc',1);
        
            List<Contact> conList1 = DataFactory.createContactLifecycleTestRecords('ConTest1', accObjList[0].Id, CustomConstants.LifecycleMAL, 1);
            conList1[0].Lifecycle_Stage__c = CustomConstants.LifecycleMAL;
            conList1[0].HubSpot_Lead_Score__c = 50;
            conList1[0].Eloqua_Lead_Score__c = 'C2';
            conList1[0].Status__c = CustomConstants.ContactStatusUnresponsive;
            update conList1;
            
            // Check Status field of Contact Changed to Restored --> Status__c
            List<Contact> con1 = [Select id, Status__c from contact where id IN:conList1];
            System.assertEquals(con1[0].Status__c,CustomConstants.ContactStatusRestored);
        Test.stopTest();
    }
    
    /**@@
        #DESCRIPTION                :   Test method to cover Contact Lifecycle Update
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void setContactLifecycleOnOpptyStageTest(){
       Test.startTest();
        
        //Insert Custom setting
        DataFactory.insertCustomSetting();
        
         
        
        List<Opportunity> oppList = DataFactory.createOpportunityTestRecords('Test', 1);
        
        // Test New Contact in Qualified for SQO oppty
        oppList[0].StageName = CustomConstants.OpportunityStageSQO;
        update oppList;
        
         
        
        List<Contact> conList1 = DataFactory.createContactTestRecords('Test',oppList[0].AccountId,1);
        conList1[0].Status__c = CustomConstants.ContactStatusNew;
        update conList1[0];
        conList1[0].Status__c = CustomConstants.ContactStatusQualified;
        update conList1[0];
        
        // Check Lifecycle_Stage field of Contact Changed to SQO --> Lifecycle_Stage__c
        Contact c = [SELECT Id, AccountId, Status__c, Lifecycle_Stage__c FROM Contact WHERE Id =: conList1[0].Id];        
        System.assertEquals(c.Lifecycle_Stage__c, CustomConstants.LifecycleSQL);
        
        // Test new contact in Qualified for Customer Account
        conList1[0].Status__c = CustomConstants.ContactStatusNew;
        update conList1[0];
        
        Account a = [SELECT Id, Type, Status__c FROM Account WHERE Id =: oppList[0].AccountId];
        a.Type = CustomConstants.AccountTypeCustomer;
        a.Status__c = 'Active';
        update a;
        
        conList1[0].Status__c = CustomConstants.ContactStatusQualified;
        update conList1[0];
        
        // Check Lifecycle_Stage field of Contact Changed to Customer --> Lifecycle_Stage__c
        c = [SELECT Id, AccountId, Status__c, Lifecycle_Stage__c FROM Contact WHERE Id =: conList1[0].Id];        
        System.assertEquals(c.Lifecycle_Stage__c, CustomConstants.LifecycleCustomer);
        
        Test.stopTest();
       
    }
    
    /**@@
        #DESCRIPTION                :   Test method to cover Contact Lifecycle Update
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void setContactLifecycleOnStatusChangeTest(){
        Test.startTest();
            //Insert Custom setting
            DataFactory.insertCustomSetting();
        
            List<Account> accObjList = DataFactory.createAccountTestRecords('TestAcc',1);
        
            List<Contact> conList1 = DataFactory.createContactLifecycleTestRecords('ConTest1', accObjList[0].Id, CustomConstants.LifecycleMAL, 1);
            conList1[0].Status__c = CustomConstants.ContactStatusPursuing;
            update conList1;
            
            // Check Lifecycle_Stage field of Contact Changed to SAL --> Lifecycle_Stage__c
            List<Contact> con1 = [Select id, Lifecycle_Stage__c from contact where id IN:conList1];
            System.assertEquals(con1[0].Lifecycle_Stage__c,CustomConstants.LifecycleSAL);
            
            conList1[0].Status__c = CustomConstants.ContactStatusRestored;
            update conList1;
            
            // Check Lifecycle_Stage field of Contact Changed to SAL --> Lifecycle_Stage__c
            con1 = [Select id, Lifecycle_Stage__c from contact where id IN:conList1];
            System.assertEquals(con1[0].Lifecycle_Stage__c,CustomConstants.LifecycleMQL);
            
            conList1[0].Status__c = CustomConstants.ContactStatusNew;
            update conList1;
            
            // Check Lifecycle_Stage field of Contact Changed to MQL --> Lifecycle_Stage__c
            con1 = [Select id, Lifecycle_Stage__c from contact where id IN:conList1];
            System.assertEquals(con1[0].Lifecycle_Stage__c,CustomConstants.LifecycleMQL);
            
            conList1[0].Status__c = CustomConstants.ContactStatusUnresponsive;
            update conList1;
            
            // Check Lifecycle_Stage field of Contact Changed to MAL --> Lifecycle_Stage__c
            con1 = [Select id, Lifecycle_Stage__c from contact where id IN:conList1];
            System.assertEquals(con1[0].Lifecycle_Stage__c,CustomConstants.LifecycleMAL);
            
            conList1[0].Update_Contact_from_Lead_Convert__c = 'YES';
            update conList1;
        Test.stopTest();
    }
    /**@@
        #DESCRIPTION                :   Test method to create Test Account
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void exceptionTest(){
        Account acc = DataFactory.createAccountForException();        
    } 
    
    /**@@
        #DESCRIPTION                :   Test method to create Test data and cover profile change function of contact trigger - Partner
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void ContactProfileChagePartner_Test(){
        Map<Id,Contact> contactMap;
        
        //Insert Custom setting
        DataFactory.insertCustomSetting();
        
        Test.startTest();
        
        List<Account> acclist = DataFactory.createAccountTestRecords('Test acc',1);
        List<Contact> conlist = DataFactory.createContactTestRecords('Contact test',acclist[0].id,1);
        
        conlist[0].Create_Portal_User__c = true;
        conlist[0].Phone = '1234567890';
        conlist[0].Portal_User_Profile__c ='Partner Prospect';
        update conlist;
        
        
        contactMap = new Map<Id,Contact>([Select id, Accountid, Portal_User_Profile__c from contact where Portal_User_Profile__c ='Partner Prospect']);
        system.assert(contactMap.values().size() > 0);
        if(!contactMap.isEmpty()){
            for(Contact con: contactMap.values()){
               con.Portal_User_Profile__c ='Partner';
            } 
            update contactMap.values();
        }        
        
        User objUser = [select id, Userroleid from User where email = 'standarduser@adaptiveinsights.com'];
        system.runAs(objUser){
            Account objAcc = new Account(id=contactMap.values()[0].Accountid);
            objAcc.Ownerid = objUser.id;
            update objAcc;
          }
        
        List<User> objPortalUser = [select id from User where ContactId IN: contactMap.keyset()];
        system.assert(objPortalUser.size() > 0);
        //Trigger_Contact_Helper.ProfileChange(contactMap.keyset());
             
        
        Test.StopTest();
    }
    
    /**@@
        #DESCRIPTION                :   Test method to cover profile change function of contact trigger - Partner Prospect
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void ContactProfileChagePartnerProspect_Test(){
        Map<Id,Contact> contactMap;
        Test.startTest();
        
        User objUser = [select id, Userroleid from User where email = 'standarduser@adaptiveinsights.com'];
        
        List<Account> acclist =  DataFactory.createAccountTestRecords('Test acc',1);
        
        List<Contact> conlist = DataFactory.createContactTestRecords('Contact test',acclist[0].id,1);
        conlist[0].Create_Portal_User__c = true;
        conlist[0].Phone = '1234567890';
        conlist[0].Portal_User_Profile__c ='Partner';
        conlist[0].Email ='test@gmail.com';
        system.runAs(objUser){
        	update conlist;
        }
        
        //Insert Custom setting
        DataFactory.insertCustomSetting();
        contactMap = new Map<Id,Contact>([Select id, AccountId, Portal_User_Profile__c from contact where Portal_User_Profile__c ='Partner']);
        system.assert(contactMap.values().size() > 0);
        
        
        //Trigger_Contact_Helper.ProfileChange(contactMap.keyset());  
        if(!contactMap.isEmpty()){
            for(Contact con: contactMap.values()){
               con.Portal_User_Profile__c ='Partner Prospect';
            } 
            update contactMap.values();
        }
        
        //User objUser = [select id, Userroleid from User where email = 'standarduser@adaptiveinsights.com'];
        System.debug('### objUser: '+objUser);
        system.runAs(objUser){
            Account objAcc = new Account(id=contactMap.values()[0].Accountid);
            objAcc.Ownerid = objUser.id;
            update objAcc;
                      
         //  DataFactory.insertPortalUser(contactMap.values()[0].id);
        }
        List<User> objPortalUser = [select id from User where ContactId IN: contactMap.keyset()];
        system.assert(objPortalUser.size() > 0);
        
        Trigger_Contact_Helper.ProfileChange(contactMap.keyset());
            
        Test.stopTest();
    }
    
    /**@@
        #DESCRIPTION                :   Test method to cover profile change function of contact trigger - Referral Partner
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void ContactProfileChageReferralPartner_Test(){
        Map<Id,Contact> contactMap;
        Test.startTest();
        
        List<Account> acclist = DataFactory.createAccountTestRecords('Test acc',1);
        List<Contact> conlist = DataFactory.createContactTestRecords('Contact test',acclist[0].id,2);
            
        conlist[0] .Create_Portal_User__c = true;
        conlist[0].Portal_User_Profile__c='Partner';
        conlist[0].Phone = '1234567890';
        update conlist;
        conlist[1].Create_Portal_User__c = true;
        conlist[0].Phone = '1234567890';
        conlist[1].Portal_User_Profile__c ='Referral Partner';
        update conlist;
        
        //Insert Custom setting
        DataFactory.insertCustomSetting();
        contactMap = new Map<Id,Contact>([Select id, AccountId, Portal_User_Profile__c from contact where Portal_User_Profile__c ='Partner']);
        system.assert(contactMap.values().size() > 0);
        
        Trigger_Contact_Helper.ProfileChange(contactMap.keyset());  
        if(!contactMap.isEmpty()){
            for(Contact con: contactMap.values()){
               con.Portal_User_Profile__c ='Referral Partner';
            } 
            update contactMap.values();
        }
        
        User objUser = [select id, Userroleid from User where email = 'standarduser@adaptiveinsights.com'];
        system.runAs(objUser){
            Account objAcc = new Account(id=contactMap.values()[0].Accountid);
            objAcc.Ownerid = objUser.id;
            update objAcc;
                      
            //DataFactory.insertPortalUser(contactMap.values()[0].id);
        }
        List<User> objPortalUser = [select id from User where ContactId IN: contactMap.keyset()];
        system.assert(objPortalUser.size() > 0);
        
        //Trigger_Contact_Helper.ProfileChange(contactMap.keyset());
            
        Test.stopTest();
    }
    
     /**@@
        #DESCRIPTION                :   Test method to cover UserCreation function of contact trigger helper
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void UserCreation_Test(){
        List<Account> acclist = Datafactory.createAccountTestRecords('Test acc',1);
        List<Contact> conlist = Datafactory.createContactTestRecords('Contact test',acclist[0].id,1);
        //Trigger_Contact_Helper.UserCreation(conlist);
    }
    
    /**@@
        #DESCRIPTION                :   Test method to cover UserCreation function of contact trigger helper
        #PARAMETERS                 :   None 
    @@**/
    public static testmethod void setEmailOptOut_Test() {
        DataFactory.insertCustomSetting();
        List<Account> accObjList = DataFactory.createAccountTestRecords('TestAcc',1);
        List<Contact> conList = DataFactory.createContactLifecycleTestRecords('ConTest1', accObjList[0].Id, 'MAL', 3);
        
        conList[0].HasOptedOutOfEmail = false;
        conList[1].HasOptedOutOfEmail = false;
        conList[2].HasOptedOutOfEmail = false;
                
        conList[0].Status__c = CustomConstants.ContactStatusUnqualified;
        conList[1].Status__c = CustomConstants.ContactStatusUnqualified;
        conList[2].Status__c = CustomConstants.ContactStatusUnqualified;
        
        conList[0].Unqualified_Reason__c = CustomConstants.ReasonNLWC;
        conList[1].Unqualified_Reason__c = CustomConstants.ReasonCompAlt;
        conList[2].Unqualified_Reason__c = 'No Interest';
        
        update conList;
        
        Set<Id> conIds = new Set<Id>();
        conIDs.add(conList[0].Id);
        conIDs.add(conList[1].Id);
        conIDs.add(conList[2].Id);
        
        List<Contact> conListUpdated = [SELECT Id, HasOptedOutOfEmail, Status__c, Unqualified_Reason__c FROM Contact WHERE Id IN :conIds];
        
        for(Contact c : conListUpdated)
        {
            if(conList[0].Id == c.Id)
            {
                system.debug('### c: '+c);
                System.assert(c.HasOptedOutOfEmail);
            }
            else if(conList[1].Id == c.Id)
            {
                system.debug('### c: '+c);
                System.assert(c.HasOptedOutOfEmail);
            }
            else if(conList[2].Id == c.Id)
            {
                system.debug('### c: '+c);
                System.assertEquals(c.HasOptedOutOfEmail, false);
            }
        }
        
    }
    
}//END OF CLASS