public class CloneQuotesController {
    public string strId;
    public SBQQ__Quote__c objClonedQuote{get;set;}
    
    public CloneQuotesController(ApexPages.StandardController controller) {
        strId = ApexPages.currentPage().getParameters().get('id');
        Id draftRecordTypeId = Schema.SObjectType.SBQQ__Quote__c.getRecordTypeInfosByName().get('Draft').getRecordTypeId();
        
        Map <String, Schema.SObjectField> fieldMap = Schema.getGlobalDescribe().get('SBQQ__Quote__c').getDescribe().fields.getMap();
        string strFields='Id';
        
        for(Schema.SObjectField sfield : fieldMap.Values())
        {
            schema.describefieldresult dfield = sfield.getDescribe();
            system.debug('#######' + dfield.isUpdateable() +'$$$'+dfield.getName ()+'@@'+dfield.getLabel ());
            if(dfield.isUpdateable())
                strFields+=','+dfield.getName();
        }  
        string strQuery ='Select '+ strFields+' from SBQQ__Quote__c where Id=:strId limit 1';
        SBQQ__Quote__c objQuote= Database.Query(strQuery);
        
        objClonedQuote = objQuote.clone();
        objClonedQuote.RecordTypeId = draftRecordTypeId;
    }
    public PageReference Save(){
        insert objClonedQuote;        
        PageReference pf = new PageReference(Label.CustomQuoteClone+'/apex/clonelineitems?id='+strId+'&retURL=%2F'+strId+'&newid='+objClonedQuote.Id);        
        return pf;
    }
    public PageReference Cancel(){       
        PageReference pf = new PageReference('/'+strId);        
        return pf;
    }

}