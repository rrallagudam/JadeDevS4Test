public class FieldMapConfiguration {
    final public static string ALL_FIELDS = 'Id,Label,DeveloperName,FromObject__c,FromField__c,ToObject__c,ToField__c'; // from FieldMap__mdt';
    
    public static List<FieldMap__mdt> getByFromObject(String fromObject){
        String soql = 'SELECT ' + ALL_FIELDS + ' FROM FieldMap__mdt WHERE FromObject__c=:fromObject';
        return Database.query(soql);
    }
    
    public static List<FieldMap__mdt> getByToObject(String toObject){
        String soql = 'SELECT ' + ALL_FIELDS + ' FROM FieldMap__mdt WHERE ToObject__c=:toObject';
        return Database.query(soql);
    }
    
    public static Map<String,String> getByObjects(String fromObject, String toObject){
        Map<String,String> fieldMap = new Map<String,String>();
        String soql = 'SELECT ' + ALL_FIELDS + ' FROM FieldMap__mdt WHERE FromObject__c=:fromObject AND ToObject__c=:toObject';
        List<FieldMap__mdt> metadata = Database.query(soql);
        for(FieldMap__mdt config : metadata){
            fieldMap.put(config.FromField__c, config.ToField__c);
        }
        return fieldMap;
    }
}