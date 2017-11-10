@IsTest
public class ForecastController_Tests {

    @TestSetup static void init() {
        List<UserRole> userRoles = ForecastData.createTestRoles();
        List<User> userList = ForecastData.createTestUsers(userRoles);
	}
    
    @IsTest public static void basicTests(){
        TestData.initTriggerSettings();
        List<UserRole> userRoles = ForecastData.getUserRoles();
        Set<ID> roleIDs = new Set<ID>();
        for(UserRole r : userRoles){ roleIDs.add(r.Id);}
        List<User> userList = ForecastData.getUsers();
        User vp = ForecastData.getUserByRole('VP', userList);
        
        ForecastController ctrl = new ForecastController();
        ctrl.CurrentUserId = vp.Id;
        System.assert( ctrl.CurrentUserId != null );
        System.assert( ForecastController.getRoleSubordinateUsers(vp.Id) != null );
        System.assert( ForecastController.getAllSubRoleIds(roleIDs) != null );
        // Default to use of VRO for all data I/O. 
        // Minimize need for remote methods that need unit testing.
    }
}