/**@@
#TRIGGER NAME          :    ContactTrigger 
#HANDLER CLASS NAME    :    Trigger_Contact_Handler
#HELPER CLASS NAME     :    Trigger_Contact_Helper
#TEST CLASS            :    ContactTriggerHandler_Test & ContactTriggerHandlerWOsharing_Tests & UserCreationForPortalsHelper_Tests
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.   
@@**/
public class Trigger_Contact_Helper{
    
    /**@@
#DESCRIPTION   : To create new Account Team member with 'SDR' team role.
#Paramaters        : trigger.newMap,trigger.oldMap
@@**/
    public static void afterinsert(map<ID,Contact> newmap,map<ID,Contact> oldmap){
        try{
            if(Trigger.isInsert || (Trigger.isUpdate && oldmap!=null)){
                map<ID,String> accountTeam = new map<ID,String>();
                map<ID,String> accountTeamRole = new map<ID,String>();
                set<ID> accountIds = new set<ID>();
                set<ID> existingAccTeamOwners = new set<ID>();
                for(contact ContactObj : newmap.values()){
                    accountIds.add(ContactObj.AccountID); 
                }
                
                if(!accountIds.isEmpty()){
                    for(AccountTeamMember accMember : [SELECT ID,UserId,AccountId FROM AccountTeamMember WHERE AccountId IN:accountIds]){
                        existingAccTeamOwners.add(accMember.UserId);
                    }
                }
                if(!newmap.keyset().isEmpty()){
                    for(contact ContactObj :[SELECT ID,AccountID,OwnerID FROM Contact WHERE ID IN: newmap.keyset() AND Owner.Role__c =: 'SDR']){             
                        if(!accountTeam.containskey(ContactObj.OwnerID) && !existingAccTeamOwners.contains(ContactObj.OwnerID)){
                            accountTeam.put(ContactObj.OwnerID,ContactObj.AccountID);
                            accountTeamRole.put(ContactObj.AccountID,'SDR');
                        }
                    }
                }
                if(!accountTeam.isEmpty()){
                    //AccountTeamMembers(accountTeam,accountTeamRole);
                    TeamMemberUtil.AccountTeamMembers(accountTeam, accountTeamRole);
                }
            }
        }//end of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }       
    }//End of afterinsert method
    
