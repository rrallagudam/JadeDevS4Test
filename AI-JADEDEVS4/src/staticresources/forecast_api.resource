//Forecast API
var APP = APP || {};

/*
 * Inputs:
 * 		subRoles: An array of subordinate UserRoles (initialized with currentUser role)
 * 		allUserRoles: An array of all UserRoles (retrieved via a call to APP.getAllUserRoles)
 * Returns: An array of UserRole records that are all beneath the subRole hierarchy.
 */
APP.getSubordinateRoles = function(subRoles, allUserRoles){
    var currentRoles = [];
	for(var s=0;s<subRoles.length;s++){
        var parentRole = subRoles[s];
		for(var i=0;i<allUserRoles.length;i++){
            var userRole = allUserRoles[i];
			if(userRole.ParentRoleId == parentRole.Id){
				currentRoles.push(userRole);
			}
		}
	}
    var returnRoles = [];
    if(currentRoles.length > 0){
        var subRoles = APP.getSubordinateRoles(currentRoles, allUserRoles);
        returnRoles = currentRoles.concat( subRoles );
    }
	return returnRoles;
}

/*
 * Inputs:
 * 		user: User Context (typically CurrentUser)
 * 		allUserRoles
 * Returns: A promise to an array of open opportunities owned by subordinates
 */
APP.getSubordinateOpportunities = function(user, allUserRoles){    
    var promise = new RSVP.Promise(function(resolve, reject) {
        var currentRole = APP.getUserRole(user, allUserRoles);
        var subRoles = [currentRole];
        // Note: This currently does not apply for AMs and Sales Users. Needs an alternative method or branch.
        subRoles = APP.getSubordinateRoles(subRoles, allUserRoles);
        //if subRoles.length == 0, then just get opps for current user
        APP.getUsersByRoles( subRoles )
            .then( function(subordinateUsers){
                APP.getOpportunityTeamMembers(subordinateUsers)
                	.then( function(teams){
                    	APP.getOpportunitiesByTeams( teams )
                            .then( function(opportunities){
                                resolve(opportunities);
                            });
            		});
            });
    });
    return promise;
}

APP.getUserRole = function(user, userRoles){
    if(!user.UserRoleId){
        return null;
    }
    for(var i=0;i<userRoles.length;i++){
		if(user.UserRoleId == userRoles[i].Id){
			return userRoles[i];
		}
	}
    return null;
}

APP.sumAmount = function(opportunities){
    var sum = 0.0;
    for(var i=0;i<opportunities.length;i++){
        if(opportunities[i].Amount){
        	sum += opportunities[i].Amount;
        }
    }
    return sum;
}

APP.sumAmountByCategory = function(opportunities, forecastCategory){
    var sum = 0.0;
    for(var i=0;i<opportunities.length;i++){
        var o = opportunities[i];
        if( o.ForecastCategoryName && 
           	o.ForecastCategoryName.toLowerCase() == forecastCategory.toLowerCase() && 
           	o.Amount){
        	sum += opportunities[i].Amount;
        }
    }
    return sum;
}