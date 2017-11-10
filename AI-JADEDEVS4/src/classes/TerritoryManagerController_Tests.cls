@IsTest
public class TerritoryManagerController_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void basicTests(){
        TestData data = new TestData();
        TerritoryManagerController ctrl = new TerritoryManagerController();
        
        List<Territory_Area__c> areas = TerritoryManagerController.getTerritoryAreas( data.TestTerritories[0].Id );
        System.assertEquals(3, areas.size());
        
        areas = TerritoryManagerController.getTerritoryAreas( data.TestTerritories[1].Id );
        System.assertEquals(7, areas.size());
        
        List<Area__c> searchResults = TerritoryManagerController.searchAreas(data.TestTerritories[0].Id, 'Zipcode__c', '50%');
        System.assertEquals(5, searchResults.size() );
        
        // Assign an existing area to an Territory
        String response = TerritoryManagerController.assignAreas(data.TestTerritories[1].Id, new List<String>{ data.TestAreas[0].Id } );
        System.assert(response != null);
        
        response = TerritoryManagerController.deleteTerritoryAreas(data.TestTerritories[0].Id, new List<String>{ data.TestTerritoryAreas[0].Id });
        System.assert(response != null);
    }
}