/**@@
#APEX CLASS NAME       :   CallOutDataDotCom_Test
#DESCRIPTION           :   This is test class for CallOutDataDotCom Apex class.
@@**/

@isTest
public class CallOutDataDotCom_Test {
    
/**@@
        #DESCRIPTION     : Creating test records
        #Paramaters      : None
@@**/
    @isTest static void dataDotComCallOut_Test() {
        //insert custom setting
        DataFactory.insertCustomSetting();
        
        //get session id of system user
        String sessionId = system.UserInfo.getSessionId();
       
        User u = [Select id from User where Id =: CustomConstants.eloquaUserId];
        
        //insert lead Record;
        system.runAs(u){
        List<Lead> leadRecord =DataFactory.createLeadForDataDotCom('leadLastName', 1);
        
        set<id> lstid = new set<id>();
        lstid.add(leadRecord[0].id);
        
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        
        // Call method to test.
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        CallOutDataDotCom.dataDotComCallOut(sessionId,lstid);
        
        }
    }

}