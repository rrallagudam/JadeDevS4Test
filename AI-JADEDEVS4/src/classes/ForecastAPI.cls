public class ForecastAPI {

	public static Set<ID> getRoleSubordinateUsers(Id userId) {
		Id roleId = [select UserRoleId from User where Id = :userId].UserRoleId;
		Set<Id> allSubRoleIds = getAllSubRoleIds(new Set<ID>{roleId});
		Map<Id,User> users = new Map<Id, User>([Select Id, Name From User where UserRoleId IN :allSubRoleIds]);
		return users.keySet();
	}

	private static Set<ID> getAllSubRoleIds(Set<ID> roleIds) {
		Set<ID> currentRoleIds = new Set<ID>();
        for(UserRole userRole :[select Id from UserRole where ParentRoleId IN :roleIds AND ParentRoleID != null]){
			currentRoleIds.add(userRole.Id);
        }

        if(currentRoleIds.size() > 0){
			currentRoleIds.addAll(getAllSubRoleIds(currentRoleIds));      
        }
		return currentRoleIds;
	}
}