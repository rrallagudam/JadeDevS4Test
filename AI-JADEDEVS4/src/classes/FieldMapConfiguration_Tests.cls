@IsTest
public class FieldMapConfiguration_Tests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void fieldMapConfigurationTests(){
        TestData data = new TestData();

        List<FieldMap__mdt> maps = FieldMapConfiguration.getByFromObject('SBQQ__Quote__c');
        System.assert(maps.size() > 0);
        
        maps = FieldMapConfiguration.getByToObject('Order');
        System.assert(maps.size() > 0);
        
        Map<String, String> fieldMap = FieldMapConfiguration.getByObjects('SBQQ__Quote__c', 'Order');
        System.assert(fieldMap.size() > 0);
        
        // Confirm a valid Order can be created from this field map
        Order o = new Order();
        o.Status = 'Draft';
        for(String fromField : fieldMap.keySet()){
            String toField = fieldMap.get(fromField);
            o.put(toField, data.TestQuote.get(fromField) );
        }
        insert o;
    }
}