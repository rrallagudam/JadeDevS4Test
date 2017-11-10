/**@@
#Test CLASS NAME   :    BatchPortarUserNamePopulate_Test
#DESCRIPTION       :    This is a test class for BatchPortarUserNamePopulate batch class.
@@**/

@isTest
public class BatchPortarUserNamePopulate_Test {
    /**@@
    #DESCRIPTION     : It is a testMethod used to create test data for above mentioned batch classe.
    #Paramaters      : None
    @@**/
    static testMethod void batchTestMethod(){
        
        //Insrt user
        //List<User> userList = DataFactory.insertRunAsUser();
        //System.runAs(userList[0]){            
            //Insert account
            List<Account> accList=DataFactory.createAccountTestRecords('Test Account', 1);
            system.assertEquals(accList.size(), 1);
            
            //Insert contact
            list<contact> conList=DataFactory.createContactTestRecords('Test Conatct', accList[0].id, 1);
            system.assertEquals(conList.size(), 1);
            
            //Insert User
            List<User> userObjList = DataFactory.insertPortalUser(conList[0].Id);
           System.assertEquals(conList.size()>0,userObjList.size()>0);
            
         //}//End of runas user
        //Executing batch class
      Database.executeBatch(new BatchPortarUserNamePopulate());        
    }
    
    
}