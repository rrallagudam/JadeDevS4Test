var APP = APP || {};

/*
 * Input: A UserId
 * Returns: A User object.
 */
APP.getUser = function(uid){
    var promise = new RSVP.Promise(function(resolve, reject) {
        var api = new ForecastObjects.User();
        api.retrieve({where: {Id: {eq: uid }}},
            handler);
        function handler(error, records, event) {
            var user = {};
            if(error){
                reject(event);
                alert(error);
            } else {
                records.forEach(function(record) {
                    user = APP.fromProps( record._props );
                });
                resolve( user );
            }
        }
	});
	return promise;
}

/*
 * Input: An array of UserRole records
 * Returns: A promise to an array of User records that are IN UserRoles
 */
APP.getUsersByRoles = function(userRoles){
    var promise = new RSVP.Promise(function(resolve, reject) {
        var userRoleIDs = [];
        for(var i=0;i<userRoles.length;i++){ userRoleIDs.push( userRoles[i].Id );}
        var api = new ForecastObjects.User();        
        api.retrieve({where: {UserRoleId: {in: userRoleIDs }}},
            handler);
        function handler(error, records, event) {
            var users = [];
            if(error){
                reject(event);
                alert(error);
            } else {
                records.forEach(function(record) {
                    var u = APP.fromProps( record._props );
                    users.push(u);
                });
                resolve( users );
            }
        }
	});
	return promise;
}

/*
 * Input: (none)
 * Returns: All User Roles
 */
APP.getAllUserRoles = function(){
    var promise = new RSVP.Promise(function(resolve, reject) {
        var api = new ForecastObjects.UserRole();
        api.retrieve({limit: 1000}, 
			function(error, records, event) {
                var userRoles = [];
				if(error){
					reject(event);
				} else {
					records.forEach(function(record) {
                        var ur = APP.fromProps(record._props);
                        userRoles.push( ur );
				});
				resolve(userRoles);
			}
		});
    });
    return promise;
}

/*
 * Inputs: An array of Users
 * Returns: Promise to a collection of Open OpportunityTeamMember records associated with UserID
 */
APP.getOpportunityTeamMembers = function(users){
    var promise = new RSVP.Promise(function(resolve, reject) {
        var uids = [];
        $.each(users, function(i, user){
			if($.inArray(user.Id, uids) === -1) uids.push( user.Id );
    	});
        var api = new ForecastObjects.OpportunityTeamMember();
        api.retrieve({where: 
			{
				UserId: {in: uids },
				IsClosed: {eq: false }
			}
		},
		handler);
        function handler(error, records, event) {
            var teams = [];
            if(error){
                reject(event);
                alert(error);
            } else {
                records.forEach(function(record) {
                    var team = APP.fromProps( record._props );
                    teams.push(team);
                });
                resolve( teams );
            }
        }
	});
	return promise;
}

/*
 * Inputs: An Array of OpportunityTeamMembers
 * Returns: Promise to an array of Opportunities
 */
APP.getOpportunitiesByTeams = function(teams){
    var oidList = [];
    $.each(teams, function(i, team){
		if($.inArray(team.OpportunityId, oidList) === -1) oidList.push( team.OpportunityId );
    });
    return APP.getOpportunities(oidList);
}

/*
 * Inputs: Array of Opportunity IDs
 * Returns: Promise to an array of Opportunities
 */
APP.getOpportunities = function(oidList){
    var promise = new RSVP.Promise(function(resolve, reject) {
        var api = new ForecastObjects.Opportunity();
        api.retrieve({where: {Id: {in: oidList }}},
            handler);
        function handler(error, records, event) {
            var opportunities = [];
            if(error){
                console.log(error);
                reject(event);
                alert(error);
            } else {
                records.forEach(function(record) {
                    var o = APP.fromProps( record._props );
                    opportunities.push(o);
                });
                resolve( opportunities );
            }
        }
	});
	return promise;
}

/*
 * Input: A Visualforce Remote Object (VRO)
 * Returns: A simple JS object with Salesforce property/values and any namespace prefixes/suffixes removed.
 */
APP.fromProps = function(obj) {
    if (null == obj || "object" != typeof obj) return obj;
    var copy = obj.constructor();
    for (var attr in obj) {
        if (obj.hasOwnProperty(attr)){ 
            var cloneAttr = attr;
            var attrTokens = attr.split('__');
            if(attrTokens.length == 3){ // Contains managed namespace prefix
                cloneAttr = attrTokens[1];
            }
            else if(attrTokens.length == 2){ //Contains __c 
                cloneAttr = attrTokens[0];
            }
            copy[cloneAttr] = obj[attr];
        }
    }
    return copy;            
}