global class NetExamWebServiceAPIHelper80
{
    public class MissingAccountInformationException extends Exception{}
    public class NetExamWebserviceException extends Exception{}
    public with sharing class TestException extends Exception {}
      

    // Fullbox NetExam API Credentials    
    private static string ne_apiKey = System.Label.NetExam_API_Key;
   private static string ne_apiUser = System.Label.NetExam_API_User; 
   private static string ne_apiPass = System.Label.NetExam_API_Pass; 
    
    // Production NetExam API Credentials (these are Dummy credentials as Production is SSO)
   // private static string ne_apiKey = 'APIKey';
    //private static string ne_apiUser = 'APIUsername';
   // private static string ne_apiPass = 'APIPassword';

    
    public static string contactSalesforceErrorMsg = 'Salesforce is unable to send the Contact details to NetExam. ';
    private static string trainingCreditsName = 'Training Credits';
    private static List<String> exceptionsContacts = new List<String>();
   
    @Future(callout=true)
    public static void SendContactListToNetExam(Set<Id> contactIDList)
    {
        try
        {
            
            webservicesNetexamComUserservice80.ArrayOfUserExtended Users = GetNetExamUsers(contactIDList);            
            
            if(Users != null)
            {
                BulkUpsertUsersWithUserGroups(Users);
            }            
            
        }
        catch(Exception e)
        {
            System.debug('SendContactListToNetExam Exception: ' + e);
        }
    }    
   
   
    private static webservicesNetexamComUserservice80.ArrayOfUserExtended GetNetExamUsers(Set<Id> contactIDList)
    {
      
         webservicesNetexamComUserservice80.ArrayOfUserExtended Users = new webservicesNetexamComUserservice80.ArrayOfUserExtended();
         Users.UserExtended =  new webservicesNetexamComUserservice80.UserExtended[]{}; 
         
         webservicesNetexamComUserservice80.UserExtended neUser = null;         
         
         try
         {
              for(String contactId: contactIDList)
              {
                  try
                  {           
                      neUser = CreateNetExamUser(contactId); 
                      
                      System.debug('FOUND CONTACT ID: ' + neUser.ExternalID);                                       
                       
                      if(neUser.ExternalID != '')
                      {
                          Users.UserExtended.Add(neUser);
                      }
                  }
                  catch(Exception innerEx)
                  {
                      //LOG AND MOVE ON TO NEXT CONTACT
                  }
        
               }
          }
          catch(Exception ex)
          {
              System.debug('GetNetExamUsers: ' + ex);
              throw ex;
          }
    
          return Users; 

    }
    
    private static webservicesNetexamComUserservice80.UserExtended CreateNetExamUser(string contactID)
    {
        string transactionResult = 'Contact Not sent: Invalid Contact ID';

        webservicesNetexamComUserservice80.UserExtended neUser = new webservicesNetexamComUserservice80.UserExtended();
        try
        {
            
            if(String.isNotBlank(contactID))
            {
            
               Contact objContact = [Select 
                                       ID,
                                       FirstName,
                                       LastName,
                                       Email,
                                       Phone,
                                       MailingStreet,
                                       MailingCity,
                                       MailingCountry,
                                       MailingState,
                                       MailingPostalCode,                                      
                                       Contact.Account.ID,
                                       Contact.Account.BillingStreet,
                                       Contact.Account.BillingCountry,
                                       Contact.Account.BillingCity,
                                       Contact.Account.BillingState,
                                       Contact.Account.BillingPostalCode,
                                       Contact.Account.Name,
                                       Contact.Account.OwnerId,
                                       Contact.Account.Type,   
                                       Contact.Account.Account_Status__c,
                                       Contact.eLearning_Admin__c                                  
                                       FROM Contact WHERE ID = :contactID LIMIT 1]; 
                                       
                                       
                if(objContact == null) 
                {
                    transactionResult = contactID + ': Contact Not sent. Invalid Contact ID';
                    exceptionsContacts.add(transactionResult);
                    return neUser;
                }
                    
                    
                if((String.isBlank(objContact.ID)) ||
                   (String.isBlank(objContact.Account.ID)) ||
                   (String.isBlank(objContact.FirstName)) ||
                   (String.isBlank(objContact.LastName)) ||
                   (String.isBlank(objContact.Email))
                ){
                    transactionResult = contactID + ': Contact Not Sent.Invalid Contact field values. Check Account, First Name, Last Name and Email';
                    exceptionsContacts.add(transactionResult);
                    return neUser;
                 }
                
               
            
                string sfdcContactID = objContact.ID;
                string firstName = objContact.FirstName;
                string lastName = objContact.LastName;
                string email = objContact.Email;                
                string accountID = objContact.Account.ID;
                string accountCountry = objContact.Account.BillingCountry;
                string accountName = objContact.Account.Name;    
                string accountStatus = objContact.Account.Account_Status__c;
                string accountType = objContact.Account.Type; 
                            
                string language = 'English';
                string userType = 'Partner';
                string userRole = '';
                if (objContact.eLearning_Admin__c){
                  userRole = 'Group Admin';
                }
                else {
                  userRole = 'Student'; 
                } 
                string managerSFDCContactID = '';
                string UsersCountry = 'USA';
                string UsersStatus = '';        
                string userName = '';  
                string businessPhone = '';  
                string UsersUserType = userType; 
                string userActive = '1';
                string errorMsg = '';          
                
                
                //Optional variables: Default to empty strings if not used
                string jobTitle = '';
                string ContactsTimeZone = '';
                string personalEmail = '';
                string address1 = '';
                string address2 = '';
                string city = '';
                string postalCode = '';
                string state = '';
                string jobCategory = '';
                DateTime UsersStartDate = NULL;
                string UsersUserRole = '';
                string SalesforceUserID = '';
                String sfdcUserId = '';
                String hireDate = '';
                string formattedStartDate = '';
                string userGroupMgrUserId = '';
                string userGroupMgrContactId = '';
                string userGroupMgrExternalId = '';
                string secondaryUserGroup = 'Invalid';
                string groupName = '';
                Boolean bSendToNetExam = true;
                Boolean bUserTypeDefined = false;
                
                
                //transactionResult = 'ACCOUNT STATUS: ' + accountStatus;
                //exceptionsContacts.add(transactionResult);
                //return neUser;
              
                
                if(!bSendToNetExam)
                {
                    transactionResult = contactID + ': Contact Not Sent. Please make sure the NetExam Access checkbox is checked';
                    exceptionsContacts.add(transactionResult);
                    return neUser;
                }
                            
                                    
                if(String.isNotBlank(userName))
                {
                  userName = email;
                }
            
                    
                //Check to make sure the required fields for the account object have the required information
                errorMsg = ValidateAccountData(accountName, accountID, accountCountry);        
                if(errorMsg != 'Success'){
                    transactionResult = contactID + ': Missing Account Information. Contact was not sent. ' + errorMsg;
                    exceptionsContacts.add(transactionResult);
                    return neUser;
                }
                        
                //Check to make sure the required fields for the account object have the required information
                errorMsg = ValidateContactData(sfdcContactID, firstName, lastName, email, language, userType, userRole, managerSFDCContactID);
                if(errorMsg != 'Success'){
                        
                    transactionResult = contactID + ': Missing Contact Data. Contact was not sent. ' + errorMsg;
                    exceptionsContacts.add(transactionResult);
                    return neUser;
                }                           
           
                //Get Business Phone
                try { businessPhone = ((String.isNotBlank(objContact.Phone)) ? objContact.Phone : '');} catch(Exception e){ businessPhone = '';}
                
                 //Get Street Address
                try { address1 = ((String.isNotBlank(objContact.MailingStreet)) ? objContact.MailingStreet : (String.isNotBlank(objContact.Account.BillingStreet)? objContact.Account.BillingStreet: ''));} catch(Exception e){ address1 = '';}
                        
                //Get City
                try { city = ((String.isNotBlank(objContact.MailingCity)) ? objContact.MailingCity : (String.isNotBlank(objContact.Account.BillingCity) ? objContact.Account.BillingCity : ''));} catch(Exception e){ city = '';}
                
                //Get the Country //check on null for account
                try { UsersCountry = ((String.isNotBlank(objContact.MailingCountry)) ? objContact.MailingCountry:(String.isNotBlank(objContact.Account.BillingCountry) ? objContact.Account.BillingCountry : 'USA')); } catch(Exception e){ UsersCountry = 'USA'; }
                
                //Get State 
                try { state = ((String.isNotBlank(objContact.MailingState)) ? objContact.MailingState : (String.isNotBlank(objContact.Account.BillingState) ? objContact.Account.BillingState : '')); } catch(Exception e){ state = ''; }
                
                //Get Postal Code
                try { postalCode = ((String.isNotBlank(objContact.MailingPostalCode)) ? objContact.MailingPostalCode : (String.isNotBlank(objContact.Account.BillingPostalCode) ? objContact.Account.BillingPostalCode : '')); } catch(Exception e){ postalCode = ''; }
                
                //Get the User Id for the user who is the Account owner
                try { userGroupMgrUserId = ((String.isNotBlank(objContact.Account.OwnerId)) ? objContact.Account.OwnerId : ''); } catch(Exception e){ userGroupMgrUserId = ''; }
                                  
                      
               //Try to get the Contact Id if there is a Contact record associated with the User
               //NetExam prefares to use Contact Id as the External Id
               if(String.isNotBlank(userGroupMgrUserId))
               {
                   if(userGroupMgrUserId.length() > 0){ 
                      List<User> objUsrMgr = [Select ContactId FROM User WHERE Id = : userGroupMgrUserId LIMIT 1];        
                      try { userGroupMgrContactId = ((String.isEmpty(objUsrMgr[0].ContactId)) ? '': objUsrMgr[0].ContactId); } catch(Exception e){userGroupMgrContactId = '';}      
                   }
               } 
           
               //If Contact Id was found, use it otherwise just send the User Id.
               if(String.isNotBlank(userGroupMgrContactId))
               {
                   if(userGroupMgrContactId.length() > 0)
                       userGroupMgrExternalId = userGroupMgrContactId;
                   else
                       userGroupMgrExternalId = userGroupMgrUserId; 
               }     
              
            
                // Ensure that we have a valid country by setting a default
               if(String.isBlank(accountCountry))
               {
                  accountCountry = 'USA';
               }       
               
               if(String.isBlank(UsersCountry)) 
               {
                  UsersCountry = 'USA';
               }       

               // Ensure that we have a valid language by setting a default
               if(String.isBlank(language))
               {
                  language = 'English';
               } 
                        
            
               Boolean emailOptIn = true;
               Boolean preserveUserGroup = false; 
                
               //Try and pull the User Id from the User record if it exists
               List<User> objUser = [Select Id FROM User WHERE ContactId = :sfdcContactID LIMIT 1]; 
               if(objUser != null)
               {       
                  try{
                        sfdcUserId = objUser[0].Id;
                     }
                     catch(Exception e){
                       //Do Nothing with this exception
                       System.debug('Error Finding User: ' + e);             
                     }
               }     

               webservicesNetexamComUserservice80.ArrayOfCustomField CustomFields = new webservicesNetexamComUserservice80.ArrayOfCustomField();
               CustomFields.CustomField=  new webservicesNetexamComUserservice80.CustomField[]{};
               
               //Temporary Custom Field to hold the Account ID 
               webservicesNetexamComUserservice80.CustomField cAccountId = new webservicesNetexamComUserservice80.CustomField();
               cAccountId.Name = 'CAccountID';
               cAccountId.Value = accountID;  
                
               CustomFields.CustomField.Add(cAccountId);     
              
               // Create the array of user groups to send to NetExam. Only the PrimaryGroup is required.
               webservicesNetexamComUserservice80.ArrayOfUserUserGroup Groups = new webservicesNetexamComUserservice80.ArrayOfUserUserGroup();
               Groups.UserUserGroup =  new webservicesNetexamComUserservice80.UserUserGroup[]{};              
                
                
               // ADD ACCOUNT AS PRIMARY USER GROUP
               webservicesNetexamComUserservice80.UserUserGroup PrimaryGroup = new webservicesNetexamComUserservice80.UserUserGroup();
               PrimaryGroup.Name = accountName;
               PrimaryGroup.ExternalID = accountID;
               PrimaryGroup.IsPrimaryUserGroup = 1;
               PrimaryGroup.Country = accountCountry;
               PrimaryGroup.AccountManagerExternalID = userGroupMgrExternalId; 
                
               Groups.UserUserGroup.add(PrimaryGroup); 
               
               string additionalUserGroup = '';
                
               List<Opportunity> objOpp_EL = [SELECT Opportunity.Name 
                                               FROM Opportunity WHERE StageName LIKE 'Closed Won%'
                                               AND Id IN(SELECT OpportunityId FROM OpportunityLineItem WHERE Product2.Name LIKE '%eLearning%') 
                                               AND Account.Id = : accountID ORDER BY CloseDate DESC LIMIT 1];
                
                if(objOpp_EL.size() > 0)
                {       
                  try{
                        //ADDITIONAL 
                        additionalUserGroup = '0Adaptive eLearning';
                        
                        webservicesNetexamComUserservice80.UserUserGroup AdditionalGroup = new webservicesNetexamComUserservice80.UserUserGroup();
                        AdditionalGroup.Name = additionalUserGroup;
                        AdditionalGroup.ExternalID = additionalUserGroup;
                        AdditionalGroup.IsPrimaryUserGroup = 0;
                        AdditionalGroup.Country = 'USA';
                        AdditionalGroup.AccountManagerExternalID = '';   
                        
                        Groups.UserUserGroup.add(AdditionalGroup);
                        
                        //if((accountStatus.startsWithIgnoreCase('Customer')))
                        if((accountType.startsWithIgnoreCase('Customer')))
                        {  
                           userType = 'eLearning Customer';
                           bUserTypeDefined = true;  
                        }

                        
                     }
                     catch(Exception ex)
                     {
                         System.debug('Error Adding Elearning Opportunity Group 0Adaptive eLearning: ' + ex); 
                     }
                     
                }                         
                
                
               //ONLY CONTACTS BELONGING TO ACCOUNTS WITH ACCOUNT STATUS = CUSTOMER OR PARTNER WILL BE SENT TO NETEXAM
               //if(String.isNotBlank(accountStatus)){
               if(String.isNotBlank(accountType)){
                    if(!bUserTypeDefined)
                    {
                        //if((accountStatus.startsWithIgnoreCase('Customer')))
                        if((accountType.startsWithIgnoreCase('Customer')))
                        {  
                           userType = 'Customer';  
                        }
                    
                        //if((accountStatus.startsWithIgnoreCase('Partner')))
                        if((accountType.startsWithIgnoreCase('Partner')))
                        { 
                            userType = 'Partner'; 
                        
                            //IF ACCOUNT IS PARTNER ADD ADDITIONAL ADAPTIVE ELEARNING USER GROUP
                            //ADDITIONAL 
                            additionalUserGroup = '0Adaptive eLearning';
                            
                            webservicesNetexamComUserservice80.UserUserGroup AdditionalPartnerGroup = new webservicesNetexamComUserservice80.UserUserGroup();
                            AdditionalPartnerGroup.Name = additionalUserGroup;
                            AdditionalPartnerGroup.ExternalID = additionalUserGroup;
                            AdditionalPartnerGroup.IsPrimaryUserGroup = 0;
                            AdditionalPartnerGroup.Country = 'USA';
                            AdditionalPartnerGroup.AccountManagerExternalID = '';   
                            
                            Groups.UserUserGroup.add(AdditionalPartnerGroup); 
                        }

                        if(userType == '')
                        {
                                transactionResult = 'Contact Not Sent: This Contacts account is not listed as a "customer" or "partner".  Please contact training@adaptiveinsights.com to set this person up in NetExam';
                                exceptionsContacts.add(transactionResult);
                                return neUser;
                        }
                    }
                }
                else{
                    //Get Exception rule
                            transactionResult = 'Contact Not Sent: This Contacts account is not listed as a "customer" or "partner".  Please contact training@adaptiveinsights.com to set this person up in NetExam';
                            exceptionsContacts.add(transactionResult);
                            return neUser;
                }
               

                //NetExam User
                neUser.FirstName = firstName;
                neUser.LastName = lastName;
                neUser.UserName = userName;
                neUser.Email = email;
                neUser.BusinessPhone = businessPhone;
                neUser.PersonalEmail = personalEmail;
                neUser.Address1 = address1; 
                neUser.Address2 = address2; 
                neUser.City = city;
                neUser.State = state;
                neUser.TimeZone = ContactsTimeZone; 
                neUser.PostalCode = postalCode; 
                neUser.Country = UsersCountry; 
                neUser.Language = language;
                neUser.UserGroups = Groups; 
                neUser.JobCategory = jobCategory; 
                neUser.JobTitle = jobTitle; 
                neUser.UserTypeName = userType; 
                neUser.ExternalID = sfdcContactID; 
                neUser.ExternalUserID = sfdcUserId;
                neUser.Status = userActive; 
                neUser.ManagerExternalID = managerSFDCContactID; 
                neUser.PreserveUserGroup = preserveUserGroup; 
                neUser.customFields = CustomFields;     
                neUser.UserRole = userRole;
                neUser.AlternateEmail = '';
                neUser.version = 0;         
                //emailOptIn
                //hireDate
            }
        }
        catch(Exception ex)
        {
           System.debug('CreateNetExamUser: ' + ex);              
           throw ex;
        } 
                       
        return neUser;

    }
    
     Webservice static string SendContactToNetExam(string contactID)
    {
        string transactionResult = 'Contact Sent Successfully';
        
        webservicesNetexamComUserservice80.UserExtended neUser = CreateNetExamUser(contactId);
        
        if(String.isBlank(neUser.ExternalID))
        {
            if(exceptionsContacts.size() > 0)
            {
                transactionResult = exceptionsContacts.get(0);
                exceptionsContacts.clear();
            }
        
        }
        else
        {
             //GET THE ACCOUNT ID AND CLEAR THE CUSTOM FIELD SINCE WE WERE USING IT JUST TO HOLD THE ACCOUNT ID TEMPORARILY 
             webservicesNetexamComUserservice80.CustomField cAccountId = neUser.customFields.CustomField[0];
             string sAccountId = cAccountId.Value;
             neUser.customFields.CustomField.Remove(0);
             
             // Send the Contact to NetExam
             Boolean bStatus = ((neUser.Status=='1')?true:false);                                                                                                                                                                                                                                                                                                                                                         
             string errorMsg = UpsertUserWithUserGroupsExtended(ne_apiKey, 
                                                               ne_apiUser, 
                                                               ne_apiPass,
                                                               neUser.FirstName, 
                                                               neUser.LastName, 
                                                               neUser.UserName,
                                                               neUser.UserRole, 
                                                               neUser.Email, 
                                                               neUser.BusinessPhone, 
                                                               neUser.PersonalEmail, 
                                                               neUser.Address1, 
                                                               neUser.Address2, 
                                                               neUser.City, 
                                                               neUser.State, 
                                                               neUser.TimeZone, 
                                                               neUser.PostalCode, 
                                                               neUser.Country, 
                                                               neUser.Language,
                                                               neUser.UserGroups, 
                                                               neUser.JobCategory, 
                                                               neUser.JobTitle, 
                                                               neUser.UserTypeName, 
                                                               neUser.ExternalID, 
                                                               neUser.ExternalUserID,
                                                               bStatus, 
                                                               neUser.ManagerExternalID, 
                                                               neUser.PreserveUserGroup, 
                                                               neUser.customFields, 
                                                               false,
                                                               '');
               
                if(errorMsg != 'Success')
                {
                    transactionResult = 'Error Sending Data to NE web service. Contact was not sent. ' + errorMsg;
                }
                else{
                                     
                  List<Opportunity> trainingCreditsOpportunities = [SELECT Id,CloseDate,Account.Name, Account.Id, Amount, (SELECT Id, Quantity, TotalPrice, Product2.Name FROM OpportunityLineItems) FROM Opportunity WHERE StageName = 'Closed Won'
                                         AND Id IN(SELECT OpportunityId FROM OpportunityLineItem WHERE Product2.Name =: trainingCreditsName) 
                                         AND Account.Id =: sAccountId ORDER BY CloseDate DESC LIMIT 1];


                  if(trainingCreditsOpportunities.size() > 0)
                  {       
                    try{
                      Opportunity trainingCreditsOpportunity = trainingCreditsOpportunities[0];
                      string orderDate = '';                        
                      string optyId = '';   
                      string optyAccountName = '';
                      string optyAccountId = '';
                      string optyAmt = '';
                      string optyTrainingCredits = '';
                            
                      orderDate = String.valueOf(trainingCreditsOpportunity.CloseDate); 
                      optyId = String.valueOf(trainingCreditsOpportunity.Id);
                      optyAccountName = String.valueOf(trainingCreditsOpportunity.Account.Name);
                      optyAccountId = String.valueOf(trainingCreditsOpportunity.Account.Id);
                      optyTrainingCredits = '1'; //Default value set to 1

                      for (OpportunityLineItem opportunityLineItem : trainingCreditsOpportunity.OpportunityLineItems) {
                        if (opportunityLineItem.Product2.Name == trainingCreditsName) {
                          optyTrainingCredits = String.valueOf(opportunityLineItem.Quantity);
                          optyAmt = String.valueOf(opportunityLineItem.TotalPrice);  
                          break;
                        }
                      }               
                                                      
                      System.debug('OPPTY ID: ' + optyId);
                                                      
                      string newOrderDate = orderDate + ' 00:00:00';
                      
                      System.debug('NEW ORDER DATE: ' + newOrderDate);
                      
                      //First 4 characters accountName + _ + 6 Digit Order date
                      string acctNameNoSpaces = optyAccountName.replaceAll('\\s+', '');
                      acctNameNoSpaces = acctNameNoSpaces.toUpperCase();
                      
                      System.debug('ACCOUNT NAME NO SPACE: ' + acctNameNoSpaces);
                                              
                      System.debug('ORDER DATE BEFORE PARSE: ' + newOrderDate);
                      
                      DateTime optOrderDate = DateTime.valueOf(newOrderDate);
                      
                      string optDTMM = String.valueOf(optOrderDate.Month());
                      if(optDTMM.length() == 1)
                          optDTMM = '0' + optDTMM;
                          
                      string optDTDD = String.valueOf(optOrderDate.Day());
                      if(optDTDD.length() == 1)
                          optDTDD= '0' + optDTDD;
                          
                      string optDTYYYY = String.valueOf(optOrderDate.Year());
                      
                      string optMMDDYY = optDTMM + optDTDD + optDTYYYY.substring(2);  //Last 2 digits of year                               
                                                      
                      string sOrderDate = String.valueOf(optOrderDate);
                      
                      System.debug('ORDER DATE MMDDYY: ' + optMMDDYY);   
                     
                      //string sOptShortDate = sOrderDate.Replace('-','');                                                      
                      
                      string voucherId = acctNameNoSpaces.substring(0, 4) + '_' + optMMDDYY; //sOptShortDate.substring(0, 6);
                      
                      System.debug('Voucher Number: ' + voucherId);
                      
                      string voucherType = 'Training Credit'; //Default Voucher Type for this Account
                      string description = 'Training Credit ' + voucherId;
                      string amount = optyAmt;
                      string vCurrency = 'USD';
                      string startDate = sOrderDate;
                      string endDate = '';
                      string voucherSFDCID = voucherId;
                      string trainingCredits = optyTrainingCredits;
                      string trainingDays = '0';                       
                      
                      
                      webservicesNetexamComUserservice80.ArrayOfUserUserGroup vGroups = new webservicesNetexamComUserservice80.ArrayOfUserUserGroup();
                      vGroups.UserUserGroup =  new webservicesNetexamComUserservice80.UserUserGroup[]{}; 
                      
                      webservicesNetexamComUserservice80.UserUserGroup vPrimaryGroup = new webservicesNetexamComUserservice80.UserUserGroup();
                      vPrimaryGroup.Name = optyAccountName;
                      vPrimaryGroup.ExternalID = optyAccountId;
                      vPrimaryGroup.IsPrimaryUserGroup = 0;
                      vPrimaryGroup.Country = 'USA';
                      vPrimaryGroup.AccountManagerExternalID = '';   
                      
                      vGroups.UserUserGroup.add(vPrimaryGroup);    
                                                      
                      string vAdd = UpsertVoucher(voucherId, voucherType, description, amount, vCurrency, startDate, endDate, voucherSFDCID, trainingCredits, trainingDays, vGroups);
                      
                      
                      if(vAdd == 'Success')
                      {
                        //UPDATE OPPORTUNITY.NETEXAM_TRAINING_VOUCHER with VOUCHERID
                        //Opportunity opty  = [SELECT Id,NetExam_Training_Voucher__c FROM Opportunity where Id =: optyId];
                        //try{
                            //opty.NetExam_Training_Voucher__c = voucherId;
                            //update opty;
                        //}
                        //catch(Exception exp)
                        //{
                        //}
                        
                      }
                         
                     }
                     catch(Exception ex)
                     {
                       System.debug('Error Voucher Creation in NetExam: ' + ex);   
                     }
                 }                  
                       
               }    
            }           
                        
            return transactionResult;
    
    }    
    

    private static void BulkUpsertUsersWithUserGroups(webservicesNetexamComUserservice80.ArrayOfUserExtended Users)
    {
       string ne_result = ''; 

       try{
           webservicesNetexamComUserservice80.UserServiceSoap ne_Webservice = new webservicesNetexamComUserservice80.UserServiceSoap();
           webservicesNetexamComUserservice80.ApiResult apiResult = ne_Webservice.BulkUpsertUsersWithUserGroups(ne_apiKey, ne_apiUser, ne_apiPass, Users);
           System.debug('Result: ' + apiResult.Code + ':' + apiResult.Description);
           ne_result = 'Success';

       }
       catch(System.CalloutException e){
            System.debug('Error: ' + e);            
            ne_result = e.getMessage().replace('Web service callout failed: WebService returned a SOAP Fault: ','').replace('faultcode=soap:Client faultactor=','');          
       }
    }
    
      
    //This method will create a user in NetExam OR if the user already exists(checked by sfdcContactID) the user's information will be updated.
    private static string UpsertUserWithUserGroupsExtended(string apiKey, string apiUser, string apiPass, string firstName,string lastName, string userName, string userRole, string email, string businessPhone, string personalEmail, string address1, string address2, string city, string state, string ContactsTimeZone, string postalCode, string accountCountry, string language, webservicesNetexamComUserservice80.ArrayOfUserUserGroup Groups,string jobCategory, string jobTitle, string userType, string sfdcContactID, string sfdcUserId, Boolean status, string managerSFDCContactID, Boolean preserveUserGroup, webservicesNetexamComUserservice80.ArrayOfCustomField CustomFields, Boolean emailOptIn,string startDate)
    {
        string ne_result = '';
       //INVOKE WEBSERVICE CALL TO ADD/UPDATE USER        
       
       try{
           webservicesNetexamComUserservice80.UserServiceSoap ne_Webservice = new webservicesNetexamComUserservice80.UserServiceSoap();
           webservicesNetexamComUserservice80.ApiResult Result = ne_Webservice.UpsertUserWithUserGroupsExtended(apiKey, apiUser, apiPass, firstName,lastName, userName, userRole, email, businessPhone, personalEmail, address1, address2, city, state, ContactsTimeZone, postalCode, accountCountry, language, Groups, jobCategory, jobTitle, userType, sfdcContactID, sfdcUserId, status, managerSFDCContactID, preserveUserGroup, CustomFields, emailOptIn,startDate);
           System.debug('Result: ' + Result.Code + ':' + Result.Description);
           ne_result = 'Success';
        }
        catch(System.CalloutException e){
            System.debug('Error: ' + e);            
            ne_result = e.getMessage().replace('Web service callout failed: WebService returned a SOAP Fault: ','').replace('faultcode=soap:Client faultactor=','');          
        }
        
        return ne_result;  
        
    }  
   
   //This method will create a user in NetExam OR if the user already exists(checked by sfdcContactID) the user's information will be updated.
    private static string UpsertVoucher(string voucherNumber,string voucherType, string description, string amount, string vCurrency, string startDate, string endDate, string voucherSFDCID, string trainingCredits, string trainingDays, webservicesNetexamComUserservice80.ArrayOfUserUserGroup Groups)
    {
        string ne_result = '';
       //INVOKE WEBSERVICE CALL TO ADD/UPDATE USER
             
       System.debug('IN UPSERTVOUCHER: STARTDATE BEFORE CAST: ' + startDate);  
       
       DateTime dtStart =  DateTime.valueOf(startDate); 
       DateTime dtEnd = dtStart.addYears(1);
              
       if(String.isNotBlank(endDate))
           dtEnd = DateTime.valueOf(endDate);
           
       System.debug('IN UPSERTVOUCHER: STARTDATE CAST SUCCESS: ' + startDate);          
                 
       Double dblAmount = double.valueOf(amount);
       Integer intTrainingCredits = integer.valueOf(trainingCredits); 
       Integer intTrainingDays = integer.valueOf(trainingDays);     
       
       try{
           webservicesNetexamComUserservice80.UserServiceSoap ne_Webservice = new webservicesNetexamComUserservice80.UserServiceSoap();
           
           if(voucherType == 'Course')
           {
               ne_result = ne_Webservice.AddCourseVoucher(ne_apiKey, ne_apiUser, ne_apiPass, voucherNumber,dtStart, dtEnd, description, dblAmount, vCurrency, voucherSFDCID);
           }
           
           if(voucherType == 'Training Credit')
           {
               ne_result =  ne_Webservice.AddTrainingCreditVoucher(ne_apiKey, ne_apiUser, ne_apiPass, voucherNumber,description,dblAmount,vCurrency,dtStart, dtEnd, voucherSFDCID,intTrainingCredits,Groups);
           }
           
           if(voucherType == 'Training Day')
           {
               ne_result = ne_Webservice.AddTrainingDayVoucher(ne_apiKey, ne_apiUser, ne_apiPass, voucherNumber,description,dblAmount,vCurrency,dtStart, dtEnd, voucherSFDCID,intTrainingDays);
           }
           
        }
        catch(System.CalloutException e){
            System.debug('Error: ' + e);            
            ne_result = e.getMessage().replace('Web service callout failed: WebService returned a SOAP Fault: ','').replace('faultcode=soap:Client faultactor=','');          
        }
        
        return ne_result;  
        
    }  
    
       
    //This method simply checks to make sure that there is enough information to create the user group. 
    // If these values are missing, the webservice would return an error.
    // NOTE: Not all params are required, so not all params are checked.
    private static string ValidateAccountData(string accountName, string accountID, string accountCountry)
    {
        string errorMsg = '';
       
        if(String.isNotBlank(accountID))
        {
            if(accountID.length() == 0){
                errorMsg = errorMsg + '<br>Account ID';
            }
        }
        else{
            errorMsg = errorMsg + '<br>Account ID';
        }        
        
        if(String.isNotBlank(accountName))
        {     
            if(accountName.length() == 0){
                errorMsg  = errorMsg + '<br>Account Name';
            }
        }
        else{
            errorMsg  = errorMsg + '<br>Account Name';
        }
        
        if(errorMsg.length() > 0){
            errorMsg = 'Missing required information: ' + errorMsg;
        }
        else{
            errorMsg = 'Success';
        }

        return errorMsg;
    }
    
    //This method simply checks to make sure that there is enough information to create the user group. 
    // If these values are missing, the webservice would return an error.
    // NOTE: Not all params are required, so not all params are checked.
    private static string ValidateContactData(string sfdcContactID, string firstName, string lastName, string email, string language, string userType, string userRole, string managerSFDCContactID)
    {
        string errorMsg = '';       
        
        //check null for all variables 
        if(String.isNotBlank(firstName))
        {
            if(firstName.length() == 0){
                errorMsg  = errorMsg + '<br>First Name';
            }
        }
        else{
            errorMsg  = errorMsg + '<br>First Name';
        }
        
        if(String.isNotBlank(lastName))
        {
            if(lastName.length() == 0){
                errorMsg = errorMsg + '<br>Last Name';
            }
        }
        else{
            errorMsg = errorMsg + '<br>Last Name';
        }
        
        if(String.isNotBlank(lastName))
        {
            if(email.length() == 0){
                errorMsg = errorMsg + '<br>Email';
            }
        }
        else{
            errorMsg = errorMsg + '<br>Email';
        }
        
        if(errorMsg.length() > 0){
            errorMsg = 'Missing required information: ' + errorMsg;
        }
        else{
            errorMsg = 'Success';
        }

        return errorMsg;
    
    }
   

}