/**@@
#Test CLASS NAME   :    BatchLeadCntCampaignLastAssoDT_Test
#DESCRIPTION       :    This is a test class for 2 batch classes. 
						Those batch classes are 1) BatchLeadCampaignLastAssociateDateUpdate
												2) BatchContactCampaignLastAssociateDate
@@**/

@isTest
 private class BatchLeadCntCampaignLastAssoDT_Test{
     
     /**@@
    #DESCRIPTION     : It is a testMethod used to create test data for above mentioned 2 batch classes.
    #Paramaters      : None
    @@**/
    
    static testMethod void myTestMethod() 
    {
        Lead objLead = new Lead();
        objLead.LastName = 'Test';
        objLead.Company = 'Test Company';
        //Insert a lead record
        insert objLead;
        
        Contact con = new Contact();
        con.LastName = 'Test Contact';
        //Insert a contact record
        insert con;
        
        Campaign cm = new Campaign();
        cm.Name = 'Test Campaign';
        //Insert a Campaign record
        insert cm;
        
        CampaignMember cMem = new CampaignMember();
        cMem.CampaignId = cm.Id;
        cMem.LeadId = objLead.Id;
        cMem.ContactId = con.Id;
        //Insert a Campaign Member record
        insert cMem;
        
        Database.executeBatch(new BatchLeadCampaignLastAssociateDateUpdate());
        Database.executeBatch(new BatchContactCampaignLastAssociateDate());
    
    }//End of test method
     
}//End of test class