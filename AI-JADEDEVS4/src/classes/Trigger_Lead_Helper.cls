/**@@
#TRIGGER NAME                :    LeadTrigger
#HANDLER CLASS NAME  :    Trigger_Lead_Handler
#HELPER CLASS NAME     :    Trigger_Lead_Helper
#TEST CLASS          :    LeadTriggerHandler_Test
#DESCRIPTION                   :    This Trigger will handles all the trigger events and make call to the Handler class to handling the appropriate logic.   
@@**/
public class Trigger_Lead_Helper{
    
    //BELOW ARE THE MASTER/FINAL LISTS AND MAP TO BE USED FOR DML OPERATION
    private static final String CONTACT_RECORD_TYPE_NAME = 'Customer';
    
    private static final LeadStatus CONVERT_STATUS = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=True LIMIT 1];
    //Stores the list of new leads from the trigger and map of old leads for update trigger
    private static List<Lead> newLeadRecordList;
    private static Set<Lead> newLeadSet;
    //Maps to contain subset of leads
    private Map<Id, Lead> oldLeadMap;
    private static Map<String, Lead> addressLeadMap;
    private static Map<String, Lead> emailLeadMap;
    
    
    /**@@
#DESCRIPTION   : Updating the lead Life cycle based on lead status.
#Paramaters        : trigger.new,trigger.oldMap
@@**/
    
    // logic for user story SOZO-310
    public static void newSetLeadAttributes(list<Lead> newLeadList, Map<Id,Lead> oldMap){
        try{
            for(Lead leadObj : newLeadList)
            {
                if(oldMap == null || leadObj.Status != oldMap.get(leadObj.id).status)
                {
                    if( leadObj.Status == CustomConstants.LeadStatusNew || leadObj.Status == CustomConstants.LeadStatusRestored)
                    {
                        leadObj.Lifecycle_Stage__c = CustomConstants.LifecycleMQL;  
                    }else if
                        (leadObj.Status == CustomConstants.LeadStatusPursuing)
                    {
                        leadObj.Lifecycle_Stage__c = CustomConstants.LifecycleSAL;
                    }else if
                        (leadObj.Status == CustomConstants.LeadStatusRaw || leadObj.Status == CustomConstants.LeadStatusRejected || leadObj.Status == CustomConstants.LeadStatusUnqualified || leadObj.Status == CustomConstants.LeadStatusUnresponsive)
                    {
                        leadObj.Lifecycle_Stage__c = CustomConstants.LifecycleMAL;
                    }else if
                        (leadObj.Status == CustomConstants.LeadStatusQualified)
                    {
                        leadObj.Lifecycle_Stage__c = CustomConstants.LifecycleSQL;
                    }
                    
                }
                
            }
        }//End of try
        catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }//end of catch
    }// logic completed for user story SOZO-310
    
    
    
    /**@@
#DESCRIPTION   : Updating the lead fields based on lead score.
#Paramaters        : trigger.new,trigger.oldMap
@@**/
    
    
    /*================ start (deactivating existing logic related to SOZO-311, SOZO-372 and SOZO-310)    


public static void setLeadAttributes(list<Lead> newLeadList, Map<Id,Lead> oldMap){
try{
for(Lead leadObj : newLeadList){
if((Trigger.isInsert && leadObj.Lead_Score__c < 30) || (Trigger.isUpdate && oldMap!=null && oldMap.containsKey(leadObj.id) && leadObj.Lead_Score__c <30 && oldMap.get(leadObj.id).Lead_Score__c!=leadObj.Lead_Score__c)){
if(leadObj.isConverted == false && leadObj.Status != leadStatusAccepted && leadObj.Status != leadStatusRejected && leadObj.Status != leadStatusNew ){
leadObj.Lifecycle_Stage__c  = lifecycleMAL;
leadObj.Marketing_Lead_Status__c = leadStatusRaw;
leadObj.Status  = leadStatusRaw; 
leadObj.Timestamp_Lifecycle_MAL__c = system.now();                
}
}
if((Trigger.isInsert && leadObj.Lead_Score__c >= 30) || (Trigger.isUpdate && oldMap!=null && oldMap.containsKey(leadObj.id) && leadObj.Lead_Score__c >= 30 && oldMap.get(leadObj.id).Lead_Score__c!= leadObj.Lead_Score__c)){
if(leadObj.isConverted == false && leadObj.Status != leadStatusAccepted && leadObj.Status != leadStatusRejected ){
leadObj.Lifecycle_Stage__c  = lifecycleMQL;
leadObj.Marketing_Lead_Status__c = leadStatusNew;
leadObj.Status  = leadStatusNew; 
leadObj.Timestamp_Lifecycle_MQL__c = system.now();                
}
}
system.debug('Status='+leadObj.Status);
if((leadObj.Status == leadStatusRaw && leadObj.Eloqua_Create_Date__c == System.Today() && leadObj.LastModifiedByID == system.label.Eloqua_User_Id) && (trigger.isInsert || (trigger.isUpdate && oldMap!=null && (oldmap.get(leadObj.id).Status!= leadObj.Status || oldmap.get(leadObj.id).Eloqua_Create_Date__c != leadObj.Eloqua_Create_Date__c || oldmap.get(leadObj.id).LastModifiedByID!= leadObj.LastModifiedByID))) || Test.isRunningTest()){              
system.debug('last modi='+leadObj.LastModifiedByID);
system.debug('Eloqua_Create_Date__c='+leadObj.Eloqua_Create_Date__c);
leadObj.Status = leadStatusRenew; 
if((Trigger.isInsert && leadObj.Lead_Score__c < 30) || (Trigger.isUpdate && oldMap!=null && oldMap.containsKey(leadObj.id) && leadObj.Lead_Score__c <30 && oldMap.get(leadObj.id).Lead_Score__c!=leadObj.Lead_Score__c)){
leadObj.Lifecycle_Stage__c  = lifecycleMAL;    
leadObj.Timestamp_Lifecycle_MAL__c = system.now();                                   
}
if((Trigger.isInsert && leadObj.Lead_Score__c >= 30) || (Trigger.isUpdate && oldMap!=null && oldMap.containsKey(leadObj.id) && leadObj.Lead_Score__c >= 30 && oldMap.get(leadObj.id).Lead_Score__c!= leadObj.Lead_Score__c)){
leadObj.Lifecycle_Stage__c  = lifecycleMQL;   
leadObj.Timestamp_Lifecycle_MQL__c = system.now();    
}
}
if( (Trigger.isInsert && leadObj.Status == leadStatusRejected) || (Trigger.isUpdate && oldMap!=null && oldMap.containsKey(leadObj.id) && leadObj.Status == leadStatusRejected && oldMap.get(leadObj.id).Status!= leadObj.Status)){
leadObj.Lifecycle_Stage__c  = lifecycleMAL;
leadObj.Timestamp_Lifecycle_MAL__c = system.now();     
}
} 
}//End of try
catch(Exception e){
ExceptionHandlingEmail.sendEmailonException(e);
}
}//End of setLeadAttributes method

================ End (deactivating existing logic related to SOZO-311, SOZO-372 and SOZO-310)*/
    
    /**@@
#DESCRIPTION   : Matching the lead email on contact and passing for lead converion.
#Paramaters        : trigger.new
@@**/
    public static List<Contact> matchEmail(list<Lead> newLeadList) {
        try{
            newLeadRecordList = newLeadList;
            List<Contact> contactList = new List<Contact>();
            System.debug('matchEmail ENTERED');
            
            emailLeadMap = new Map<String, Lead>();
            for (Lead leadObj : newLeadList) {
                if(leadObj.email!=null){
                    emailLeadMap.put(leadObj.email, leadObj);
                }
            }
            //emailLeadMap.remove(null);
            if(!emailLeadMap.isEmpty()){
                contactList = [
                    SELECT Id, Email, Account.Type, Account.Number_of_Open_Opportunities__c,
                    Account.Notify_AM_of_New_Lead__c
                    FROM Contact
                    WHERE Email LIKE :emailLeadMap.keyset()];
            }
            if(!contactList.isEmpty()){
                return contactList;
            }
            return null;
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
        return null;
    }//End of matchEmail method
    
    /**@@
#DESCRIPTION   : Converting the leads whose email matched with contact's email
#Paramaters        : List
@@**/
    public static void matchedConversion(List<Contact> contactList){
        try{
            Database.LeadConvertResult[] leadObjconvertResult;
            List<Account> updatedAccounts = new List<Account>();
            System.debug('matchedConversion ENTERED');
            
            List<Database.LeadConvert> leadsToConvert = new List<Database.LeadConvert>();
            List<Id> accountsToUpdate = new List<Id>();
            List<Lead> leadsToRemove = new List<Lead>();
            
            for (Contact contactObj : contactList) {
                if(contactObj.Account.Type == CustomConstants.AccountTypeCustomer || ((contactObj.Account.Type==CustomConstants.AccountTypeCustomerProspect) 
                                                                                      && (contactObj.Account.Number_of_Open_Opportunities__c >0)) ) {
                                                                                          Database.LeadConvert leadObjConvert = new Database.LeadConvert();
                                                                                          Lead leadObj = emailLeadMap.get(contactObj.email);
                                                                                          if(leadObj != null && CONVERT_STATUS != null) {
                                                                                              leadObjConvert.setLeadId(leadObj.Id);
                                                                                              leadObjConvert.setAccountId(contactObj.AccountId);
                                                                                              leadObjConvert.setContactId (contactObj.Id);
                                                                                              leadObjConvert.setConvertedStatus(CONVERT_STATUS.MasterLabel);
                                                                                              leadObjConvert.setDoNotCreateOpportunity(true);
                                                                                              leadsToConvert.add(leadObjConvert);
                                                                                              leadsToRemove.add(leadObj);
                                                                                          }
                                                                                      }
            }
            if(!leadsToConvert.isEmpty()){
                leadObjconvertResult = Database.convertLead(leadsToConvert,false);
                System.debug('CONVERTED Status: ' + leadsToConvert);
            }
            for(Database.LeadConvertResult result: leadObjconvertResult){
                System.debug('CONVERTED STATUS' + result.getErrors());
                accountsToUpdate.add(result.getAccountId());
            }
            if(!accountsToUpdate.isEmpty()){
                updatedAccounts = [
                    SELECT Notify_AM_of_New_Lead__c
                    FROM Account
                    WHERE Id IN :accountsToUpdate];
            }
            if(!updatedAccounts.isEmpty()){
                for(Account accountObj: updatedAccounts) {
                    accountObj.Notify_AM_of_New_Lead__c = true;
                }
                update updatedAccounts;
            }
            //we remove the leads that have been converted and we get a list for 2nd
            if(!leadsToRemove.isEmpty()) {
                removeConvertedLeads(leadsToRemove);
            }
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }//End of matchedConversion method
    
    /**@@
#DESCRIPTION   : Matching the company on account and passing for lead conversion
#Paramaters        : trigger.new
@@**/
    public static List<Account> matchAddress(List<Lead> newLeadList){
        List<Account> matchedAccounts = new List<Account>();
        try{
            List<Account> accountList = new List<Account>();
            System.debug('matchAddress ENTERED');
            
            addressLeadMap = new Map<String,Lead>();
            System.debug('**newLeadSet**'+newLeadSet);
            if(newLeadSet==null || newLeadSet.isEmpty()) {
                for(Lead leadObj:newLeadList){
                    if(leadObj.Company!=null){
                        addressLeadMap.put(leadObj.Company.toLowerCase(), leadObj);
                        System.debug('**Address LeadMap**'+addressLeadMap);
                        System.debug('No LeadSet, we process the LeadList.');
                    }
                }
            }
            else if(!newLeadSet.isEmpty()) {
                for(Lead leadObj:newLeadSet){
                    addressLeadMap.put(leadObj.Company.toLowerCase(), leadObj);
                }
                System.debug('LeadSet has records, we process LeadSet.');
            }
            else {
                System.debug('No LeadSet and No LeadMap.');
                return null;
            }
            //addressLeadMap.remove(null);
            if(!addressLeadMap.isEmpty()){
                accountList = [SELECT Name, BillingState, BillingCountry, Type, Number_of_Open_Opportunities__c, Notify_AM_of_New_Lead__c FROM Account WHERE Name LIKE :addressLeadMap.keyset()];
            }
            System.debug('ACCOUNT LIST: ' + matchedAccounts);
            if(!accountList.isEmpty()){
                for(Account accountObj: accountList){
                    System.debug('ACCOUNT NAME: ' + accountObj.Name);
                    
                    String acctName = accountObj.Name.toLowerCase();
                    Lead leadObj = addressLeadMap.get(acctName);
                    
                    if(null != leadObj){
                        if( (null != accountObj.BillingState) && (null != accountObj.BillingCountry)
                           && (null != leadObj.State) && (null != leadObj.Country) ){
                               if(addressComparison(leadObj.State,accountObj.BillingState) && addressComparison(leadObj.Country,accountObj.BillingCountry))
                                   matchedAccounts.add(accountObj);
                           }
                    }
                }
            }
            if(!matchedAccounts.isEmpty()){
                return matchedAccounts;
            }
        }//End of try
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
        return null;
    }//End of matchAddress method
    
    /**@@
#DESCRIPTION   : Converting the lead whose company fields matched with account name
#Paramaters        : list
@@**/
    public static void partialMatchConversion(List<Account> accountList){
        try{
            Database.LeadConvertResult[] leadObjconvertResult;
            List<Contact> newContactList = new List<Contact>();
            System.debug('partialConversion ENTERED');
            
            Map<Contact, Database.LeadConvert> newContactMap = new Map<Contact,Database.LeadConvert>();
            List<Id> contactsToUpdate = new List<Id>();
            List<Database.LeadConvert> leadsToConvert = new List<Database.LeadConvert>();
            
            Id contactRecordTypeId = getContactRecordType(CONTACT_RECORD_TYPE_NAME);
            if(contactRecordTypeId == null){
                System.debug('No recordType ID was created');
                return;
            }
            System.debug('The Contact RecordType ID: ' + contactRecordTypeId);
            
            for(Account accountObj : accountList){
                if(accountObj.Type == CustomConstants.AccountTypeCustomer || ((accountObj.Type == CustomConstants.AccountTypeCustomerProspect
                                                                               && (accountObj.Number_of_Open_Opportunities__c >0)))){
                                                                                   System.debug('STARTING LEAD CONVERSION');
                                                                                   Database.LeadConvert leadObjConvert = new Database.LeadConvert();
                                                                                   Lead leadObj = addressLeadMap.get(accountObj.Name.toLowerCase());
                                                                                   if(leadObj!= null && CONVERT_STATUS != null){
                                                                                       leadObjConvert.setLeadId(leadObj.Id);
                                                                                       leadObjConvert.setAccountId(accountObj.Id);
                                                                                       accountObj.Notify_AM_of_New_Lead__c = true;
                                                                                       leadObjConvert.setConvertedStatus(CONVERT_STATUS.MasterLabel);
                                                                                       leadObjConvert.setDoNotCreateOpportunity(true);
                                                                                       leadsToConvert.add(leadObjConvert);
                                                                                   }
                                                                               }
            }
            System.debug('Leads to Convert' + leadsToConvert);
            //update accountList;
            if(!leadsToConvert.isEmpty()){
                leadObjconvertResult = Database.convertLead(leadsToConvert,false);
            }
            for(Database.LeadConvertResult result : leadObjconvertResult){
                contactsToUpdate.add(result.getContactId());
            }
            if(!contactsToUpdate.isEmpty()){
                newContactList = [
                    SELECT RecordTypeId
                    FROM Contact
                    WHERE Id IN :contactsToUpdate
                ];
            }
            System.debug('***newContactList***'+newContactList);
            if(!newContactList.isEmpty()){
                for(Contact contactObj: newContactList){
                    contactObj.RecordTypeId = contactRecordTypeId;
                    contactObj.Reopen__c = true;
                }
                System.debug('***newContactList***'+newContactList);
                update newContactList;
            }
        }
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    }// End of partialMatchConversion method
    
    /**@@
#DESCRIPTION   : Remove the converted leads from the list.
#Paramaters        : trigger.new
@@**/
    private static void removeConvertedLeads(List<Lead> leadList){
        //Remove the converted leads from the list that will attempt 2nd match
        newLeadSet = new Set<Lead>(newLeadRecordList);
        for(Lead leadObj: leadList){
            newLeadSet.remove(leadObj);
        }
    }//End of removeConvertedLeads method
    
    /**@@
#DESCRIPTION   : Update the Adaptive industry, Adaptive description fields based on NAICS code.
#Paramaters        : trigger.new
@@**/
    public static void NAICSAdaptiveIndustryUpdate(List<Lead> newLeads,Map<Id,Lead> oldMap) {
        try{
            Set<String> NAICScodeset = new Set<String>();
            for(Lead leadObj: newLeads){
                if(leadObj.NAICS_Code__c != null){
                    NAICScodeset.add(leadObj.NAICS_Code__c);
                }
            }
            Map<String, Industry_Classification__c> industryMap = new Map<String, Industry_Classification__c>();
            if(!NAICScodeset.isEmpty()){
                for(Industry_Classification__c IndustryObj : [SELECT Id, NAICS_Code__c, Adaptive_Industry__c, NAICS_Description__c 
                                                              FROM Industry_Classification__c 
                                                              WHERE NAICS_Code__c IN :NAICScodeset]){
                                                                  industryMap.put(IndustryObj.NAICS_Code__c,IndustryObj);
                                                              }
            }
            for(Lead leadObject: newLeads){
                if((Trigger.isInsert && leadObject.NAICS_Code__c != null && industryMap.containsKey(leadObject.NAICS_Code__c))||(Trigger.isUpdate && (leadObject.NAICS_Code__c != null && industryMap.containsKey(leadObject.NAICS_Code__c)) && oldMap.get(leadObject.id).NAICS_Code__c != leadObject.NAICS_Code__c )){            
                    if(leadObject.Adaptive_Industry__c == null)
                    {
                    leadObject.Adaptive_Industry__c = industryMap.get(leadObject.NAICS_Code__c).Adaptive_Industry__c;
                    }
                    leadObject.NAICS_Description__c = industryMap.get(leadObject.NAICS_Code__c).NAICS_Description__c;
                } 
            }
        }
        Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }
    } //End of NAICSAdaptiveIndustryUpdate method
    
    /**@@
#DESCRIPTION   : Get the Lead RecordType
#Paramaters        : trigger.new
@@**/
    private static Id getContactRecordType(String typeName){
        System.debug('ENTERED getContactRecordType');
        
        Map<String,Schema.RecordTypeInfo> listofRecords = Schema.SObjectType.Contact.getRecordTypeInfosByName();
        if(listofRecords.size() > 0) {
            Schema.RecordTypeInfo RecordTypeObj = listofRecords.get(typename);
            if(RecordTypeObj != null){
                return RecordTypeObj.getRecordTypeId();
            }
        }
        return null;
    }//End of getContactRecordType method
    
    /**@@
#DESCRIPTION   : Comparing addresses
#Paramaters        : String, String
@@**/
    private static Boolean addressComparison (String strAddress1, String strAddress2) {
        System.debug('Entered Address comparison');
        if(strAddress1.equalsIgnoreCase(strAddress2)){
            return true;
        }
        return false;
    }//End of addressComparison method
    
    /**@@
#DESCRIPTION       : Set Timestamp field based on Lifecycle field value change
#Paramaters        : trigger.new,trigger.oldMap
@@**/
    
    public static void setTimestamp(list<Lead> newLeadList, Map<Id,Lead> oldMap){
        
        for(Lead leadObj : newLeadList){
            if((oldMap == null || oldMap.get(leadObj.id).Lifecycle_Stage__c!=leadObj.Lifecycle_Stage__c)){
                
                if(leadObj.Lifecycle_Stage__c == CustomConstants.LifecycleMAL){
                    
                    leadObj.Timestamp_Lifecycle_MAL__c = system.now(); 
                    
                }//End if statement
                else if(leadObj.Lifecycle_Stage__c == CustomConstants.LifecycleMQL){
                    
                    leadObj.Timestamp_Lifecycle_MQL__c = system.now(); 
                    
                }//End else if statement
                else if(leadObj.Lifecycle_Stage__c == CustomConstants.LifecycleSAL){
                    
                    leadObj.Timestamp_Lifecycle_SAL__c = system.now(); 
                    
                }//End else if statement
                else if(leadObj.Lifecycle_Stage__c == CustomConstants.LifecycleSQL){
                    
                    leadObj.Timestamp_Lifecycle_SQL__c = system.now(); 
                    
                }//End of else if
            }
        }//End of for loop
    }//End of method
    
    /**@@
#DESCRIPTION       : when lead score (Lead_Score__c) increases, and it is 30 or above, and the lead status is Unqualified or Unresponsive, setting the status to Restored.
#Paramaters        : trigger.new,trigger.oldMap
@@**/
    
    public static void setStatusRestored(list<Lead> newLeadList, Map<Id,Lead> oldMap){
        
        for(Lead leadObj : newLeadList){
            
            if((leadObj.Lead_Score__c > oldMap.get(leadObj.id).Lead_Score__c) && (leadObj.Lead_Score__c >= 30)){
                
                if(leadObj.Status == CustomConstants.LeadStatusUnqualified  || leadObj.Status == CustomConstants.LeadStatusUnresponsive){
                    System.debug('### setting status to restored');
                    leadObj.Status = CustomConstants.LeadStatusRestored;
                }
            }
        }
    } 
    /**@@
#DESCRIPTION       : Convert State Names in to two digit Codes
#Paramaters        : trigger.new
@@**/
    public static void convertStateNameOnLead (List<Lead> newLeadList){
        for( Lead l : newLeadList ) {
            if (!String.isBlank(l.State)) {
                if (l.State.equalsIgnoreCase('Alabama')) l.State = 'AL';
                else if (l.State.equalsIgnoreCase('Alaska')) l.State =  'AK' ;
                else if (l.State.equalsIgnoreCase('Arizona')) l.State =  'AZ' ;
                else if (l.State.equalsIgnoreCase('Arkansas')) l.State =  'AR' ;
                else if (l.State.equalsIgnoreCase('California')) l.State = 'CA' ;
                else if (l.State.equalsIgnoreCase('Colorado')) l.State = 'CO' ;
                else if (l.State.equalsIgnoreCase('Connecticut')) l.State = 'CT' ;
                else if (l.State.equalsIgnoreCase('Delaware')) l.State = 'DE' ;
                else if (l.State.equalsIgnoreCase('Florida')) l.State = 'FL' ;
                else if (l.State.equalsIgnoreCase('Georgia')) l.State = 'GA' ;
                else if (l.State.equalsIgnoreCase('Hawaii')) l.State = 'HI' ;
                else if (l.State.equalsIgnoreCase('Idaho')) l.State = 'ID' ;
                else if (l.State.equalsIgnoreCase('Illinois')) l.State = 'IL' ;
                else if (l.State.equalsIgnoreCase('Indiana')) l.State = 'IN' ;
                else if (l.State.equalsIgnoreCase('Iowa')) l.State = 'IA' ;
                else if (l.State.equalsIgnoreCase('Kansas')) l.State = 'KS'; 
                else if (l.State.equalsIgnoreCase('Kentucky')) l.State = 'KY'; 
                else if (l.State.equalsIgnoreCase('Louisiana')) l.State = 'LA'; 
                else if (l.State.equalsIgnoreCase('Maine')) l.State = 'ME' ;
                else if (l.State.equalsIgnoreCase('Maryland')) l.State = 'MD'; 
                else if (l.State.equalsIgnoreCase('Massachusetts')) l.State = 'MA' ;
                else if (l.State.equalsIgnoreCase('Michigan')) l.State = 'MI' ;
                else if (l.State.equalsIgnoreCase('Minnesota')) l.State = 'MN' ;
                else if (l.State.equalsIgnoreCase('Mississippi')) l.State = 'MS' ;
                else if (l.State.equalsIgnoreCase('Missouri')) l.State = 'MO' ;
                else if (l.State.equalsIgnoreCase('Montana')) l.State = 'MT' ;
                else if (l.State.equalsIgnoreCase('Nebraska')) l.State = 'NE' ;
                else if (l.State.equalsIgnoreCase('Nevada')) l.State = 'NV' ;
                else if (l.State.equalsIgnoreCase('New Hampshire')) l.State = 'NH' ;
                else if (l.State.equalsIgnoreCase('New Jersey')) l.State = 'NJ' ;
                else if (l.State.equalsIgnoreCase('New Mexico')) l.State = 'NM' ;
                else if (l.State.equalsIgnoreCase('New York')) l.State = 'NY' ;
                else if (l.State.equalsIgnoreCase('North Carolina')) l.State = 'NC' ;
                else if (l.State.equalsIgnoreCase('North Dakota')) l.State = 'ND' ;
                else if (l.State.equalsIgnoreCase('Ohio')) l.State = 'OH' ;
                else if (l.State.equalsIgnoreCase('Oklahoma')) l.State = 'OK' ;
                else if (l.State.equalsIgnoreCase('Oregon')) l.State = 'OR' ;
                else if (l.State.equalsIgnoreCase('Pennsylvania')) l.State = 'PA' ;
                else if (l.State.equalsIgnoreCase('Rhode Island')) l.State = 'RI' ;
                else if (l.State.equalsIgnoreCase('South Carolina')) l.State = 'SC' ;
                else if (l.State.equalsIgnoreCase('South Dakota')) l.State = 'SD' ;
                else if (l.State.equalsIgnoreCase('Tennessee')) l.State = 'TN' ;
                else if (l.State.equalsIgnoreCase('Texas')) l.State = 'TX' ;
                else if (l.State.equalsIgnoreCase('Utah')) l.State = 'UT' ;
                else if (l.State.equalsIgnoreCase('Vermont')) l.State = 'VT' ;
                else if (l.State.equalsIgnoreCase('Virginia')) l.State = 'VA' ;
                else if (l.State.equalsIgnoreCase('Washington')) l.State = 'WA' ;
                else if (l.State.equalsIgnoreCase('West Virginia')) l.State = 'WV' ;
                else if (l.State.equalsIgnoreCase('Wisconsin')) l.State = 'WI' ;
                else if (l.State.equalsIgnoreCase('Wyoming')) l.State = 'WY' ;
                else if (l.State.equalsIgnoreCase('Ontario')) l.State = 'ON' ;
                else if (l.State.equalsIgnoreCase('Quebec')) l.State = 'QC' ;
                else if (l.State.equalsIgnoreCase('QuéBec')) l.State = 'QC' ;
                else if (l.State.equalsIgnoreCase('British Columbia')) l.State = 'BC' ;
                else if (l.State.equalsIgnoreCase('Alberta')) l.State = 'AB' ;
                else if (l.State.equalsIgnoreCase('Manitoba')) l.State = 'MB' ;
                else if (l.State.equalsIgnoreCase('Saskatchewan')) l.State = 'SK' ;
                else if (l.State.equalsIgnoreCase('Nova Scotia')) l.State = 'NS' ;
                else if (l.State.equalsIgnoreCase('New Brunswick')) l.State = 'NB' ;
                else if (l.State.equalsIgnoreCase('Newfoundland And Labrador')) l.State = 'NL' ;
                else if (l.State.equalsIgnoreCase('Prince Edward Island')) l.State = 'PE' ;
                else if (l.State.equalsIgnoreCase('Northwest Territories')) l.State = 'NT' ;
                else if (l.State.equalsIgnoreCase('Yukon')) l.State = 'YT' ;
                else if (l.State.equalsIgnoreCase('Nunavut')) l.State = 'NU' ;
                else if (l.State.equalsIgnoreCase('Alberta')) l.State =  'AB' ;
                else if (l.State.equalsIgnoreCase('British Columbia')) l.State =  'BC' ;
                else if (l.State.equalsIgnoreCase('Manitoba')) l.State =  'MB' ;
                else if (l.State.equalsIgnoreCase('New Brunswick')) l.State = 'NB' ;
                else if (l.State.equalsIgnoreCase('Newfoundland and Labrador')) l.State = 'NL' ;
                else if (l.State.equalsIgnoreCase('Nova Scotia')) l.State = 'NS' ;
                else if (l.State.equalsIgnoreCase('Ontario')) l.State = 'ON' ;
                else if (l.State.equalsIgnoreCase('Quebec')) l.State = 'QC' ;
                else if (l.State.equalsIgnoreCase('Saskatchewan')) l.State = 'SK' ;
                else if (l.State.equalsIgnoreCase('Prince Edward Island')) l.State = 'PE' ;
                else if (l.State.equalsIgnoreCase('Northwest Territories')) l.State = 'NT' ;
                else if (l.State.equalsIgnoreCase('Nunavut')) l.State = 'NU' ;
                else if (l.State.equalsIgnoreCase('Yukon')) l.State = 'YT' ;
                else if (l.State.equalsIgnoreCase('Australian Capital Territory')) l.State = 'ACT' ;
                else if (l.State.equalsIgnoreCase('New South Wales')) l.State = 'NSW'; 
                else if (l.State.equalsIgnoreCase('Northern Territory')) l.State = 'NT'; 
                else if (l.State.equalsIgnoreCase('Queensland')) l.State = 'QLD'; 
                else if (l.State.equalsIgnoreCase('South Australia')) l.State = 'SA' ;
                else if (l.State.equalsIgnoreCase('Tasmaina')) l.State = 'TAS'; 
                else if (l.State.equalsIgnoreCase('Victoria')) l.State = 'VIC' ;
                else if (l.State.equalsIgnoreCase('Western Australia')) l.State = 'WA' ;
            }
        }
    }
    
    public static Boolean isChatterPostsAdded = false;
    /**@@
#DESCRIPTION       : Keep Chatter Posts Through Lead Conversion - User story: EA-938
#Paramaters        : trigger.oldmap, trigger.newmap
@@**/
    public static void keepChatterPostonConversion(Map<Id, Lead> newMap, Map<Id,Lead> oldMap){
        
        try{
            
            List<Lead> leadList = [SELECT id, Status, ConvertedOpportunityId, isConverted, ConvertedContactId, (SELECT id, Createddate, InsertedBy.Name, Body, Title FROM feeds ORDER BY createddate ASC) FROM Lead WHERE id in: newMap.keyset() and isConverted = true];
            List<FeedItem> lstFeedItemInsertOpp = new List<FeedItem>();
            List<FeedComment> lstFeedCommentInsertOpp = new List<FeedComment>();
            
            List<FeedItem> lstFeedItemInsertCon = new List<FeedItem>();
            List<FeedComment> lstFeedCommentInsertCon = new List<FeedComment>();
            
            mapOldFeedItemId = new Map<Integer, ID>();
            FeedItem objFeedItem;
            
            for(Lead ld: leadList){
                system.debug(ld);
                if(test.isRunningTest()){
                    lstFeedItemInsertOpp = createFeedItems(ld, 'Opportunity');
                    lstFeedItemInsertCon = createFeedItems(ld, 'Contact');
                }
                else{
                    if(newMap.get(ld.id).Status != oldMap.get(ld.id).Status && newMap.get(ld.id).isConverted != oldMap.get(ld.id).isConverted){
                        lstFeedItemInsertOpp = createFeedItems(ld, 'Opportunity');
                        lstFeedItemInsertCon = createFeedItems(ld, 'Contact');
                    }
                }
            }// End of For          
            system.debug(lstFeedItemInsertOpp);               
            // Go inside if Feed Item Inserted
            if(!lstFeedItemInsertOpp.isEmpty()){
                // Insert Feed Item to converted Opportunity 
                insert lstFeedItemInsertOpp;
                
                Map<Id, Id> mapOldandNewFeedItem = new Map<Id, Id>();        
                for(integer i=0; i<lstFeedItemInsertOpp.size(); i++){
                    mapOldandNewFeedItem.put(mapOldFeedItemId.get(i), lstFeedItemInsertOpp[i].id);
                }// End of For
                
                lstFeedCommentInsertOpp = createFeedComments(mapOldFeedItemId, mapOldandNewFeedItem);                        
                
                // Insert Feed Comment to converted Opportunity
                if(!lstFeedCommentInsertOpp.isEmpty()){
                    insert lstFeedCommentInsertOpp;
                }// End of IF
            }// End of IF
            
            system.debug(lstFeedItemInsertCon);
            // Go inside if Feed Item Inserted
            if(!lstFeedItemInsertCon.isEmpty()){
                // Insert Feed Item to converted Opportunity 
                insert lstFeedItemInsertCon;
                
                Map<Id, Id> mapOldandNewFeedItem = new Map<Id, Id>();        
                for(integer i=0; i<lstFeedItemInsertCon.size(); i++){
                    mapOldandNewFeedItem.put(mapOldFeedItemId.get(i), lstFeedItemInsertCon[i].id);
                }// End of For
                
                lstFeedCommentInsertCon = createFeedComments(mapOldFeedItemId, mapOldandNewFeedItem);                        
                
                // Insert Feed Comment to converted Opportunity
                if(!lstFeedCommentInsertCon.isEmpty()){
                    insert lstFeedCommentInsertcon;
                }// End of IF
            }// End of IF
            isChatterPostsAdded = true;
        }Catch(Exception e){
            ExceptionHandlingEmail.sendEmailonException(e);
        }// End of Exception
        
    }// End of Method - keepChatterPostonConversion
    
    /**@@
#DESCRIPTION     : This method is used to create Feed Items
#Paramaters      : Lead ld, String strTargetObject
#Return type     : List<FeedItem>
@@**/
    static Map<Integer, ID> mapOldFeedItemId;
    public static List<FeedItem> createFeedItems(Lead ld, String strTargetObject){
        List<FeedItem> lstFeedItemInsert = new List<FeedItem>();
        system.debug(ld);
        // list<LeadFeed> lst=[SELECT id, Createddate,ParentId, Body, Title FROM LeadFeed where ParentId=:ld.id ];
        // system.debug(lst);
        
        Integer intFeedItemCount = 0;
        for(LeadFeed fi: ld.feeds){
            system.debug(fi);
            if(fi.body != null && ((strTargetObject == 'Opportunity' && ld.ConvertedOpportunityId != null) || (strTargetObject == 'Contact' && ld.ConvertedContactId != null))){
                mapOldFeedItemId.put(intFeedItemCount, fi.id);
                intFeedItemCount++;
                FeedItem objFeedItem = new FeedItem();
                if(strTargetObject == 'Opportunity'){
                    objFeedItem.ParentId = ld.ConvertedOpportunityId;
                }else if(strTargetObject == 'Contact'){
                    objFeedItem.ParentId = ld.ConvertedContactId;
                }// End of If
                
                string strBody = fi.body;
                if(strBody.contains('<p>')){
                    strBody = strBody.replace('<p>', '');
                }
                if(strBody.contains('</p>')){
                    strBody = strBody.replace('</p>', '');
                }
                string strFICreateddate = string.valueOf(fi.Createddate);
                objFeedItem.body = strFICreateddate + ', ' + fi.InsertedBy.Name + + ': ' + strBody;
                objFeedItem.Title = fi.Title;
                lstFeedItemInsert.add(objFeedItem);
            }// End of IF
        }// End of For
        system.debug('lstFeedItemInsert>>>'+lstFeedItemInsert);
        return lstFeedItemInsert;
    }// End of Method - createFeedItems
    
    /**@@
#DESCRIPTION     : This method is used to create Feed Comments
#Paramaters      : Map<Integer, Id> mapOldFeedItemId, Map<Id, Id> mapOldandNewFeedItem
#Return type     : List<FeedComment>
@@**/    
    public static List<FeedComment> createFeedComments(Map<Integer, Id> mapOldFeedItemId, Map<Id, Id> mapOldandNewFeedItem){
        List<FeedComment> lstFeedCommentInsert = new List<FeedComment>();
        
        List<FeedComment> lstLeadFeedComment = [SELECT id, CommentType, InsertedBy.Name, FeedItemId, CommentBody, ParentId FROM FeedComment where FeedItemId IN: mapOldFeedItemId.values()];
        FeedComment objFeedComment;
        for(FeedComment fc: lstLeadFeedComment){
            if(mapOldandNewFeedItem.containsKey(fc.FeedItemId)){
                objFeedComment = new FeedComment();
                objFeedComment.FeedItemId = mapOldandNewFeedItem.get(fc.FeedItemId);
                
                objFeedComment.CommentBody = fc.InsertedBy.Name + ': ' + fc.CommentBody;
                
                lstFeedCommentInsert.add(objFeedComment);
            }// End of IF
        }// End of For
        return lstFeedCommentInsert;
    }// End of Method - createFeedComments
    
    /**@@
#DESCRIPTION     : This method is used to perform call out to data.com when lead is coming in from Hubspot
#Paramaters      : List<Lead> newMap
#Return type     : void
@@**/    
     
    public static void dataDotComCall(List<Lead> newList, Map<Id,Lead> oldMap){
        
        newList = [SELECT id, New_Form_Submit__c FROM Lead WHERE id in: newList and Enriched_After_HubSpot__c = false and New_Form_Submit__c = true and Company != null and createdbyId =: CustomConstants.eloquaUserId and Ownerid =: CustomConstants.unassignedLeadQueueId];
        
        List<Id> leadIds = new List<Id>();
        
        for(Lead ld:newList){                         
            if(trigger.isInsert){
                leadIds.add(ld.Id);
            }else if(trigger.isUpdate && ld.New_Form_Submit__c != oldMap.get(ld.id).New_Form_Submit__c){
                leadIds.add(ld.Id);
            }
        }
        set<Id> sLeadId = new set<Id>();
        system.debug(leadIds);
        if(!leadIds.isEmpty()){
            Integer j = 0;
            for(integer i=0; i<leadIds.size(); i++){
                sLeadId.add(leadIds[i]);
                j++;
                
                if(math.mod(j, 100) == 0 || ((i+1) == leadIds.size() && !sLeadId.isEmpty())){
                    CallOutDataDotCom.dataDotComCallOut(UserInfo.getSessionId(), sLeadId);
                    sLeadId = new Set<Id>();
                }
            }         
        }
    }// End of Method - dataDotComCall 
     
    //Sprint-9 :SOZO-595 ----> Converted into workflow rules
    /**@@
#DESCRIPTION     : Send Lead Registration Approval and Rejaection email depending on Registration Status.
#Paramaters      : List<Lead> newList, Map<Id, Lead> oldMap
#Return type     : void
@@**/
    public static void LeadRegistrationEmail(List<Lead> newList, Map<Id, Lead> oldMap){
        
        List<Lead> lstLead= new list<Lead>();
        
        EmailTemplate templateRejection = [Select id from EmailTemplate where name =: CustomConstants.strLeadRegistarationRejectionTemplate ];
        
        List<Lead> leadList = [SELECT id, Owner.Email, Partner_Contact__r.Email FROM Lead WHERE id IN: newList];
        Map<ID, String> mapLeadWithOwnerEmail = new Map<Id, String>();
        Map<ID, String> mapLeadWithPartnerContactEmail = new Map<Id, String>();
        for(Lead ld: leadList){
            mapLeadWithOwnerEmail.Put(ld.id, ld.Owner.Email);
            mapLeadWithPartnerContactEmail.Put(ld.id, ld.Partner_Contact__r.Email);
        }
        
        for(Lead ld: newList){
            if((Trigger.isInsert && oldMap == NULL && ld.Registration_Status__c == CustomConstants.LeadRegistrationStatusRejected) || (Trigger.isUpdate && oldMap != NULL && oldMap.get(ld.id).Registration_Status__c!=ld.Registration_Status__c && ld.Registration_Status__c== CustomConstants.LeadRegistrationStatusRejected)){
                
                String[] toAddresses  = new String[] {};
                    String[] ccAddresses  = new String[] {};
                        
                        if(mapLeadWithOwnerEmail.containsKey(ld.id) && mapLeadWithOwnerEmail.get(ld.id) != NULL){
                            toAddresses.add(mapLeadWithOwnerEmail.get(ld.id));  
                        }
                if(mapLeadWithPartnerContactEmail.containsKey(ld.id) && mapLeadWithPartnerContactEmail.get(ld.id) != NULL){
                    toAddresses.add(mapLeadWithPartnerContactEmail.get(ld.id));
                }
                
                ccAddresses.add('partners@adaptiveinsights.com');
                
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setToAddresses(toAddresses);
                mail.setCcAddresses(ccAddresses);
                mail.setTemplateID(templateRejection.id);
                mail.setTargetObjectId(ld.id);
                mail.setTreatTargetObjectAsRecipient(false);
                mail.setSaveAsActivity(false);
                //Sending Lead Rejection Email
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            }// End else if            
        }// End for
    }//End of Method
    
    /**@@
#DESCRIPTION     : Delete lead record when Lead Registration Status changed to Rejected.
#Paramaters      : List<Lead> newList, Map<Id, Lead> oldMap
#Return type     : void
@@**/
    public static void LeadRegistrationRejected(List<Lead> newList, Map<Id, Lead> oldMap){
        List<Lead> lstLeadDel = new List<Lead>();
        Lead objLead;
        for(Lead ld: newList){
            if((Trigger.isInsert && oldMap == NULL && ld.Registration_Status__c == CustomConstants.LeadRegistrationStatusRejected) || (Trigger.isUpdate && oldMap != NULL && oldMap.get(ld.id).Registration_Status__c!=ld.Registration_Status__c && ld.Registration_Status__c== CustomConstants.LeadRegistrationStatusRejected)){
                objLead = new Lead(id=ld.id);
                lstLeadDel.add(objLead);             
            }// End If
        }// End for
        //deleting rejected leads
        if(!lstLeadDel.isEmpty()){
            delete lstLeadDel;
        }
    }//End of Method - LeadRegistrationRejected
    
    
    /**
* Default wrapper for triggered execution of business policies.
* Note that business policies will only be applied if the relevant trigger events are enabled 
* in the Triggers section on the policy detail page.
*/
    @TestVisible
    public static boolean testTriggers = false;
    public static void handleTrigger(sObjectType objType) {
        String triggerName = objType.getDescribe().getName() + 'Trigger';
       
        if (objType == null && !testTriggers && !DecsOnD.TriggerExecutionHandler.isOkToRunTrigger(objType)) {
            System.debug(LoggingLevel.INFO, 'Skipped execution of ' + triggerName);
            return;
        }
        //system.debug('Tigger newMap>>>>>'+trigger.newMap);
       // Map<String, String> results = null;
       // String event = 'unknown';
        if (trigger.isInsert) {
            handleTrigger(objType, trigger.newMap, null);} 
        else if (trigger.isUpdate) {
            handleTrigger(objType, trigger.newMap, trigger.oldMap);
        } else if (trigger.isDelete) {
            handleTrigger(objType, null, trigger.oldMap);
        }
    }
    
        
    /**
* Wrapper for triggered execution of business policies which allows for filtered maps of records.
* Note that business policies will only be applied if the relevant trigger events are enabled 
* in the Triggers section on the policy detail page.
*/
    public static void handleTrigger(sObjectType objType, Map<Id, SObject> newMap, Map<Id, SObject> oldMap) {
        system.debug('newMap 1 >>>>>'+newMap);
        String triggerName = objType.getDescribe().getName() + 'Trigger';
        
        // Business policy invocation is disabled in various situations, such as in unit tests or when called from a batch or a future method.
        // If testTriggers is true, this code will be executed for test coverage purposes -- but the Decisions on Demand API call will be a no-op
        if (objType == null && !testTriggers && !DecsOnD.TriggerExecutionHandler.isOkToRunTrigger(objType)) {
            System.debug(LoggingLevel.INFO, 'Skipped execution of ' + triggerName + '. Unable to apply business policies in current context');
           return;
        } 
        String event = 'unknown';
        system.debug('newMap>>>>>'+newMap);       
        boolean noRecords = ((newMap==null) || newMap.size()==0);
        if (trigger.isInsert) {
            event = 'insert';
        } else if (trigger.isUpdate) {
            event = 'update';
        } else if (trigger.isDelete) {
            // There's no newMap for a delete trigger
            noRecords = ((oldMap==null) || oldMap.size()==0);
            event = 'delete';
        }
        if (noRecords) {
            System.debug(LoggingLevel.INFO, 'Skipped execution of ' + triggerName + ' after ' + event + '. No eligible records');
            return;
        }
        
        System.debug(LoggingLevel.INFO, 'Executing ' + triggerName + ' after ' + event);        
        Map<String, String> results = null;
        if (trigger.isInsert) {
            results = DecsOnD.TriggerExecutionHandler.executePolicySObjectInsert(newMap, triggerName);
        } else if (trigger.isUpdate) {
            // Make sure the oldMap contains the same records as the new
            Map<Id, SObject> filteredOldMap = new Map<Id, SObject>();
            if (oldMap==null) {
                filteredOldMap.putAll(newMap);
            } else {
                for (Id recId : newMap.keySet()) {
                    if (oldMap.containsKey(recId)) {
                        filteredOldMap.put(recId, oldMap.get(recId));
                    } else {
                        filteredOldMap.put(recId, newMap.get(recId));
                    }
                }
            }
            results = DecsOnD.TriggerExecutionHandler.executePolicySObjectUpdate(newMap, filteredOldMap, triggerName);
        } else if (trigger.isDelete) {
            results = DecsOnD.TriggerExecutionHandler.executePolicySObjectDelete(oldMap, triggerName);
        }
        if (results==null) {
            System.debug(LoggingLevel.INFO, triggerName + ' executed successfully after ' + event);        
        } else {
            System.debug(LoggingLevel.ERROR, 'Errors during execution of ' + triggerName + ' after ' + event + ': ' + results);        
        }
    }
    
    /**@@
    #DESCRIPTION     : This method is used to set Email Opt-Out field if the conditions are met
    #Paramaters      : List<Lead> newList - List of leads being updated/inserted
    #Return type     : void
    @@**/    
    public static void setEmailOptOut(List<Lead> newList)
    {
        for(Lead leadObj : newList)
        {
            // if it's already true, no need to check
            if(leadObj.HasOptedOutOfEmail)
                continue;
            
            // if the lead has been rejected, check reason
            if(leadObj.Status == CustomConstants.LeadStatusRejected)
            {
                // if the reject reason is NLWC or competitor, then mark it
                if(leadObj.Reject_Reason__c == CustomConstants.ReasonNLWC || leadObj.Reject_Reason__c == CustomConstants.ReasonComp)
                    leadObj.HasOptedOutOfEmail = true;
            }
            // else if the lead has been unqualified, check reason
            else if(leadObj.Status == CustomConstants.LeadStatusUnqualified)
            {
                // if the unqualified reason is NLWC or competitor, then mark it
                if(leadObj.Unqualified_Reason__c == CustomConstants.ReasonNLWC || leadObj.Unqualified_Reason__c == CustomConstants.ReasonComp)
                    leadObj.HasOptedOutOfEmail = true;
            }
        }
    }
    
    /**@@
    #DESCRIPTION     : This method is used to set Enriched After HubSpot to true if HubSpot is done
  #         : This will be removed later on once data.com or another service is ready to do the enrichment
    #Paramaters      : List<Lead> newList - List of leads being updated/inserted
    #Return type     : void
    @@**/ 
    public static void setEnrichedAfterHubSpot(List<Lead> newList)
    {
        for(Lead leadObj : newList)
        {
            // if it's already true, no need to check
            if(!leadObj.New_Form_Submit__c)
                continue;
            
            leadObj.Enriched_After_HubSpot__c = true;
        }
    }
    
        
    /**
     * Filter leads that have been cleaned by data.com
     */
    /* Replaced with batch class provided by DoD
    public static Map<Id, SObject> filterLeadsReadyForAssignment(Map<Id, Lead> newMap, Map<Id, Lead> oldMap) {
        if (!Trigger.isUpdate) return null;
        if ((newMap==null) || (oldMap==null)) return null;
        Map<Id, SObject> filteredNewMap = new Map<Id, SObject>();
        for (Lead newLead : newMap.values()) {
            System.debug('### checking lead: '+newLead.Id);
            System.debug('### checking lead enriched: '+newLead.Data_com_Enriched__c);
            // Filter out only the leads that have been enriched by Data.com
            if (newLead.Data_com_Enriched__c == true) {
                Lead oldLead = oldMap.get(newLead.Id);
                System.debug('### checking old lead enriched: '+oldLead.Data_com_Enriched__c);
                // Only handle leads for which the enriched status has changed
                if ((oldLead!=null) && (newLead.Data_com_Enriched__c!=oldLead.Data_com_Enriched__c)) {
                    System.debug('### adding lead to filteredNewMap');
                    filteredNewMap.put(newLead.Id, newLead);
                }
            }
        }
        return filteredNewMap;
    }   
    */ 
    
    /**@@
    #DESCRIPTION     : When a contact and/or opportunity is created through lead conversion where the registration status on lead is expired,
             blank out the partner fields on the newly created contact and opportunity.
    #Paramaters      : List<Lead> newList - List of leads being updated
    #Return type     : void
    @@**/ 
    public static void blackOutContactOpportunityPatnerFields(List<Lead> newList)
    {
        
        List<Contact> conList = new List<Contact>();
        List<Opportunity> oppList = new List<Opportunity>();
        
        List<Lead> leadList = [Select id, convertedopportunityid, convertedcontactid from Lead Where id IN: newList AND Registration_Status__c =: 'Expired' AND Lead_Source_Most_Recent__c = 'Partner - Prospect Referral Form' AND IsConverted =: true];
        
        for(Lead l:leadList){
            
            //blank out the partner fields on the newly created contact
            Contact con = new Contact(id=l.convertedcontactid);
           // con.Follow_Up__c = null;
            con.MDF_Approval_Number__c = null;
            con.MDF_Sourced_Lead__c = null;
            
            con.Partner__c = null;
            con.Partner_Contact__c = null;
            conList.add(con);
            
            //blank out the partner fields on the newly created opportunity
            Opportunity opp = new Opportunity(id=l.convertedopportunityid);
            opp.Partner_Account__c = null;
           // opp.Referral_Follow_Up__c = null;
            opp.Partner_Contact__c = null;
            opp.Partner_Contact_Email__c = null;
            oppList.add(opp);
            
        }//End of For Loop
        
        if (!conList.isEmpty()){
            update conList;
        }
        
         if (!oppList.isEmpty()){
             update oppList;
        }
    }//End of blackOutContactOpportunityPatnerFields Method
    
    /**@@
    #DESCRIPTION     : When a lead from partner is expired, change the follow up to AI
    #Paramaters      : List<Lead> newList - List of leads being updated, Map<Id, Lead> oldMap, the previous values of the leads
    #Return type     : void
    @@**/ 
    public static void updateExpiredLeads(List<Lead> newList, Map<Id, Lead> oldMap)
    {
        if(oldMap == null)
            return;
        
        for(Lead leadObj : newList)
        {
            if(leadObj.Partner_Contact__c != null && leadObj.Registration_Status__c != oldMap.get(leadObj.Id).Registration_Status__c && leadObj.Registration_Status__c == CustomConstants.LeadRegistrationStatusExpired)
            {
                leadObj.Partner_Referal_Follow_Up__c = CustomConstants.LeadFollowUpAI;
            }
        }
    }
    
    
} //End of CLASS