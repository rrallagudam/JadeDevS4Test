/**@@
#CLASS NAME    :  ExceptionHandlingEmail 
#DESCRIPTION   :  This is Exception Handling class which sends email to the owner id stored in custom field on receiving the exception.
@@**/
public class ExceptionHandlingEmail {
     /**@@
        #DESCRIPTION    : Exception Handling class which sends email on receiving the exception
        #Paramaters        : String
    @@**/
    public static void sendEmailonException(exception strException){
        try{
            SkipAutomationSetting__c customSettingObj =  SkipAutomationSetting__c.getOrgDefaults();

            list<Messaging.SingleEmailMessage> mailList  = new list<Messaging.SingleEmailMessage>();
            string errorOccured ='';
            if(string.valueOf(strException) != '' && string.valueOf(strException) != Null){
                errorOccured += 'Following are the details of exception :';
                errorOccured += '<br></br> Cause of the exception: ' +strException.getCause();
                errorOccured += '<br></br> Message: ' +strException.getMessage();
                errorOccured += '<br></br> Stack trace: ' +strException.getStackTraceString();
                errorOccured += '<br></br>  Type of exception: ' +strException.getTypeName();
                if(strException.getTypeName() == 'System.DmlException'){
                    for(Integer i = 0; i < strException.getNumDml(); i++ ){
                         errorOccured += '<br></br> Fields for error at position :' +i+ ' ' + strException.getDmlFieldNames(i);
                         errorOccured += '<br></br> Record Id that caused error at position :' +i+ ' ' +strException.getDmlId(i);
                    }
                }
            }
            if(customSettingObj.ExceptionHandlingUsers__c != 'none' && errorOccured!= '' && errorOccured != Null){
                if(customSettingObj.ExceptionHandlingUsers__c.contains(';')){
                    for(String s : customSettingObj.ExceptionHandlingUsers__c.split(';')){
                        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                        mail.setSubject('Developer Script Exception');
                        mail.setHtmlBody( 'We have received error through execution of apex class: ' + errorOccured);
                        mail.setTargetObjectId (s.trim());
                        mail.saveAsActivity = false;
                        mailList.add(mail);
                    }//End of for
                }
            }
            if(!mailList.isEmpty()){
                Messaging.sendEmail(mailList);
            }
        }
        catch(Exception e){
        }
    }//End of Method
}