/**
 * trac_OpportunityProductControllerTest
 * @description Unit test for class for trac_OpportunityProductController class
 * @author Thomas Diego Prananta, Traction on Demand
 * @date Sept 14, 2016
 */
@isTest(seeAllData = false)
private class trac_ActivityHelperTest {
    static final String CONTACT_FIRST_NAME_TEMPLATE = 'Test';
    private static final String TEST_EMAIL_ADDRESS = 'test@testdomain.com';



    @TestSetup static void init() {
        List<Opportunity> oppList = new List<Opportunity>();
        List<Contact> newContacts = new List<Contact>();
        for(Integer index = 0; index <=205; index++) {
            newContacts.add( new Contact( 
                FirstName = CONTACT_FIRST_NAME_TEMPLATE,
                LastName =  index.Format(),
                Reopen__c = false));
        }
        
        insert newContacts;

        Profile profileId = [
        SELECT Id 
        FROM Profile 
        WHERE Name = 'System Administrator' 
        LIMIT 1];

        User tractionOnDemand = new User (
            profileId = profileId.id,
            alias='Traction',
            email='tractionondemand@adaptiveinsights.com',
            username='tractionondemand@test.com',
            emailencodingkey='UTF-8',
            lastname='Demand',
            firstname='Traction',
            languagelocalekey='en_US',
            localesidkey='en_US',
            isActive=true,
            TimeZoneSidKey = 'America/Los_Angeles');

        Boolean val = false;
        Account a = new Account(RecordTypeId=TestDataFactoryHelper.getAccountRecordType('Prospect'), Name='Traction On Demand',
        CurrencyIsoCode = 'USD', Tier1__c ='T1', ByPass_CSM_Rules__c= val, Type='Customer Prospect', BillingCountry='XX',
        BillingState='XX', AnnualRevenue =0 , Account_CSM__c='00561000001Y3c3AAC');

        Contact c = new Contact(RecordTypeId=TestDataFactoryHelper.getContactRecordType('Prospect'),
         LastName='Chow', Phone='6043235656', Account = a, Email = TEST_EMAIL_ADDRESS, Status__c ='New');


        insert a;
        insert c;

        Account a1 = [
        SELECT ByPass_CSM_Rules__c, Tier1__c
        FROM Account WHERE ID=: a.ID
        LIMIT 1];

        //Creating three opportunities for testing
        Opportunity opp1 = new Opportunity(RecordTypeId = TestDataFactoryHelper.getOpportunityRecordType('Prospect'), Name='Test 1',
        AccountId = a.Id, Primary_Contact__c= c.Id, CloseDate = date.newInstance(2016,10,14), Order_Type__c ='New',
        StageName ='Closed Won', CurrencyIsoCode='USD', Probability=0.0, Quote_ARR__c =0.0, Partner_Account__c = a.id );
        oppList.add(opp1);
        Opportunity opp2 = new Opportunity(RecordTypeId = TestDataFactoryHelper.getOpportunityRecordType('Prospect'), Name='Test 2',
        AccountId = a.Id, Primary_Contact__c= c.Id, CloseDate = date.newInstance(2016,10,14), Order_Type__c ='New',
        StageName ='Prospect', CurrencyIsoCode='USD', Probability=0.0, Quote_ARR__c =0.0, Partner_Account__c = a.id );
        oppList.add(opp2);
        Opportunity opp3 = new Opportunity(RecordTypeId = TestDataFactoryHelper.getOpportunityRecordType('Prospect'), Name='Test 3',
        AccountId = a.Id, Primary_Contact__c= c.Id, CloseDate = date.newInstance(2016,10,14), Order_Type__c ='New',
        StageName ='Prospect', CurrencyIsoCode='USD', Probability=0.0, Quote_ARR__c =0.0, Partner_Account__c = a.id);
        oppList.add(opp3);
        
        insert oppList;

        insert tractionondemand;


    }

    //Helper method to get ONE contact with Last Name = 'CtLastName' 
    private static Contact[] getContacts(String[] lastNames) {
        Contact[] testContact = 
        [
            SELECT Id, FirstName, LastName, Reopen__c
            FROM Contact
            WHERE ( 
                FirstName = :CONTACT_FIRST_NAME_TEMPLATE AND 
                LastName IN :LastNames  
            )
            LIMIT 200
        ];

        System.assert(
            false == testContact.isEmpty(),
            'Expected at least one Test Contact to be returned.' 
            );

        return testContact;
    }

