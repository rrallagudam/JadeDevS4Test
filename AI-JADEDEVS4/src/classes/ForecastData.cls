public class ForecastData {
	
    public ForecastData(){
        
    }
    
    public static void setup(){
        //To be called in unit test setup method.
        // Objects to create
        // 3 tiers of users in role hierarchy
        // VP, AVP, AM/CSM
        // A few opportunities in various category stages
        // AM and CSM split revenue on opportunities.
    }
    
    @TestVisible private static List<UserRole> buildHierarchy(List<UserRole> userRoles, List<User> userList){
        User vpUser = getUserByRole('VP', userList);
        User avpUser = getUserByRole('AVP', userList);
        User amUser = getUserByRole('AM', userList);
        User csmUser = getUserByRole('CSM', userList);
        
        avpUser.ManagerId = vpUser.Id;
        amUser.ManagerId = avpUser.Id;
        csmUser.ManagerId = avpUser.Id;
        
        UserRole vpRole = getRole('VP', userRoles); 
        UserRole avpRole = getRole('AVP', userRoles);
        UserRole amRole = getRole('AM', userRoles); 
        UserRole csmRole = getRole('CSM', userRoles); 
        
        //vpRole.ForecastUserId = vpUser.Id;
        avpRole.ParentRoleId = vpRole.Id;
        //avpRole.ForecastUserId = avpUser.Id;
        amRole.ParentRoleId = avpRole.Id;
        csmRole.ParentRoleId = avpRole.Id;
        
        // Assumes objects are updated by reference. Validate through unit tests.
        update userRoles;
        update userList;
        return userRoles;
    }
    
    @TestVisible private static Account createTestAccount(){
        Account testAccount = new Account(Name= 'Test Account', Status__c='Active');
        insert testAccount;
         
        Contact testContact = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=testAccount.Id);
        insert testContact;
        return testAccount;
    }
    
    @TestVisible private static List<Opportunity> createTestOpportunities(Account testAccount, List<User> userList){
        List<Opportunity> testOpportunities = new List<Opportunity>();
        testOpportunities.add( new Opportunity(Name='Omitted Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Prospecting',
                    Pricebook2Id=Test.getStandardPricebookId(),
                    Amount = 100000.00,
                    CloseDate=Date.Today().AddDays(90),
                    SBQQ__Contracted__c = false,
					RFP__c = 'No',
					RFP_Details__c = 'RFP Details',
					Closed_Reasons__c = 'Other',
                    Type = 'New Business')
		);
        testOpportunities.add( new Opportunity(Name='Pipeline Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Proposal Presentation',
                    Pricebook2Id=Test.getStandardPricebookId(),
                    Amount = 100000.00,
                    CloseDate=Date.Today().AddDays(90),
                    SBQQ__Contracted__c = false,
					RFP__c = 'No',                                               
					RFP_Details__c = 'RFP Details',
					Closed_Reasons__c = 'Other',
                    Type = 'New Business')
		);
        testOpportunities.add( new Opportunity(Name='Commit Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Commitment & Negotiation',
                    Pricebook2Id=Test.getStandardPricebookId(),
                    Amount = 100000.00,
                    CloseDate=Date.Today().AddDays(90),
                    SBQQ__Contracted__c = false,
					RFP_Details__c = 'RFP Details',
					RFP__c = 'No',
					Closed_Reasons__c = 'Other',
                    Type = 'New Business')
		);
        testOpportunities.add( new Opportunity(Name='Closed-Won Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Closed Won',
                    Pricebook2Id=Test.getStandardPricebookId(),
                    Amount = 100000.00,
                    CloseDate=Date.Today(),
                    SBQQ__Contracted__c = false,
					RFP__c = 'No',                                               
					RFP_Details__c = 'RFP Details',
					Closed_Reasons__c = 'Other',
                    Type = 'New Business')
		);
        testOpportunities.add( new Opportunity(Name='Closed-Lost Opportunity',
                    AccountId=testAccount.Id,
                    StageName='Closed Lost',
                    Pricebook2Id=Test.getStandardPricebookId(),
                    Amount = 100000.00,
                    CloseDate=Date.Today(),
                    SBQQ__Contracted__c = false,
					RFP__c = 'No',
					RFP_Details__c = 'RFP Details',
					Closed_Reasons__c = 'Other',
                    Type = 'New Business')
		);
        
		insert testOpportunities;
        createOpportunitySplits(testOpportunities, userList);
		return testOpportunities;
    }
    
    @TestVisible private static List<OpportunitySplit> createOpportunitySplits(List<Opportunity> testOpportunities, List<User> userList){
        User amUser = getUserByRole('AM', userList);
        User csmUser = getUserByRole('CSM', userList);
        List<OpportunitySplitType> splitTypes = Database.query('SELECT Id FROM OpportunitySplitType WHERE SplitEntity=\'Opportunity\' AND DeveloperName=\'Revenue\'');
        OpportunitySplitType splitType = splitTypes[0];
        
        List<OpportunitySplit> splits = new List<OpportunitySplit>();
        List<OpportunityTeamMember> teamMembers = new List<OpportunityTeamMember>();
        for(Opportunity o : testOpportunities){
            teamMembers.add( new OpportunityTeamMember(
                OpportunityId = o.Id,
                UserId = amUser.Id)
            );
            teamMembers.add( new OpportunityTeamMember(
                OpportunityId = o.Id,
                UserId = csmUser.Id)
            );
            splits.add( new OpportunitySplit(
                OpportunityId = o.Id,
                SplitTypeId = splitType.Id,
            	SplitOwnerId = amUser.Id,
                SplitPercentage = 50.00,
                SplitNote = 'AM Split')
			);
            splits.add( new OpportunitySplit(
                OpportunityId = o.Id,
                SplitTypeId = splitType.Id,
            	SplitOwnerId = csmUser.Id,
                SplitPercentage = 50.00,
                SplitNote = 'CSM Split')
			);
        }
        insert teamMembers;
        insert splits;
        return splits;
    }
    
    @TestVisible private static List<User> createTestUsers(List<UserRole> userRoles){
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        List<User> userList = new List<User>();
        
		userList.add( new User(Alias = 'vptest', Email='vp_test@adaptiveinsights.com', 
			UserName='vp_test@adaptiveinsights.com', LastName='Testing',
			EmailEncodingKey='UTF-8',  LanguageLocaleKey='en_US', 
			LocaleSidKey='en_US', ProfileId = p.Id,
			TimeZoneSidKey='America/Los_Angeles', 
			UserRoleId =  getRole('VP', userRoles).Id)
        );
        userList.add( new User(Alias = 'avptest', Email='avp_test@adaptiveinsights.com', 
			UserName='avp_test@adaptiveinsights.com', LastName='Testing',
			EmailEncodingKey='UTF-8',  LanguageLocaleKey='en_US', 
			LocaleSidKey='en_US', ProfileId = p.Id,
			TimeZoneSidKey='America/Los_Angeles', 
			UserRoleId =  getRole('AVP', userRoles).Id)
        );
        userList.add( new User(Alias = 'amtest', Email='am_test@adaptiveinsights.com', 
			UserName='am_test@adaptiveinsights.com', LastName='Testing',
			EmailEncodingKey='UTF-8',  LanguageLocaleKey='en_US', 
			LocaleSidKey='en_US', ProfileId = p.Id,
			TimeZoneSidKey='America/Los_Angeles', 
			UserRoleId =  getRole('AM', userRoles).Id)
        );
        userList.add( new User(Alias = 'csmtest', Email='csm_test@adaptiveinsights.com', 
			UserName='csm_test@adaptiveinsights.com', LastName='Testing',
			EmailEncodingKey='UTF-8',  LanguageLocaleKey='en_US', 
			LocaleSidKey='en_US', ProfileId = p.Id,
			TimeZoneSidKey='America/Los_Angeles', 
			UserRoleId =  getRole('CSM', userRoles).Id)
        );
        insert userList;
        return userList;
    }
    
    @TestVisible static List<User> getUsers(){
		return [SELECT Alias,Email, UserName, LastName,
				EmailEncodingKey, LanguageLocaleKey, 
				LocaleSidKey, ProfileId, TimeZoneSidKey 
                FROM User 
               	WHERE UserName Like '%_test@adaptiveinsights.com'];
    }
    
    @TestVisible static List<UserRole> getUserRoles(){
    	return [SELECT Id,Name,DeveloperName,ForecastUserId,ParentRoleId 
                                    FROM UserRole 
                                    WHERE DeveloperName='VP' OR 
                                   	DeveloperName='AVP' OR 
                                    DeveloperName='AM' OR 
                                    DeveloperName='CSM'];
    }
    
    @TestVisible private static User getUserByRole(String roleName, List<User> userList){
        for(User u : userList){
            String userName = roleName.toLowerCase() + '_test@adaptiveinsights.com';
            if(u.UserName == userName){
                return u;
            }
        }
        return null;
    }
    
    @TestVisible private static List<UserRole> createTestRoles(){
        List<UserRole> userRoles = new List<UserRole>();
        userRoles.add( new UserRole(name = 'VP') );
        userRoles.add( new UserRole(name = 'AVP') );
        userRoles.add( new UserRole(name = 'AM') );
        userRoles.add( new UserRole(name = 'CSM') );
        
        insert userRoles;
        return userRoles;
    }
    
    @TestVisible private static UserRole getRole(String roleName, List<UserRole> userRoles){
        for(UserRole r : userRoles){
            if(r.Name == roleName){
                return r;
            }
        }
        return null;
    }
}