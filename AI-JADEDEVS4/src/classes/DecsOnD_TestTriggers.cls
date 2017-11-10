/**
 * Test class for DecsOnD_TestTriggers
 * 
 * Copyright 2017, Decisions on Demand, Inc.
 * All Rights Reserved.
 * 
 * For support, contact support@decisionsondemand.com
 */
@IsTest
public class DecsOnD_TestTriggers {
    @IsTest
    public static void testLeadTriggerMatchedNoUpdate() {
		Trigger_Lead_Helper.testTriggers = true;
        // Test on insert
        Lead l = createAndInsertTestLead('Matched'); 
        // Test on update
        l.State = 'NY';
        update l;
        // Test on delete
        delete l;
    }    

    @IsTest
    public static void testLeadTriggerMatchedUpdateToMatched() {
		Trigger_Lead_Helper.testTriggers = true;
        // Test on insert
        Lead l = createAndInsertTestLead(getStatusToSkip()); 
        // Test on update
        l.State = 'NY';
        l.CleanStatus = 'Matched';
        update l;
        // Test on delete
        delete l;
    }    
    @IsTest
    public static void testLeadTriggerSkipped() {
		Trigger_Lead_Helper.testTriggers = true;
        Lead l = createAndInsertTestLead(getStatusToSkip()); 
        // Test on update
        l.State = 'NY';
        update l;
        // Test on delete
        delete l;
    }    

    private static String getStatusToSkip() {
        return new List<String>(DecsOnD_TriggerHelper.CLEAN_STATUSES_TO_SKIP)[0];
    }

	private static Lead createAndInsertTestLead(String matchStatus) {
        User usr = DecsOnD.TestUtils.createTestUser(false, false); // Do not insert
        usr.Email = 'decsond@adaptiveinsights.com';
        insert usr;
        // Test on insert
        Lead l = DecsOnD.TestUtils.createTestLead(usr, false); 
       // l.CleanStatus = matchStatus;
        insert l;
        return l;
    }    

}