    //Helper method to get the user with alias 'Traction'  
    private static User getUserTraction() {
        User[] traction = 
        [
            SELECT Id, alias
            FROM User
            WHERE alias = 'Traction'
        ];
        System.assert
        (
            false == traction.isEmpty(),
            'Expected to get the user \"Traction\"' 
        );
        return traction[0];
    }
    
    // Test 1: Task matches criteria;
    @isTest static void testTaskMatchesCriteria() {
        System.debug('========= Test 1: task matches criteria ==========');

        Test.startTest();
        
        String [] lastNames = new String[]{'0'};
        Contact[] testContact = getContacts(lastNames);
        System.assert(
            false == testContact[0].Reopen__c,
            'Expected a clean test data with reopen = false');

        // WhoId is the only way to insert tasks, it seems
        // https://developer.salesforce.com/forums/?id=906F00000009EnyIAE
        Task testTask = new Task (
            Subject = 'Form:',
            WhoId = testContact[0].Id
        );

        System.runAs(new User(Id = Label.ELOQUA_USER_SF_ID)) {
            insert testTask;
        }
        

        Contact[] ct = getContacts(lastNames);
        System.assert(
            true == ct[0].Reopen__c, 
            ' Expected contact reopen to be true, returned: ' + ct[0].Reopen__c);

        Test.stopTest();

    }

    // Test 2: Event matches criteria;
    @isTest static void testEventMatchesCriteria() {
        System.debug('========= Test 2: event matches criteria ==========');

        Test.startTest();
        
        String[] lastNames = new String[] {'1'};
        Contact[] testContact = getContacts(lastNames);
        System.assert(
            false == testContact[0].Reopen__c,
            'Expected a clean test data with reopen = false');


        Event testEvent = new Event (
            Subject = 'Form:',
            WhoId = testContact[0].Id,
            StartDateTime = Datetime.now(),
            EndDateTime = Datetime.now().addMinutes(5)
        );

        System.runAs(new User(Id = Label.ELOQUA_USER_SF_ID)) {
            insert testEvent;
        }


        Contact[] ct = getContacts(lastNames);
        System.assert(
            true == ct[0].Reopen__c, 
            ' Expected contact reopen to be true, returned: ' + ct[0].Reopen__c);

        Test.stopTest();

    }

    // Test 3: task doesn't match criteria: subject line
    @isTest static void testSubjectDoesNotMatch() {
        System.debug('========= Test 3 : subject line does not match ==========');

        Test.startTest();

        String[] lastNames = new String[] {'2'};
        Contact[] testContact = getContacts(lastNames);
        System.assert(
            false == testContact[0].Reopen__c,
            'Expected a clean test data with reopen = false');

        // Only task that starts with "Form:" matches criteria
        Task testTask = new Task (
            Subject = 'Test form:',
            WhoId = testContact[0].Id
        );

        System.runAs(new User(Id = Label.ELOQUA_USER_SF_ID)) {
            insert testTask;
        }


        Contact[] ct = getContacts(lastNames);
        //System.assert(
         //   false == ct[0].Reopen__c, 
         //   ' Expected contact reopen to be false, returned: ' + ct[0].Reopen__c);

        Test.stopTest();
    }

    //Test 4: task doesn't match criteria : user creator
    @isTest static void testUserIsNotEloqua() {
        System.debug('========= Test 4: user is not Eloqua ==========');

        Test.startTest();

        String[] lastNames = new String[] {'3'};
        Contact[] testContact = getContacts(lastNames);
        System.assert(
            false == testContact[0].Reopen__c,
            'Expected a clean test data with reopen = false');

        Event testEvent = new Event (
            Subject = 'Form:',
            WhoId = testContact[0].Id,
            StartDateTime = Datetime.now(),
            EndDateTime = Datetime.now().addMinutes(5)
        );

        User traction = getUserTraction();
        System.runAs(traction) {
            insert testEvent;
        }

        Contact[] ct = getContacts(lastNames);
        System.assert(
            false == ct[0].Reopen__c, 
            ' Expected contact reopen to be false, returned: ' + ct[0].Reopen__c);

        Test.stopTest();
    }

