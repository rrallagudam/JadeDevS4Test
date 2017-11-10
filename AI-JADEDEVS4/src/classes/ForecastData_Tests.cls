@IsTest
public class ForecastData_Tests {
	@TestSetup static void init() {
        List<UserRole> userRoles = ForecastData.createTestRoles();
        List<User> userList = ForecastData.createTestUsers(userRoles);
	}
    
    @IsTest public static void roleTests(){
        TestData.initTriggerSettings();
        List<UserRole> userRoles = ForecastData.getUserRoles();
        System.assertEquals(4, userRoles.size());
        UserRole vpRole = ForecastData.getRole('VP', userRoles);
        System.assert(vpRole != null);
        UserRole nullRole = ForecastData.getRole('na', userRoles);
        System.assertEquals(null, nullRole);
    }
    
    @IsTest public static void userTests(){
        TestData.initTriggerSettings();
        List<UserRole> userRoles = ForecastData.getUserRoles();
        List<User> userList = ForecastData.getUsers();
        System.assertEquals(4, userList.size());
        User vp = ForecastData.getUserByRole('VP', userList);
        System.assert(vp != null);
        User avp = ForecastData.getUserByRole('AVP', userList);
        System.assert(avp != null);
        User nullUser = ForecastData.getUserByRole('na', userList);
        System.assertEquals(null, nullUser);
    }
    
    @IsTest public static void hierarchyTests(){
        List<UserRole> userRoles = ForecastData.getUserRoles();
        List<User> userList = ForecastData.getUsers();
        ForecastData.buildHierarchy(userRoles, userList);
        
        UserRole avpRole = ForecastData.getRole('AVP', userRoles);
        System.assert(avpRole.ParentRoleId != null);
        UserRole amRole = ForecastData.getRole('AM', userRoles);
        System.assert(amRole.ParentRoleId != null);
        
        User vpUser = ForecastData.getUserByRole('VP', userList);
        User avpUser = ForecastData.getUserByRole('AVP', userList);
        System.assertEquals(vpUser.Id, avpUser.ManagerId);
    }
    
    @IsTest public static void opportunityTests(){
        TestData.initTriggerSettings();
        Account acct = ForecastData.createTestAccount();
        List<UserRole> userRoles = ForecastData.getUserRoles();
        List<User> userList = ForecastData.getUsers();        
        System.assert(acct != null);
        List<Opportunity> opportunityList = ForecastData.createTestOpportunities(acct, userList);
        System.assert(opportunityList.size() > 0);
        
        Integer count = Database.countQuery('SELECT Count() FROM OpportunitySplitType WHERE SplitEntity=\'Opportunity\' AND DeveloperName=\'Revenue\'');
        System.assert(count > 0);
    }
    
    @IsTest public static void basicTests(){
        ForecastData.setup();
        ForecastData data = new ForecastData();
        System.assert(data != null);
    }
}