/**@@
#Test CLASS NAME   :    ExceptionHandlingEmail_Test
#DESCRIPTION       :    This is a test class for "ExceptionHandlingEmail" Apex class.
@@**/

@isTest
public class ExceptionHandlingEmail_Test {
    /**@@
#DESCRIPTION     : It is a myTestMethod used to create test data for above mentioned batch classe.
#Paramaters      : None
@@**/
    static testMethod void myTestMethod(){
    try{
        list<User> userList = DataFactory.createUserTestRecords('test',3);
       
         SkipAutomationSetting__c customSettingObj = new SkipAutomationSetting__c();
        customSettingObj.ExceptionHandlingUsers__c = userlist[0].id + ';' + userlist[1].id + ';' + userlist[2].id;
        system.debug('ExceptionHandlingUsers__c===>'+customSettingObj.ExceptionHandlingUsers__c);
        insert customSettingObj;
        Opportunity opp=new Opportunity(Name='Test');
        insert opp;
   }
   Catch(Exception e){
       exception ex = e;
       ExceptionHandlingEmail.sendEmailonException(ex);
   }
 }//END OF METHOD
}//END OF CLASS