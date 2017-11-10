/**@@
# Class: ContactsFindMatchesExtension
# Author: Jade global Inc
# Date: 6th Oct 2017
# This is an extension to the visualforce page 'FindMatchesContact'
@@**/
public class ContactsFindMatchesExtension {
    Public Contact objContact {get; set;}
    String strContactId;
    
    // For validation message display
    Public boolean displayValidationMsg {get; set;}  
    Public string strValidationMsg {get; set;}
    
    Public List<wrapperContact> matchingContacts {get; set;}
    
    //Search Matching records based on field Selction
    Public boolean isContactFullNameSelected {get; set;}
    Public boolean isContactCompanySelected {get; set;}
    Public boolean isContactEmailSelected {get; set;}
    Public boolean isContactPhoneSelected {get; set;}
    
    Public String strContactFirstName {get; set;}
    Public String strContactLastName {get; set;}
    Public String strContactCompanyName {get; set;}
    Public String strContactEmail {get; set;}
    Public String strContactPhone {get; set;}
    
    Contact stdContact;
    
    // Constructor
    public ContactsFindMatchesExtension(Apexpages.standardController stdCon){
        try{
            
            //list<Contact> lstContactToBeShown = new list<Contact>();
            stdContact = (Contact)stdCon.getRecord();
            strContactId = ApexPages.currentPage().getParameters().get('id');
            if(strContactId != null){
                string strSOQL = 'SELECT ' + retriveAllFieldsofObject('Contact') + ', Owner.Name FROM Contact WHERE id =: strContactId';
                
                objContact = database.query(strSOQL);
                
                displayValidationMsg = false;
                strValidationMsg = '';
                
                isContactFullNameSelected = false;
                isContactCompanySelected = true;
                isContactEmailSelected = true;
                isContactPhoneSelected = false;
                
                strContactFirstName = objContact.FirstName;
                strContactLastName = objContact.LastName;
                //strContactCompanyName = objContact.Company;
                strContactEmail = objContact.Email;
                strContactPhone = objContact.Phone;
                
                //lstContactToBeShown.add(objContact);
                
                // Fetch Matching Contact Records --- START
                loadMatchingRecords();      
                // Fetch Matching Contact Records --- END
                
                
                
            }//End of IF
        }catch (Exception ex){
            system.debug('Exception during fetching Contact record:- ' + ex.getMessage());
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, ex.getMessage() + 'at line no: '+ex.getLinenumber());
            ApexPages.addMessage(myMsg);
        }// End of try/Catch block
        
    }//End of Constructor
    
    
    /**@@
        #DESCRIPTION     : This method is used to retrive All Fields of Salesforce Object
        #Paramaters      : Salesforce Object API Name
    @@**/
    public static string retriveAllFieldsofObject(string strObjectAPIName){
        String selects = '';
        
        Map<String, Schema.SObjectField> fMap = Schema.getGlobalDescribe().get(strObjectAPIName.toLowerCase()).getDescribe().Fields.getMap();
        list<string> selectFields = new list<string>();
        
        if (fMap != null){
            for (Schema.SObjectField ft : fMap.values()){ // loop through all field tokens (ft)
                Schema.DescribeFieldResult fd = ft.getDescribe(); // describe each field (fd)
                selectFields.add(fd.getName());                
            }
        }
        if (!selectFields.isEmpty()){
            for (string s:selectFields){
                selects += s + ',';
            }
            if (selects.endsWith(',')){selects = selects.substring(0,selects.lastIndexOf(','));}
             
        }
        
        return selects;
    }//End of method retriveAllFieldsofObject()
    
    public void loadMatchingRecords(){

        matchingContacts = new list<wrapperContact>();
        
        String strSOQLMatchContact = 'SELECT ' + retriveAllFieldsofObject('Contact') + ', Account.Name, Partner__r.Name, Owner.Name FROM Contact WHERE (Email =: strContactEmail OR LastName =: strContactLastName) AND id !=: strContactId';
        
        wrapperContact objwrapperContact;
        for(Contact con: database.query(strSOQLMatchContact)){
            objwrapperContact = new wrapperContact();
            objwrapperContact.objContact = con;
            objwrapperContact.isContactSelected = false;
            matchingContacts.add(objwrapperContact);
        }       
    }
    
    /*public string mergeWithContacts(){
        
        list<Contact> ListSelectedContacts = new list<Contact>();
        integer TotalSelectedContacts = 0;
        strValidationMsg = '';
        string strParameter = '';
        string strMergeURL = '';
        
        try{
            if(!matchingContacts.isEmpty()){
                for(wrapperContact wrap: matchingContacts){
                    //if(ListSelectedContacts.size() < 2){
                        if(wrap.isContactSelected){
                            ListSelectedContacts.add(wrap.objContact);
                            TotalSelectedContacts++;
                            System.debug('#@#@#@#@ Inside FOR #@#@#@#@');
                        }//End of IF
                    //}//End of IF
                }//End of FOR
            }//End of IF
            System.debug('#@#@#@#@ TotalSelectedContacts #@#@#@#@:'+TotalSelectedContacts);
            
            if(TotalSelectedContacts > 2){
                
                displayValidationMsg = true;
                strValidationMsg = 'Error: You must select maximum of 3 records to merge inclulding Master Record.';
                
                //ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,strValidationMsg));
                
                //System.debug('#@#@#@#@ %$%$%$ #@#@#@#@:' + strValidationMsg);
                return null;
            }else{
                if(!ListSelectedContacts.isEmpty() && ListSelectedContacts.size() < 2){
                    
                    for(wrapperContact wrap1: matchingContacts){
                        strParameter += '&cid=' + wrap1.objContact.id;  
                    }
                    
                    strMergeURL = '/merge/conmergewizard.jsp?id=' + strParameter;
                    System.debug('#$%^@#$$%^ strMergeURL: '+strMergeURL);
                    return strMergeURL;
                }//End of IF
            }//End of If-Else
            
        }catch(Exception ex){
             system.debug('Exception during Merge Leads:- ' + ex.getMessage() +' at line no: '+ex.getLineNumber());
            
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, ex.getMessage());
            ApexPages.addMessage(myMsg);
        }//End of try-catch Block
        return '';
    }*/
    
    /**@@
        #DESCRIPTION     : Wrapper Class of Contact
        #Paramaters      : None
    @@**/
    public class wrapperContact{
        public boolean isContactSelected {get; set;}
        public Contact  objContact {get; set;}
    }// End of wrapper Class

    
}//End of Class 'ContactsFindMatchesExtension'