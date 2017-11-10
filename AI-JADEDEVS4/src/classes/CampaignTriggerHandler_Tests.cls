@IsTest
public with sharing class CampaignTriggerHandler_Tests {
    
    @TestSetup public static void setup(){
        //TestData.setup();
    }

    @IsTest public static void basicTests() {
        CampaignTriggerHandler handler = new CampaignTriggerHandler();
        System.assert(handler != null);
    }
}