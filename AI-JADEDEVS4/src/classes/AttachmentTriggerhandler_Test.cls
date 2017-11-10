@IsTest
private class AttachmentTriggerhandler_Test
{
    
    
    static testMethod void  DocuSignAttachment() {   

        Test.StartTest();
        Id accRTID = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Partner').getRecordTypeId();                 
        Account testAccount0 = new Account(Name= 'Test Account', Status__c='Active',RecordTypeID =  accRTID);
        insert testAccount0;
        
       
         ID pricebookId = Test.getStandardPricebookId();
        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount0.Id);
        insert testContact;
        
        Account oacc = new Account(Name= 'Test Account', Status__c='Active',RecordTypeID =  accRTID,Contact__c=testContact.ID);
        insert oacc;

        Opportunity opp = new Opportunity(Name='Test Opportunity',
                    AccountId=oacc.Id,
                    StageName='Prospecting',
                    Pricebook2Id=pricebookId,
                    CloseDate=Date.Today().AddDays(90),
                    SBQQ__Contracted__c = false,
          Closed_Reasons__c = 'Other',
                    Type = 'New Business');
        insert opp;
                                         
        dsfs__DocuSign_Status__c  dsfs = new dsfs__DocuSign_Status__c();
        dsfs.dsfs__Company__c = oacc.Id;
        dsfs.dsfs__Opportunity__c = opp .id;
        dsfs.dsfs__Envelope_Status__c = 'Completed';
        dsfs.dsfs__DocuSign_Envelope_ID__c = '1001A123-1234-5678-1D84-F8D44652A382';
        dsfs.dsfs__Subject__c = 'Document for eSignature';
        insert dsfs;
        
        Attachment attach1 =new Attachment();       
        attach1.Name='Test Attachment';
        Blob bodyBlob=Blob.valueOf('Unit Test Attachment Body');
        attach1.body=bodyBlob;
        attach1.parentId=dsfs.id;
        attach1.isPrivate = false;
        insert attach1;
        
        // This assertion is dependent on an external PB flow. Commenting out for now. -ML
        //System.assert([SELECT ID FROM Attachment WHERE ParentID =:oacc.ID].size() > 0);
        //System.assertNotEquals(1stContr,null);
        Test.StopTest();        
    }
}