    //Test 5: bulk insert of tasks that match criteria
    @isTest static void testBulkInsertTaskWithMatchinCriteria() {
        System.debug('========= Test 5: bulk insert tasks with matching criteria ==========');

        Test.startTest();

        String[] lastNames = new String[]{};
        for(Integer index = 4; index < 204; index ++ ) {
            lastNames.add(index.format());
        }

        Contact[] cts = getContacts(lastNames);

        Task[] newTasks = new Task[]{};

        for(Integer index =0; index < 200 ; index++) {
            newTasks.add(new Task (
                    Subject = 'Form:',
                    WhoId = cts[index].id));
        }

        System.runAs(new User(Id = Label.ELOQUA_USER_SF_ID)) {
            insert newTasks;
        }

        Contact[] checkContacts = getContacts(lastNames);

        for(Contact check: checkContacts) {
            System.assert(
            true == check.Reopen__c, 
            ' Expected contact reopen to be true, returned: ' + check.Reopen__c);

        }
        Test.stopTest();
    }
    //Test 6: Test that an inserted Event will update the First Meeting Date field for the related Opportunity
    @isTest static void testInsertEventAndUpdateOpportunityDate(){
        datetime dtstart = Datetime.newInstance(2016, 12 , 10, 00, 00, 00);
        datetime dtend = Datetime.newInstance(2016, 12 , 10, 01, 00, 00);

        Event ev = new Event(Type ='First Meeting', Subject='Test', Description='Testing Trigger',
        StartDateTime = dtstart, ActivityDateTime = dtstart, EndDateTime = dtend, DurationInMinutes=60 );

        Opportunity opp = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE First_Meeting_Date__c = null
        LIMIT 1];

        if(opp != null){
            ev.WhatId = opp.Id;
        }
        Test.startTest();
        insert ev;
        Test.stopTest();
        Date  expectedDate = date.newinstance(dtend.Year(),dtend.Month(), dtend.Day());

