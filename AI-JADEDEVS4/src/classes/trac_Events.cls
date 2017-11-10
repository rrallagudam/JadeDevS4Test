/**
 * @description Domain class for Event object
 * @author Thomas Diego Prananta, Traction on Demand
 * @date Sept 21, 2016 
 */
public class trac_Events {
	
	private static final Boolean LOG_DEBUG = false;
	private List<Event> eventsList;
	private List<Event> oldEventsList;

	//Constructor
	public trac_Events(List<sObject> events) {
		if(LOG_DEBUG)  {
			System.debug('trac_Events - ENTER');
		}
		this.eventsList = events;
	}
	public trac_Events(List<sObject> newEvents, List<sObject> oldEvents) {
		this(newEvents);
		this.oldEventsList = oldEvents;
	}
	//Trigger handler
	public static void triggerHandler() {
		if(LOG_DEBUG) {
			System.debug('trac_Events.triggerHandler - ENTER');
		}

		if(Trigger.isAfter) {
			if(Trigger.isInsert) {
				new trac_Events(trigger.new).onAfterInsert();
			}
			else if(Trigger.isUpdate){
				new trac_Events(trigger.new,trigger.old).onAfterUpdate();
			}
		}
	}
	private void onAfterInsert() {
		if(LOG_DEBUG) {
			System.debug('trac_Tasks.triggerHandler.onAfterInsert - ENTER');
		}
		trac_ActivityHelper activityHelper =  new trac_ActivityHelper(eventsList);
		activityHelper.reopenContacts();
		activityHelper.updateMatchingEvents();
	}
	private void onAfterUpdate() {
		if(LOG_DEBUG)
			System.debug('ENTERED Update event');
		trac_ActivityHelper activityHelper = new trac_ActivityHelper(eventsList,oldEventsList);
		activityHelper.updateMatchingEvents();
	}
}