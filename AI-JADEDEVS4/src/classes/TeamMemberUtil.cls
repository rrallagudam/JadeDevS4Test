public class TeamMemberUtil {
                                      
    public static void AccountTeamMembers( map<ID,String> accountTeam,map<ID,String> accountTeamRole)
    {
    List<AccountTeamMember> members = new list<AccountTeamMember>();
    
    for(id ownerID : accountTeam.keyset()) {
        ID oaccID = accountTeam.get(ownerID);
        members.add(New AccountTeamMember(AccountId = oaccID, TeamMemberRole = accountTeamRole.get(oaccID), UserId= ownerID));
    }
    if(!members.isEmpty())
        insert members ;

    }

    public static void OpportunityTeamMembers( map<ID,String> OpportunityTeam,map<ID,String> OpportunityTeamRole){
    
    List<OpportunityTeamMember> members = new list<OpportunityTeamMember>();
    
    for(id ownerID : OpportunityTeam.keyset()) {
        ID oaccID = OpportunityTeam.get(ownerID);
        //members.add(New OpportunityTeamMember(OpportunityId = oaccID, TeamMemberRole = OpportunityTeamRole.get(oaccID), UserId= ownerID));
         members.add(New OpportunityTeamMember(OpportunityId = oaccID, Team_Member_Role__c= OpportunityTeamRole.get(oaccID), UserId= ownerID));        
                    
    }
    if(!members.isEmpty()){

      Schema.DescribeSObjectResult opteamSObj = Schema.sObjectType.Opportunity;

      if(opteamSObj.iscreateable()){
//insert members;
     try{
        insert members;
        system.debug('---members---'+members);
        }
        
     catch(Exception e){
        
     
     }   
     }
    }
}
}