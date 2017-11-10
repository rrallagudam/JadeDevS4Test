/**
 * @description Domain class for Task Objet
 * @author Thomas Diego Prananta, Traction on Demand
 * @date Sept 21, 2016
 */
public class trac_Tasks {
    
    private static final Boolean LOG_DEBUG = true;
    private List<Task> tasksList;

    //Constructor
    public trac_Tasks(List<sObject> tasks) {

        if(LOG_DEBUG)  {
            System.debug('trac_Tasks - ENTER');
        }
        this.tasksList = tasks;
    }

    //Trigger handler
    public static void triggerHandler() {
        if(LOG_DEBUG) {
            System.debug('trac_Tasks.triggerHandler - ENTER');
        }

        if(Trigger.isAfter) {
            if(Trigger.isInsert) {
                new trac_Tasks(trigger.new).onAfterInsert();
            }
        }
    }

    private void onAfterInsert() {
        if(LOG_DEBUG) {
            System.debug('trac_Tasks.triggerHandler.onBeforeInsert - ENTER');
        }
        trac_ActivityHelper activityHelper =  new trac_ActivityHelper(tasksList);
        activityHelper.reopenContacts();        
    }
}