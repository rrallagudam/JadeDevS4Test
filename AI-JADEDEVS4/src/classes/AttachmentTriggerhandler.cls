public class AttachmentTriggerhandler
{
    public static void afterInsert(list<attachment> newrecords)
    {
        Set<ID> parentIDs = new Set<ID>();
        map<ID,Account> accMap = new map<ID,Account>();
        List<attachment> newAttachmentList = new list<attachment>();
        Map<ID,ID> docuSignAccs = new Map<ID,ID>();
        List<dsfs__DocuSign_Status__c> docuSignlist = new List<dsfs__DocuSign_Status__c>();
        
        for(attachment oattach : newrecords){        
            if(oattach.ParentId.getSobjectType() == dsfs__DocuSign_Status__c.SobjectType){                             
                parentIDs.add(oattach.ParentID);
            }        
        }
        
        for(dsfs__DocuSign_Status__c oDocusign :[SELECT ID,dsfs__Company__c FROM dsfs__DocuSign_Status__c WHERE ID IN: parentIDs AND dsfs__Company__c != null ]){    
            docuSignAccs.put(oDocusign.ID,oDocusign.dsfs__Company__c);
            docuSignlist.add(new dsfs__DocuSign_Status__c(ID=oDocusign.ID,Is_Attachment_Inserted__c=true));
        }    
        
        for(Account oacc: [SELECT ID,Contact__c,Contact_Email_Address__c,Owner.Email  FROM Account WHERE ID IN: docuSignAccs.values() and RecordType.Name =: 'Partner']){
            accMap.put(oacc.ID,oacc);
        }    
        
        if(!accMap.isEmpty()){
            for(attachment a : newrecords){           
                if(docuSignAccs.containsKey(a.parentID) && accMap.containsKey(docuSignAccs.get(a.parentID))){                                            
                    Attachment newFile = a.clone();
                    newFile.ParentId = docuSignAccs.get(a.ParentId);
                    newAttachmentList.add(newFile);                           
                }        
            }
        }
        
        if(!newAttachmentList.isEmpty()){
            insert newAttachmentList;
        } 
        if(!docuSignlist.isEmpty()){
            update docuSignlist;
        }
        map<string,EmailTemplate> templateMap = new map<String,EmailTemplate>();
        
        for(EmailTemplate  oTemplate : [Select id,Name from EmailTemplate where name = 'Partner Docusign notification' OR Name = 'NDA Agreement']){
         templateMap.put(oTemplate.Name,oTemplate);
        }
         for(Attachment oattachment :[SELECT ID,ParentID,Body,Name FROM Attachment WHERE ID IN: newAttachmentList]){  
             if(accMap.containsKey(oattachment.ParentID) && accMap.get(oattachment.ParentID).Contact__c != null && !String.isEmpty(accMap.get(oattachment.ParentID).Contact_Email_Address__c)){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();          
                if(templateMap !=null && templateMap.size()>0){
                     if(oattachment.Name.containsIgnoreCase(label.Partner_Agreement)){
                           mail.setTemplateId(templateMap.get('Partner Docusign notification').ID);                 
                     }
                     if(oattachment.Name.containsIgnoreCase(label.Partner_NDA_Agreement)){
                           mail.setTemplateId(templateMap.get('NDA Agreement').ID);                 
                     }                                                   
                }
            mail.setCcAddresses(new String[] {accMap.get(oattachment.ParentID).Owner.Email});  
            mail.setBccAddresses(new String[] {label.Legal_Team_Email_Address,label.Channel_Team_Email_Address});                                                   
            mail.setTargetObjectId(accMap.get(oattachment.ParentID).Contact__c); 
            mail.setWhatId(accMap.get(oattachment.ParentID).ID);
            List<Messaging.Emailfileattachment> fileAttachments = new List<Messaging.Emailfileattachment>();            
            Messaging.Emailfileattachment efa = new Messaging.Emailfileattachment();
            efa.setFileName(oattachment.Name);
            efa.setBody(oattachment.Body);
            fileAttachments.add(efa);
            mail.setFileAttachments(fileAttachments);  
            if(!Test.isrunningtest())
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });                          
                }                    
         }
        
        
        
        
    }
    
}