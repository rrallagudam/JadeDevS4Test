global class TerritoryManagerController {
    public final String TERRITORY_JSON {get;set;}
    
    public TerritoryManagerController(){
        List<Territory__c> allTerritories = [SELECT Id,Name,User__c,User__r.Name,Queue_ID__c,Territory_Owner__c,Owner_Role__c,Revenue_Band__c,NAICS_Code__c,Active__c FROM Territory__c WHERE Active__c=True ORDER BY Name];
        TERRITORY_JSON = JSON.serialize(allTerritories).replace('\'', '');
    }
    
    @RemoteAction
    global static List<Territory_Area__c> getTerritoryAreas(String territoryId){
        return [SELECT Id, Area__c,Territory__c,TerritoryName__c,Country__c,State__c,County__c,Zipcode__c,AreaCode__c FROM Territory_Area__c WHERE Territory__c=:territoryId ORDER BY Zipcode__c];
    }
        
    @RemoteAction
    global static List<Area__c> searchAreas(String territoryId, String field, String searchTerm){
        String soql = 'SELECT Id,Active__c,Name,State__c,Country__c,County__c,City__c,ZipCode__c,AreaCode__c FROM Area__c ' + 
            'WHERE ' + field + ' LIKE \'' + searchTerm + '\' ORDER BY ' + field;
        return Database.query(soql);
    }
    
    /*
     * TODO: Handle use case where area is already assigned (Currently throws an exception)
     */
    @RemoteAction
    global static String assignAreas(String territoryId, List<String> areaList){
        Territory__c t = [SELECT Id,Name,User__c,User__r.Name,Queue_ID__c,Territory_Owner__c,Owner_Role__c,Revenue_Band__c,NAICS_Code__c,Active__c FROM Territory__c WHERE Id=:territoryId LIMIT 1];
        List<Territory_Area__c> territoryAreaList = new List<Territory_Area__c>();
        for(String areaId : areaList){
            String key = areaId + ':' + 
                (t.Owner_Role__c == null ? 'all-roles':t.Owner_Role__c) + ':' + 
                (t.Revenue_Band__c == null ? 'all-revbands':t.Revenue_Band__c) + ':' + 
                (t.NAICS_Code__c == null ? 'all-industries':t.NAICS_Code__c);
            Territory_Area__c ta = new Territory_Area__c();
            ta.Territory__c = territoryId;
            ta.Area__c = areaId;
            ta.Key__c = key; // Enforce one role type per area. e.g. Only one 'SDR' assigned
            territoryAreaList.add(ta);
        }
        upsert territoryAreaList;
        return 'ok. List size ' + areaList.size();
    }
    
    @RemoteAction
    global static String deleteTerritoryAreas(String territoryId, List<String> taList){
        DELETE [SELECT Id FROM Territory_Area__c WHERE Id IN :taList]; 
        return 'ok. List size ' + taList.size();
    }
}