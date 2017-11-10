public class InternalHelpDeskController{

    public InternalHelpDeskController(){}
    
    public String getPageContent(){
        String content = '';
        
        List<Content__c> contentList = [SELECT Id, Name, Body__c FROM Content__c WHERE Name='Support Page' LIMIT 1]; // TODO Define record name in custom settings.
        if(contentList.size() > 0){
            content = contentList[0].Body__c;
        }
        
        return content;
    }
}