@isTest
public class NetExamStudentPortalControllerTest {

    public static testMethod void testController() {
        NetExamStudentPortalController portalController = new NetExamStudentPortalController(); 
 
        // check that controller has successfully been created
        system.assert(portalController != null); 
    }
}