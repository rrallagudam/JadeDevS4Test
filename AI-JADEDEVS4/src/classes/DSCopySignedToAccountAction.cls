public class DSCopySignedToAccountAction
{
    @InvocableMethod(
        label='Docusign Status Action '
        description='Updates Account when DocuSign Status is completed and attachment name matches')
    public static void DocusignStatucAccountUpdate(List<dsfs__DocuSign_Status__c> DocuSignList) {        
        Set<ID> DocusignIDs = new Set<ID>();
        for(dsfs__DocuSign_Status__c oDocusign:DocuSignList){          
            if(oDocusign.dsfs__Company__c != null && oDocusign.dsfs__Envelope_Status__c == 'Completed' ){                               
                DocusignIDs.add(oDocusign.ID);
            }
        }
        if(!DocusignIDs.isEmpty()){
            updateDSAccount(DocusignIDs);
        }     
    }
    
    @future
    public static void updateDSAccount(set<ID> dsIDs)
    {
        Set<ID> accountIDs = new Set<ID>();
        List<Account> accountUpdatelist = new List<Account>();
        Map<ID,dsfs__DocuSign_Status__c> docusignMap  = new Map<ID,dsfs__DocuSign_Status__c>();
        Map<ID,String> AccountAttachmentMap  = new Map<ID,String>();
        docusignMap  = New Map<ID,dsfs__DocuSign_Status__c>([SELECT ID,dsfs__Company__c FROM dsfs__DocuSign_Status__c WHERE ID IN:dsIDs]);   
        
        for(attachment oattachment : [SELECT ID,Name,ParentID  FROM Attachment WHERE ParentID IN: docusignMap.keyset() ]){
            if((oattachment.Name.containsIgnoreCase(label.Partner_Agreement) || oattachment.Name.containsIgnoreCase(label.Partner_NDA_Agreement) )&& docusignMap.containskey(oattachment.ParentID) ){
                accountIDs.add(docusignMap.get(oattachment.ParentID).dsfs__Company__c);
                AccountAttachmentMap.put(docusignMap.get(oattachment.ParentID).dsfs__Company__c,oattachment.Name); 
            }         
        }
        system.debug('***accountIDs**'+accountIDs);
        for(Account oacc: [SELECT ID,Date_Contract_Signed__c FROM Account WHERE ID IN: accountIDs AND RecordType.Name =: 'Partner']){
            Account tempAccount = new Account(ID=oacc.ID);
            boolean CriteriaMatched = false;
            if(AccountAttachmentMap.containsKey(oacc.ID)){                
            system.debug('**A**'+AccountAttachmentMap.get(oacc.ID));            
                if(AccountAttachmentMap.get(oacc.ID).containsIgnoreCase(label.Partner_Agreement)){
                    if(oacc.Date_Contract_Signed__c == null){
                        tempAccount.Date_Contract_Signed__c = system.today();                 
                    }
                    else{
                        tempAccount.Current_Contract_Signed__c = system.today();
                    }    
                    tempAccount.Type = 'Partner'; 
                    tempAccount.Status__c = 'Active'; 
                    CriteriaMatched = true;
                    system.debug('****'+label.Partner_Agreement);
                }
                if(AccountAttachmentMap.get(oacc.ID).containsIgnoreCase(label.Partner_NDA_Agreement)){
                    tempAccount.Contract_Signed__c = true; 
                    CriteriaMatched = true;                    
                    system.debug('****'+label.Partner_NDA_Agreement);                    
                }
                if(CriteriaMatched)
                    accountUpdatelist.add(tempAccount);           
            }      
        }          
        if(!accountUpdatelist.isEmpty()){
            system.debug('**accountUpdatelist**'+accountUpdatelist);
            update accountUpdatelist;  
        }
    }
    
}