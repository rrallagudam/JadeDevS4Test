/**@@
#Test CLASS NAME   :    BatchLastActivityDateMinusEloqua_Test
#DESCRIPTION       :    This is a test class for 2 batch classes. 
						Those batch classes are 1) BatchContactLastActivityDateUpdate
												2) BatchLeadLastActivityDateMinusEloqua
@@**/

@isTest
 private class BatchLastActivityDateMinusEloqua_Test{
     
     /**@@
    #DESCRIPTION     : It is a testMethod used to create test data for above mentioned 2 batch classes.
    #Paramaters      : None
    @@**/
    static testMethod void myTestMethod() {
        Lead testLead = new Lead(Company='Test Account Company',
                        FirstName = 'LeadFName',
                        LastName='LName',
                        Country='USA',                        
                        Status = 'Qualified',
                        Email='testemail@test.com');
        insert testLead;
        
        Contact objCon = new Contact();
        objCon.LastName='Test Contact';
        insert objCon;
        
        Task objTask = new Task();
        objTask.Subject = 'Test Contact';
        objTask.ActivityDate = system.today().addDays(30);
        objTask.WhoId = testLead.Id;
        objTask.Status = 'Completed';
        insert objTask;
        
        Task objTask1 = new Task();
        objTask1.Subject = 'Test Contact';
        objTask1.ActivityDate = system.today().addDays(20);
        objTask1.WhoId = objCon.Id;
        objTask1.Status = 'Completed';
        insert objTask1;
        
        Database.executeBatch(new BatchLeadLastActivityDateMinusEloqua());
        Database.executeBatch(new BatchContactLastActivityDateUpdate());
    
    }
}