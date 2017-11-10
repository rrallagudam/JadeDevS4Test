public class SObjectUtils {

    public static Set<String> EXCLUDE_FIELDS = new Set<String>{
        'billinggeocodeaccuracy',
        'shippinggeocodeaccuracy',
        'othergeocodeaccuracy',
        'mailinggeocodeaccuracy',
        'geocodeaccuracy',
        'hasopenactivity',
        'hasoverduetask'};
     
    public static SObject get(String type, ID recordID){
        String soql = 'SELECT ' + allFields(type) + ' FROM ' + type + ' WHERE Id=:recordID LIMIT 1';
        return Database.query(soql);
    }
    public static String allFields(String sobjectName){
        Map<String, Schema.SObjectField> objectFields = Schema.getGlobalDescribe().get(sobjectName).getDescribe().fields.getMap();
        List<String> fieldList = new List<String>(objectFields.keySet());
        String queryString = '';
        for(String field : fieldList){
            if( EXCLUDE_FIELDS.contains( field.toLowerCase() )){
                continue;
            }
            queryString += field + ',';
        }
        return queryString.removeEnd(',');
    }
    
    public static String allFields(String sobjectName, Set<String> excludeFields){
        Map<String, Schema.SObjectField> objectFields = Schema.getGlobalDescribe().get(sobjectName).getDescribe().fields.getMap();
        List<String> fieldList = new List<String>(objectFields.keySet());
        String queryString = '';
        for(String field : fieldList){
            if( EXCLUDE_FIELDS.contains( field.toLowerCase()) || excludeFields.contains( field.toLowerCase()) ){
                continue;
            }
            queryString += field + ',';
        }
        return queryString.removeEnd(',');
    }    
    
    public static String allCreatableFields(String sobjectName, Set<String> excludeFields){
        Map<String, Schema.SObjectField> objectFields = Schema.getGlobalDescribe().get(sobjectName).getDescribe().fields.getMap();
        List<String> fieldList = new List<String>(objectFields.keySet());
        String queryString = '';
        for(String field : fieldList){
            if( EXCLUDE_FIELDS.contains( field.toLowerCase() ) || excludeFields.contains( field.toLowerCase() ) ){
                continue;
            }
            Schema.SObjectField f = objectFields.get(field);
            Schema.DescribeFieldResult fieldSchema = f.getDescribe();
            if(fieldSchema.isCreateable() ){
                queryString += field + ',';
            }
        }
        return queryString.removeEnd(',');
    }
}