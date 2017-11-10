@isTest
public class DSCopySignedToAccountAction_Test
{
    @TestSetup     
    static void init() {
        TestData.setup();
    }
   
    static testMethod void  DocuSignAttachmentTest1() 
    {   
        TestData tData = new TestData();
        Id accRTID = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Partner').getRecordTypeId();                 
        Account oacc = tdata.testAccount;
        oacc.RecordTypeID =  accRTID ;
        update oacc;        
        Opportunity opp = tdata.TestOpportunity;   
       
        dsfs__DocuSign_Status__c  dsfs2 = new dsfs__DocuSign_Status__c();
        dsfs2.dsfs__Company__c = oacc.Id;
        dsfs2.dsfs__Envelope_Status__c = 'Completed';
        dsfs2.dsfs__DocuSign_Envelope_ID__c = '1001A123-1234-5678-1D84-F8D44652A382';
        dsfs2.dsfs__Subject__c = 'Document for eSignature';
        insert dsfs2;
        
        Attachment attach2 =new Attachment();       
        attach2.Name='Non-Disclosure Agreement';
        Blob bodyBlob2=Blob.valueOf('Unit Test Attachment Body');
        attach2.body=bodyBlob2;
        attach2.parentId=dsfs2.id;
        attach2.isPrivate = false;
        insert attach2;
        system.debug('**hello***'+[SELECT ID,Status__c,Contract_Signed__c FROM Account WHERE ID =:dsfs2.dsfs__Company__c]);
         

        dsfs__DocuSign_Status__c  dsfs = new dsfs__DocuSign_Status__c();
        dsfs.dsfs__Company__c = oacc.Id;
        dsfs.dsfs__Envelope_Status__c = 'Completed';
        dsfs.dsfs__DocuSign_Envelope_ID__c = '1001A123-1234-5678-1D84-F8D44652A382';
        dsfs.dsfs__Subject__c = 'Document for eSignature';
        insert dsfs;
        
        Attachment attach1 =new Attachment();       
        attach1.Name='Partner Program Enrollment Form';
        Blob bodyBlob=Blob.valueOf('Unit Test Attachment Body');
        attach1.body=bodyBlob;
        attach1.parentId=dsfs.id;
        attach1.isPrivate = false;
        insert attach1;
        System.assert([SELECT ID,Status__c FROM Account WHERE ID =:dsfs.dsfs__Company__c].Status__c  == 'Active');

              
        //System.assert([SELECT ID,Status__c FROM Account WHERE ID =:dsfs2.dsfs__Company__c].Status__c  == 'Active');

        
        
    }
    
   /* static testMethod void  DocuSignAttachmentTest2() 
    {   
        TestData tData = new TestData();
        Id accRTID = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Partner').getRecordTypeId();                 
        Account oacc = tdata.testAccount;
        oacc.RecordTypeID =  accRTID ;
        update oacc;        
        Opportunity opp = tdata.TestOpportunity;                                
        
        Test.StartTest();
        dsfs__DocuSign_Status__c  dsfs = new dsfs__DocuSign_Status__c();
        dsfs.dsfs__Company__c = oacc.Id;
        dsfs.dsfs__Envelope_Status__c = 'Completed';
        dsfs.dsfs__DocuSign_Envelope_ID__c = '1001A123-1234-5678-1D84-F8D44652A382';
        dsfs.dsfs__Subject__c = 'Document for eSignature';
        insert dsfs;
        
        Attachment attach1 =new Attachment();       
        attach1.Name='Non-Disclosure Agreement';
        Blob bodyBlob=Blob.valueOf('Unit Test Attachment Body');
        attach1.body=bodyBlob;
        attach1.parentId=dsfs.id;
        attach1.isPrivate = false;
        insert attach1;
        
        System.assert([SELECT ID,Status__c,Contract_Signed__c FROM Account WHERE ID =:dsfs.dsfs__Company__c].Contract_Signed__c  == true);
        //System.assertNotEquals(1stContr,null);
        Test.StopTest();
        
    }    */
    
}