    /**@@
#DESCRIPTION   : Update account type on contact
#Paramaters        : trigger.new
@@**/
    public static void OnBeforeInsert(List<Contact> newRecords){
        try{
            set<ID> accIDs = new set<ID>();
            for(Contact ContactObj:newRecords){
                if(ContactObj.AccountID != null)
                    accIDs.add(ContactObj.AccountID);
            }
            if(!accIDs.isEmpty()){
                map<ID,Account> accMap = new map<ID,Account>([SELECT ID,Type FROM Account WHERE ID IN: accIDs]);
                for(Contact ContactObj:newRecords){
                    if(accMap!= null && accMap.containskey(ContactObj.AccountID))
                        ContactObj.Role__c = accMap.get(ContactObj.AccountId).Type;
                }
            }
        }
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//End of OnBeforeInsert
    
    /**@@
#DESCRIPTION   : Without Sharing wrapper class for this function - UserCreationHelperMethod 
#Paramaters    : List,trigger.oldMap
@@**/
    public without sharing class UserCreationHelperMethodWrapper{        
        public void UserCreationHelperMethodFunc(List<Contact> conList, Map<Id,Contact> oldMap){            
            list<Contact> lstCons = new list<Contact>();
            set<ID> setCons = new set<ID>();        
            for(Contact con : conList){
                //if(oldMap!= null && oldMap.containsKEy(con.ID) && con.Create_Portal_User__c && oldMap.get(con.Id).Create_Portal_User__c == false)
                //lstCons.add(con);
                if(Trigger.isInsert){
                    if(con.Create_Portal_User__c){
                        lstCons.add(con);
                        setCons.add(con.id);
                    }
                }
                else if(Trigger.isUpdate){
                    //if(oldMap.containsKEy(con.ID) && ((con.Create_Portal_User__c && oldMap.get(con.Id).Create_Portal_User__c == false) ||  con.Portal_User_Profile__c != oldMap.get(con.Id).Portal_User_Profile__c)){
                    if(oldMap.containsKEy(con.ID) && ((con.Create_Portal_User__c /*&& oldMap.get(con.Id).Create_Portal_User__c == false*/) ||  con.Portal_User_Profile__c != oldMap.get(con.Id).Portal_User_Profile__c)){
                        if(oldMap.get(con.Id).Create_Portal_User__c == false || con.Portal_User_Profile__c != oldMap.get(con.Id).Portal_User_Profile__c){
                            lstCons.add(con);
                        }
                        setCons.add(con.id);
                    }
                }
                
                //if(oldMap!= null && oldMap.containsKEy(con.ID) && con.Portal_User_Profile__c != oldMap.get(con.Id).Portal_User_Profile__c)      
                //lstCons2.add(con.ID);       
            }
            if(lstCons.size() > 0){
                UserCreation(lstCons);
            }
            if(setCons.size() > 0){
                ProfileChange(setCons);
            }            
        }   //  end of deleteContacts
    }// end of deleteProviderContactc//
    
    /**@@
#DESCRIPTION   : Creating user for contacts whose Create_Portal_User__c is true & Updates the contacts profile whose Portal_User_Profile__c is changed.
#Paramaters        : List,trigger.oldMap
@@**/
    public static void UserCreationHelperMethod(List<Contact> conList, Map<Id,Contact> oldMap){
        try{
            UserCreationHelperMethodWrapper objUCM = new UserCreationHelperMethodWrapper();
            objUCM.UserCreationHelperMethodFunc(conList, oldmap);
            
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//End of UserCreationHelperMethod method 
    
    /**@@
#DESCRIPTION   : Changing the user profile
#Paramaters        : set
@@**/
    @future
    public static void ProfileChange(set<ID> conset){
        
        map<string,ID> ProfilesMap = new map<String,ID>();
        set<ID> conIDs = new set<ID>();      
        map<ID,User> userMap = new map<ID,User>();
        list<User> lstUsers = new list<User>();
        
        list<Contact> conList;
        if(!conset.isEmpty()){
        conList = [SELECT ID,Portal_User_Profile__c,AccountId,Account.Name FROM Contact WHERE ID IN : conset];
        }
        for(Profile profileObj : [SELECT Id,Name from Profile where name = 'Partner Community Login - Prospect' OR name = 'Partner Community Login - Solution Provider' OR Name = 'Partner Community Login - Referral']){
            ProfilesMap.put(profileObj.Name,profileObj.ID);        
        }
        for(User UserObj :[SELECT ID,ContactID,ProfileID FROM User WHERE ContactID IN: conList]){
            userMap.put(UserObj.ContactID,UserObj);
        }
        
        for(Contact contactObj: conList){
            user UserObj = new user();
            if(userMap.containsKEy(contactObj.ID)){                        
                if(contactObj.Portal_User_Profile__c == 'Partner Prospect'){
                    UserObj.ID = userMap.get(contactObj.ID).ID;
                    UserObj.ProfileID =  ProfilesMap.get('Partner Community Login - Prospect');
                    lstUsers.add(UserObj); 
                }
                if(contactObj.Portal_User_Profile__c == 'Partner'){
                    UserObj.ID = userMap.get(contactObj.ID).ID;
                    UserObj.ProfileID =  ProfilesMap.get('Partner Community Login - Solution Provider');
                    lstUsers.add(UserObj); 
                }  
                if(contactObj.Portal_User_Profile__c == 'Referral Partner'){
                    UserObj.ID = userMap.get(contactObj.ID).ID;
                    UserObj.ProfileID =  ProfilesMap.get('Partner Community Login - Referral');
                    lstUsers.add(UserObj); 
                } 
            }
        }
        try{
            if(lstUsers.size() > 0){
                System.debug('@#$%^&@#$%^&@#$%^& List of Users To Be updated: '+lstUsers);
                update lstUsers;
            }
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//End of ProfileChange method
    
    /**@@
#DESCRIPTION   : Creating portal user
#Paramaters        : List
@@**/
    public static void UserCreation(list<Contact> conList){
        List<User> lstUser = new List<User>();
        Set<String> contactEmail = new Set<String>();
        Set<String> contactAlias = new Set<String>();
        Set<String> contactNickn = new Set<String>();    
        String uname = '';
        String alias = '';
        String nickn = '';  
        Set<String> finalUserAlias = new Set<String>();
        Set<String> finalUserNickn = new Set<String>();      
        Profile p = [SELECT Id,Name from Profile where name = 'Partner Community Login - Prospect' limit 1];
        for(Contact contactObj: conList){
            if(contactObj.Email==null){
                contactObj.addError('Please enter email');
            }    
            String tempAlias = '';
            contactEmail.add(contactObj.Email);
            if(!string.isEmpty(contactObj.FirstName) && contactObj.FirstName.length() > 0)
                tempAlias = contactObj.FirstName.substring(0,1);
            if(contactObj.LastName.length() >= 4)
                tempAlias += contactObj.LastName.substring(0,4);
            else
                tempAlias += contactObj.LastName;
            contactAlias.add(tempAlias);
            contactNickn.add(contactObj.Email.split('@')[0]);
        }
        for(User userObj : [Select Id, Name,UserName,Alias,ContactId from User where Alias IN: contactAlias]){
            finalUserAlias.add(userObj.Alias);
        }
        for(User userObj : [Select Id, Name,UserName,Alias,CommunityNickname,ContactId from User where CommunityNickname IN: contactNickn]){
            finalUserNickn.add(userObj.CommunityNickname);
        }
        for(Contact contactObj: conList){          
            User userObj = new User();
            if(!string.isEmpty(contactObj.FirstName) && contactObj.FirstName.length() > 0)
                alias = contactObj.FirstName.substring(0,1);
            if(contactObj.LastName.length() >= 4)
                alias += contactObj.LastName.substring(0,4);
            else
                alias += contactObj.LastName;
            if(finalUserAlias.contains(alias)){
                String str = String.valueOf(system.today().day());
                if(str.length()==1)
                    str = '0'+str;
                alias = alias+String.valueOf(system.today().day());
            }
            nickn = contactObj.Email.split('@')[0]; 
            if(finalUserNickn.contains(nickn)){
                nickn =contactObj.Email.split('@')[0]+String.valueOf(system.today().day());
            }
            userObj.Email= contactObj.Email;
            userObj.Username=contactObj.Email+'.Adaptive';
            userObj.CommunityNickName=nickn;
            userObj.Phone=contactObj.Phone;
            userObj.MobilePhone=contactObj.MobilePhone;
            userObj.Street=contactObj.MailingStreet;
            userObj.City=contactObj.MailingCity;
            userObj.State=contactObj.MailingState;
            userObj.PostalCode=contactObj.MailingPostalCode;
            userObj.Country=contactObj.MailingCountry;
            userObj.Alias=alias;
            userObj.LastName=contactObj.LastName;
            userObj.FirstName=contactObj.FirstName;            
            userObj.ProfileId=p.Id;
            userObj.ContactId=contactObj.Id;
            userObj.IsActive = true;
            userObj.EmailEncodingKey = 'ISO-8859-1';
            userObj.LocaleSidKey = 'en_US';
            userObj.LanguageLocaleKey = 'en_US';
            userObj.TimeZoneSidKey = 'America/Los_Angeles';
            lstUser.add(userObj);                                                                                                                      
        }      
        try{
            if(lstUser.size() > 0){
                insert lstUser;  
            }
        }
        catch(DMLException e){ 
            //System.debug('The following exception has occurred: ' + e.getMessage());
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//End of UserCreation method
    
    /**@@
#DESCRIPTION   : Set the status of a new contact depending on where it came from
#Paramaters        : trigger.new
@@**/
    public static void setNewContactStatus(List<Contact> newList)
    {
        for(Contact con : newList)
        {
            system.debug('con.Update_Contact_from_Lead_Convert__c>>>'+con.Update_Contact_from_Lead_Convert__c);
            // Contact was created from manual conversion, so set it to Qualified
            if(con.Update_Contact_from_Lead_Convert__c == 'YES')
            {
                con.Status__c = CustomConstants.ContactStatusQualified;
            }
            // contact was created from quick conversion
            else if(con.Update_Contact_from_Lead_Convert__c == 'No')
            {
                con.Status__c = CustomConstants.ContactStatusNew;
            }
            // contact was created manually
            else if(con.Update_Contact_from_Lead_Convert__c == null)
            {
                con.Status__c = CustomConstants.ContactStatusQualified;
            }
        }
    }//END OF METHOD
    
    /**@@
#DESCRIPTION   : Populate the timestamp field based on Lifecycle
#Paramaters        : trigger.new, trigger.old
@@**/
    public static void populateTimestampLifecycle(List<Contact> newList, Map<Id,Contact> oldMap){
        for(Contact contactObj:newList){
            if(oldMap == null || (oldMap.containsKey(contactObj.id) && oldMap.get(contactObj.id).Lifecycle_Stage__c != contactObj.Lifecycle_Stage__c)){
                //Lifecycle changes to MAL
                if(contactObj.Lifecycle_Stage__c == CustomConstants.LifecycleMAL){
                    contactObj.Timestamp_Lifecycle_MAL__c = system.now();
                }
                //Lifecycle changes to MQL
                if(contactObj.Lifecycle_Stage__c == CustomConstants.LifecycleMQL){
                    contactObj.Timestamp_Lifecycle_MQL__c = system.now();
                }
                //Lifecycle changes to SAL
                else if(contactObj.Lifecycle_Stage__c == CustomConstants.LifecycleSAL){
                    contactObj.Timestamp_Lifecycle_SAL__c = system.now();
                }
                //Lifecycle changes to SQL
                else if(contactObj.Lifecycle_Stage__c == CustomConstants.LifecycleSQL){
                    contactObj.Timestamp_Lifecycle_SQL__c = system.now();
                }
                //Lifecycle changes to SAO
                else if(contactObj.Lifecycle_Stage__c == CustomConstants.LifecycleSAO){
                    contactObj.Timestamp_Lifecycle_SAO__c = system.now();
                }
                // Lifecycle changes to SQO
                else if(contactObj.Lifecycle_Stage__c == CustomConstants.LifecycleSQO){
                    // if the old stage was SQL, timestamp SAO as well
                    if(oldMap != null && oldMap.get(contactObj.id).Lifecycle_Stage__c == CustomConstants.LifecycleSQL)
                    {
                        contactObj.Timestamp_Lifecycle_SAO__c = system.now();
                    }
                    contactObj.Timestamp_Lifecycle_SQO__c = system.now();
                }
                //Lifecycle changes to Customer
                else if(contactObj.Lifecycle_Stage__c == CustomConstants.LifecycleCustomer){
                    contactObj.Timestamp_Lifecycle_Customer__c = system.now();
                }
            }//END OF IF
        }//END OF FOR LOOP
    }//END OF METHOD
    
    /**@@
#DESCRIPTION       : Set Contact status to Restored when the lead score increases, and it is 30 or above, and the contact status is Unqualified or Unresponsive.
#Paramaters        : trigger.new,trigger.oldMap
@@**/
    public static void setContactStatusRestored(list<Contact> newList, Map<Id,Contact> oldMap){
        for(Contact ContactObj : newList){
            if((ContactObj.Calculated_Score__c > oldMap.get(ContactObj.id).Calculated_Score__c) && (ContactObj.Calculated_Score__c>= 30)){
                if(ContactObj.Status__c == CustomConstants.ContactStatusUnqualified  || ContactObj.Status__c == CustomConstants.ContactStatusUnresponsive){
                    ContactObj.Status__c = CustomConstants.ContactStatusRestored;
                }
            }
        }
    }//END OF METHOD 
    /**@@
#DESCRIPTION       : Update Contact Lifecycle based on its status.
#Paramaters        : trigger.new,trigger.oldMap
@@**/
    public static void setContactLifecycleOnStatusChange(List<Contact> newList, Map<Id,Contact> oldMap){
        for(Contact contactObj : newList){
            if(Trigger.isInsert || (Trigger.isUpdate && oldMap != null && oldMap.containsKey(contactObj.Id) && oldMap.get(contactObj.Id).Status__c != contactObj.Status__c)){
                
                //If status is New
                if(contactObj.Status__c == CustomConstants.ContactStatusNew){
                    contactObj.Lifecycle_Stage__c = CustomConstants.LifecycleMQL;
                }
                //If status is Pursuing
                else if(contactObj.Status__c == CustomConstants.ContactStatusPursuing){
                    contactObj.Lifecycle_Stage__c = CustomConstants.LifecycleSAL;
                }
                //If status is Restored
                else if(contactObj.Status__c == CustomConstants.ContactStatusRestored){
                    contactObj.Lifecycle_Stage__c = CustomConstants.LifecycleMQL;
                }
                //If status is Unqualified or Unresponsive
                else if(contactObj.Status__c == CustomConstants.ContactStatusUnqualified || contactObj.Status__c == CustomConstants.ContactStatusUnresponsive){
                    contactObj.Lifecycle_Stage__c = CustomConstants.LifecycleMAL;
                }
                //If status is Qualified
                else if(contactObj.Status__c == CustomConstants.ContactStatusQualified){
                    contactObj.Lifecycle_Stage__c = CustomConstants.LifecycleSQL;
                }
            }//END OF IF
        }//END OF FOR
    }//END OF METHOD
    
    /**@@
#DESCRIPTION       : Update Contact Lifecycle based on account status or opportunity stage
#Paramaters        : trigger.new,trigger.oldMap
@@**/
    public static void setContactLifecycleOnOpptyStage(list<Contact> newList, Map<Id,Contact> oldMap)
    {
        Set<Id> accIds = new Set<Id>();
        map<Id,Account> accMap;
        String lifecycle;
        Account acc;
        
        // get the list of account ids we need to grab
        for(Contact con : newList){
            // Only checking contacts if they are marked as Qualified
            if(con.Status__c != CustomConstants.ContactStatusQualified)
                continue;
            
            //if there's no account, then skip
            if(con.AccountId == null)
                continue;
            
            // check to see if status changed or is a new contact, if it did/is, then add its account
            if(Trigger.isInsert || (Trigger.isUpdate && oldMap != null && oldMap.containsKey(con.Id) && oldMap.get(con.Id).Status__c != con.Status__c))
            {
                accIds.add(con.AccountId);
            }
        }
        if(!accIds.isEmpty()){
            accMap = new map<Id,Account>([Select id, Type, Status__c, (Select Id, StageName FROM Opportunities WHERE Type = 'New' AND SBQQ__Renewal__c = False AND StageName != 'Disqualified' AND StageName != 'Closed Lost' AND StageName != 'Closed Non-Pursuit' AND StageName != 'Closed Won' AND StageName != 'Closed Won - Installments') from Account Where Id IN:accIds AND Type NOT IN (:CustomConstants.AccountTypePartnerProspect, :CustomConstants.AccountTypePartner) ]);
            
            // go through contacts to update lifecycle
            for(Contact con : newList){
                // Only updating contacts if they are marked as Qualified
                if(con.Status__c != CustomConstants.ContactStatusQualified)
                    continue;
                
                // if the account id is not in the map, skip
                if(accMap == null || !accMap.containsKey(con.AccountId))
                    continue;
                
                acc = accMap.get(con.AccountId);
                
                lifecycle = '';
                
                // check if customer
                if(acc.Type == CustomConstants.AccountTypeCustomer && acc.Status__c != CustomConstants.AccountStsCancelled){
                    lifecycle = CustomConstants.LifecycleCustomer;
                }
                // else get lifecycle base off of opportunity stage
                else if(acc.opportunities.size() == 1){
                    lifecycle = Trigger_Opportunity_Helper.getLifecycleForCon(acc.opportunities[0]);
                }
                
                // if we're not updating lifecycle, move onto next contact
                if(lifecycle == '')
                    continue;
                
                con.Lifecycle_Stage__c = lifecycle;
            }
        }
    }
    /**@@
#DESCRIPTION       : Convert State Names in to two digit Codes
#Paramaters        : trigger.new
@@**/
    public static void convertMailingStateNamesOnContact(List<Contact> newList){
        for( Contact l : newList ) {
            if (!String.isBlank(l.MailingState)) {
                if (l.MailingState.equalsIgnoreCase('Alabama')) l.MailingState = 'AL';
                else if (l.MailingState.equalsIgnoreCase('Alaska')) l.MailingState =  'AK' ;
                else if (l.MailingState.equalsIgnoreCase('Arizona')) l.MailingState =  'AZ' ;
                else if (l.MailingState.equalsIgnoreCase('Arkansas')) l.MailingState =  'AR' ;
                else if (l.MailingState.equalsIgnoreCase('California')) l.MailingState = 'CA' ;
                else if (l.MailingState.equalsIgnoreCase('Colorado')) l.MailingState = 'CO' ;
                else if (l.MailingState.equalsIgnoreCase('Connecticut')) l.MailingState = 'CT' ;
                else if (l.MailingState.equalsIgnoreCase('Delaware')) l.MailingState = 'DE' ;
                else if (l.MailingState.equalsIgnoreCase('Florida')) l.MailingState = 'FL' ;
                else if (l.MailingState.equalsIgnoreCase('Georgia')) l.MailingState = 'GA' ;
                else if (l.MailingState.equalsIgnoreCase('Hawaii')) l.MailingState = 'HI' ;
                else if (l.MailingState.equalsIgnoreCase('Idaho')) l.MailingState = 'ID' ;
                else if (l.MailingState.equalsIgnoreCase('Illinois')) l.MailingState = 'IL' ;
                else if (l.MailingState.equalsIgnoreCase('Indiana')) l.MailingState = 'IN' ;
                else if (l.MailingState.equalsIgnoreCase('Iowa')) l.MailingState = 'IA' ;
                else if (l.MailingState.equalsIgnoreCase('Kansas')) l.MailingState = 'KS'; 
                else if (l.MailingState.equalsIgnoreCase('Kentucky')) l.MailingState = 'KY'; 
                else if (l.MailingState.equalsIgnoreCase('Louisiana')) l.MailingState = 'LA'; 
                else if (l.MailingState.equalsIgnoreCase('Maine')) l.MailingState = 'ME' ;
                else if (l.MailingState.equalsIgnoreCase('Maryland')) l.MailingState = 'MD'; 
                else if (l.MailingState.equalsIgnoreCase('Massachusetts')) l.MailingState = 'MA' ;
                else if (l.MailingState.equalsIgnoreCase('Michigan')) l.MailingState = 'MI' ;
                else if (l.MailingState.equalsIgnoreCase('Minnesota')) l.MailingState = 'MN' ;
                else if (l.MailingState.equalsIgnoreCase('Mississippi')) l.MailingState = 'MS' ;
                else if (l.MailingState.equalsIgnoreCase('Missouri')) l.MailingState = 'MO' ;
                else if (l.MailingState.equalsIgnoreCase('Montana')) l.MailingState = 'MT' ;
                else if (l.MailingState.equalsIgnoreCase('Nebraska')) l.MailingState = 'NE' ;
                else if (l.MailingState.equalsIgnoreCase('Nevada')) l.MailingState = 'NV' ;
                else if (l.MailingState.equalsIgnoreCase('New Hampshire')) l.MailingState = 'NH' ;
                else if (l.MailingState.equalsIgnoreCase('New Jersey')) l.MailingState = 'NJ' ;
                else if (l.MailingState.equalsIgnoreCase('New Mexico')) l.MailingState = 'NM' ;
                else if (l.MailingState.equalsIgnoreCase('New York')) l.MailingState = 'NY' ;
                else if (l.MailingState.equalsIgnoreCase('North Carolina')) l.MailingState = 'NC' ;
                else if (l.MailingState.equalsIgnoreCase('North Dakota')) l.MailingState = 'ND' ;
                else if (l.MailingState.equalsIgnoreCase('Ohio')) l.MailingState = 'OH' ;
                else if (l.MailingState.equalsIgnoreCase('Oklahoma')) l.MailingState = 'OK' ;
                else if (l.MailingState.equalsIgnoreCase('Oregon')) l.MailingState = 'OR' ;
                else if (l.MailingState.equalsIgnoreCase('Pennsylvania')) l.MailingState = 'PA' ;
                else if (l.MailingState.equalsIgnoreCase('Rhode Island')) l.MailingState = 'RI' ;
                else if (l.MailingState.equalsIgnoreCase('South Carolina')) l.MailingState = 'SC' ;
                else if (l.MailingState.equalsIgnoreCase('South Dakota')) l.MailingState = 'SD' ;
                else if (l.MailingState.equalsIgnoreCase('Tennessee')) l.MailingState = 'TN' ;
                else if (l.MailingState.equalsIgnoreCase('Texas')) l.MailingState = 'TX' ;
                else if (l.MailingState.equalsIgnoreCase('Utah')) l.MailingState = 'UT' ;
                else if (l.MailingState.equalsIgnoreCase('Vermont')) l.MailingState = 'VT' ;
                else if (l.MailingState.equalsIgnoreCase('Virginia')) l.MailingState = 'VA' ;
                else if (l.MailingState.equalsIgnoreCase('Washington')) l.MailingState = 'WA' ;
                else if (l.MailingState.equalsIgnoreCase('West Virginia')) l.MailingState = 'WV' ;
                else if (l.MailingState.equalsIgnoreCase('Wisconsin')) l.MailingState = 'WI' ;
                else if (l.MailingState.equalsIgnoreCase('Wyoming')) l.MailingState = 'WY' ;
                else if (l.MailingState.equalsIgnoreCase('Ontario')) l.MailingState = 'ON' ;
                else if (l.MailingState.equalsIgnoreCase('Quebec')) l.MailingState = 'QC' ;
                else if (l.MailingState.equalsIgnoreCase('QuéBec')) l.MailingState = 'QC' ;
                else if (l.MailingState.equalsIgnoreCase('British Columbia')) l.MailingState = 'BC' ;
                else if (l.MailingState.equalsIgnoreCase('Alberta')) l.MailingState = 'AB' ;
                else if (l.MailingState.equalsIgnoreCase('Manitoba')) l.MailingState = 'MB' ;
                else if (l.MailingState.equalsIgnoreCase('Saskatchewan')) l.MailingState = 'SK' ;
                else if (l.MailingState.equalsIgnoreCase('Nova Scotia')) l.MailingState = 'NS' ;
                else if (l.MailingState.equalsIgnoreCase('New Brunswick')) l.MailingState = 'NB' ;
                else if (l.MailingState.equalsIgnoreCase('Newfoundland And Labrador')) l.MailingState = 'NL' ;
                else if (l.MailingState.equalsIgnoreCase('Prince Edward Island')) l.MailingState = 'PE' ;
                else if (l.MailingState.equalsIgnoreCase('Northwest Territories')) l.MailingState = 'NT' ;
                else if (l.MailingState.equalsIgnoreCase('Yukon')) l.MailingState = 'YT' ;
                else if (l.MailingState.equalsIgnoreCase('Nunavut')) l.MailingState = 'NU' ;
                else if (l.MailingState.equalsIgnoreCase('Alberta')) l.MailingState =  'AB' ;
                else if (l.MailingState.equalsIgnoreCase('British Columbia')) l.MailingState =  'BC' ;
                else if (l.MailingState.equalsIgnoreCase('Manitoba')) l.MailingState =  'MB' ;
                else if (l.MailingState.equalsIgnoreCase('New Brunswick')) l.MailingState = 'NB' ;
                else if (l.MailingState.equalsIgnoreCase('Newfoundland and Labrador')) l.MailingState = 'NL' ;
                else if (l.MailingState.equalsIgnoreCase('Nova Scotia')) l.MailingState = 'NS' ;
                else if (l.MailingState.equalsIgnoreCase('Ontario')) l.MailingState = 'ON' ;
                else if (l.MailingState.equalsIgnoreCase('Quebec')) l.MailingState = 'QC' ;
                else if (l.MailingState.equalsIgnoreCase('Saskatchewan')) l.MailingState = 'SK' ;
                else if (l.MailingState.equalsIgnoreCase('Prince Edward Island')) l.MailingState = 'PE' ;
                else if (l.MailingState.equalsIgnoreCase('Northwest Territories')) l.MailingState = 'NT' ;
                else if (l.MailingState.equalsIgnoreCase('Nunavut')) l.MailingState = 'NU' ;
                else if (l.MailingState.equalsIgnoreCase('Yukon')) l.MailingState = 'YT' ;
                else if (l.MailingState.equalsIgnoreCase('Australian Capital Territory')) l.MailingState = 'ACT' ;
                else if (l.MailingState.equalsIgnoreCase('New South Wales')) l.MailingState = 'NSW'; 
                else if (l.MailingState.equalsIgnoreCase('Northern Territory')) l.MailingState = 'NT'; 
                else if (l.MailingState.equalsIgnoreCase('Queensland')) l.MailingState = 'QLD'; 
                else if (l.MailingState.equalsIgnoreCase('South Australia')) l.MailingState = 'SA' ;
                else if (l.MailingState.equalsIgnoreCase('Tasmaina')) l.MailingState = 'TAS'; 
                else if (l.MailingState.equalsIgnoreCase('Victoria')) l.MailingState = 'VIC' ;
                else if (l.MailingState.equalsIgnoreCase('Western Australia')) l.MailingState = 'WA' ;
            }
        }
    }
    
            /**@@       
#DESCRIPTION     : This method is used to set Email Opt-Out field if the conditions are met     
#Paramaters      : List<Contact> newList - List of contacts being updated/inserted      
#Return type     : void     
@@**/           
    public static void setEmailOptOut(List<Contact> newList)        
    {       
        for(Contact conObj : newList)       
        {       
            // if it's already true, no need to check       
            if(conObj.HasOptedOutOfEmail)       
                continue;       
            // if the lead has been unqualified, check reason       
            if(conObj.Status__c == CustomConstants.ContactStatusUnqualified)        
            {       
                // if the unqualified reason is NLWC or competitor, then mark it        
                if(conObj.Unqualified_Reason__c == CustomConstants.ReasonNLWC || conObj.Unqualified_Reason__c == CustomConstants.ReasonCompAlt)     
                    conObj.HasOptedOutOfEmail = true;       
            }                   
        }
      }
}//End of class