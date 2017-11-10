/**@@
#TRIGGER NAME          :    TaskTrigger
#HANDLER CLASS NAME    :    TaskTriggerHandler
#HELPER CLASS NAME     :    None
#DESCRIPTION           :    This Trigger will handles all the trigger events and make call to the Handler class to handling the    appropriate logic.   
@@**/
trigger TaskTrigger on Task (before insert, before update,after insert,after update){
    
    //This is used to have overall control of the code in case of data loading to deactive triggers, WFs and Validation Rules. 
    if(SkipAutomationSetting__c.getOrgDefaults().All__c){
        if(SkipAutomationSetting__c.getOrgDefaults().Task_Automation__c){ 
            
            Profile pfile = [Select Name from Profile where Id =: userinfo.getProfileid()];
            String pname = pfile.name;
            
            if(trigger.isbefore){
                if(trigger.isInsert){
                    // EA-1247 : Restrict Partner Community users from being able to add new tasks to expired leads and opportunties
                    TaskTriggerHandler.restrictPartnertoAddTaskforExpired(trigger.new);
                }
                else if(trigger.isUpdate){
                     
                }
            }
            else{
                if(trigger.isInsert){
                    TaskTriggerHandler.onAfterInsertUpdate(trigger.new, null); 
                    //EA-593: Partner Last Activity Date will be timestamped when an activity is created by a sales rep or by a partner user.
                    TaskTriggerHandler.timestampPartnerLastActivityDate(trigger.new);
                    
                    List<Id> taskIds = new List<Id>();
                    
                    for(Task t: trigger.new){
                        taskIds.add(t.id);
                    }
                    if(pname.Contains('Partner Community') || Test.isRunningTest()){      
                        TaskTriggerHandler.afterInsert(taskIds);
                    }
                }
                else if(trigger.isUpdate){
                    TaskTriggerHandler.onAfterInsertUpdate(trigger.new,Trigger.oldMap); 
                } 
            }
        }
    }
}