        Opportunity result = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE Id = :ev.WhatId
        LIMIT 1];

        if(result != null){
            System.assertEquals(expectedDate, result.First_Meeting_Date__c);
        }

    }
    //Test 7: Test that an event that has been set to First Meeting will update the First Meeting Date field for the related Opportunity
    @isTest static void testUpdateEventAndUpdateOpportunityDate(){
        datetime dtstart = Datetime.newInstance(2016, 12 , 10, 00, 00, 00);
        datetime dtend = Datetime.newInstance(2016, 12 , 10, 01, 00, 00);

        Event ev = new Event(Type ='Meeting', Subject='Test', Description='Testing Trigger',
        StartDateTime = dtstart, ActivityDateTime = dtstart, EndDateTime = dtend, DurationInMinutes=60 );

        Opportunity opp = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE First_Meeting_Date__c = null
        LIMIT 1];

        if(opp != null){
            ev.WhatId = opp.Id;
        }
        insert ev;
        ev.Type = 'First Meeting';
        Test.startTest();
        update ev;
        Test.stopTest();

        Opportunity result = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE Id = :ev.WhatId
        LIMIT 1];

        if(result != null){
            Date  expectedDate = date.newinstance(dtend.Year(),dtend.Month(), dtend.Day());
            System.assertEquals(expectedDate, result.First_Meeting_Date__c);
        }
    }
    @isTest static void testMultipleEventUpdateOpportunity() {
        datetime dtstart = Datetime.newInstance(2016, 11 , 10, 00, 00, 00);
        datetime dtend = Datetime.newInstance(2016, 11, 10, 01, 00, 00);

        datetime dtstart2 = Datetime.newInstance(2016, 12 , 11, 00, 00, 00);
        datetime dtend2 = Datetime.newInstance(2016, 12 , 11, 01, 00, 00);

        Event ev = new Event(Type ='First Meeting', Subject='Test', Description='Testing Trigger',
        StartDateTime = dtstart, ActivityDateTime = dtstart, EndDateTime = dtend, DurationInMinutes=60 );

        Event ev2 = new Event(Type ='First Meeting', Subject='Test 2', Description='Testing Trigger',
        StartDateTime = dtstart2, ActivityDateTime = dtstart2, EndDateTime = dtend2, DurationInMinutes=60 );

        Opportunity opp = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE First_Meeting_Date__c = null
        LIMIT 1];

        if(opp != null){
            ev.WhatId = opp.Id;
            ev2.WhatId = opp.Id;
        }
        Test.startTest();
        insert ev2;
        insert ev;
        Test.stopTest();

        Opportunity result = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE Id = :ev2.WhatId
        LIMIT 1];

        if(result != null){
            Date  expectedDate = date.newinstance(dtend2.Year(),dtend2.Month(), dtend2.Day());
            System.assertEquals(expectedDate, result.First_Meeting_Date__c);
        }


    }
    //Test 9: Bulk Insert/Update of Events to test update related opportunities
    @isTest static void testBulkUpdateOpportunityDate(){
        Map<Id, Event> testEventMap = new Map<Id, Event>();

        datetime dtstart = Datetime.newInstance(2016, 12 , 10, 00, 00, 00);
        datetime dtend = Datetime.newInstance(2016, 12 , 10, 01, 00, 00);

        datetime dtstart2 = Datetime.newInstance(2016, 12 , 10, 00, 00, 00);
        datetime dtend2 = Datetime.newInstance(2016, 12 , 10, 01, 00, 00);

        Event ev1 = new Event(Type ='First Meeting', Subject='Test 1', Description='Testing Trigger 1',
        StartDateTime = dtstart, ActivityDateTime = dtstart, EndDateTime = dtend, DurationInMinutes=60 );

        Event ev2 = new Event(Type ='Meeting', Subject='Test 2', Description='Testing Trigger 2',
        StartDateTime = dtstart, ActivityDateTime = dtstart, EndDateTime = dtend, DurationInMinutes=60 );

        Event ev3 = new Event(Type ='First Meeting', Subject='Test 3', Description='Testing Trigger 3',
        StartDateTime = dtstart2, ActivityDateTime = dtstart2, EndDateTime = dtend2, DurationInMinutes=60 );


        List<Opportunity> oppList = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE First_Meeting_Date__c = null
        LIMIT 3];

        if(oppList != null){
            ev1.WhatId = oppList.get(0).Id;
            ev2.WhatId = oppList.get(1).Id;
            ev3.WhatId = oppList.get(2).Id;
            oppList.get(2).First_Meeting_Date__c = date.newInstance(2017, 12 , 10);
        }
        testEventMap.put(ev1.WhatId, ev1);
        testEventMap.put(ev2.WhatId, ev2);
        testEventMap.put(ev3.WhatId, ev3);

        Test.startTest();
        insert testEventMap.values();
        ev2.Type = 'First Meeting';
        update ev2;
        Test.stopTest();

        List<Opportunity> result = [
        SELECT Id, First_Meeting_Date__c
        FROM Opportunity
        WHERE Id = :testEventMap.keySet()
        LIMIT 3];

        if(result != null){
            Date  expectedDate = date.newinstance(dtend.Year(),dtend.Month(), dtend.Day());
            Date  expectedDate2 = date.newinstance(dtend2.Year(),dtend2.Month(), dtend2.Day());
            System.assertEquals(expectedDate, result[0].First_Meeting_Date__c);
            System.assertEquals(expectedDate, result[1].First_Meeting_Date__c);
            System.assertEquals(expectedDate2, result[2].First_Meeting_Date__c);
        }

    }
    // Test 1: Task matches criteria;
    @isTest static void testTaskLeadCriteria() {
        System.debug('========= Test 1: task matches criteria ==========');

        Test.startTest();
        
        String [] lastNames = new String[]{'0'};
        Lead testLead = new Lead(Company='Test Account Company',
                        FirstName = 'LeadFName',
                        LastName='LName',
                        Country='USA',
                        NAICS_Code__c = '11',
                        PostalCode = '12345',
                        Eloqua_Lead_Score__c = 'C4',
                        Status = 'Qualified',
                        State = 'GA',         
                        Email='testemail@test.com');
        insert testLead;
        //System.assert(
          //  false == testContact[0].Reopen__c,
         //   'Expected a clean test data with reopen = false');

        
        Task testTask = new Task (
            Subject = 'Form:',
            WhoId = testLead.Id
        );
        insert testTask;
       
        

        Contact[] ct = getContacts(lastNames);
        //System.assert(
           // true == ct[0].Reopen__c, 
          //  ' Expected contact reopen to be true, returned: ' + ct[0].Reopen__c);

        Test.stopTest();

    }
}