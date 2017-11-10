/**
 * @description Helper class for Activity type objects: Event and Task 
 * @author Thomas Diego Prananta, Traction on Demand
 * @date Sept 21, 2016
 */
public class trac_ActivityHelper {
	private static final Boolean LOG_DEBUG = false;
	private static final String FORM_SUBJECT_STR = 'Form:';
	private static final String ELOQUA_USER_NAME_STR = 'Eloqua';
	private static final String EVENT_TYPE = 'First Meeting';

	private Set<Id> matchingActivityIds = null;
	private sObjectType activityType = null;

	private List<Event> oldEventList;
	private List<Event> newEventList;
	private List<Opportunity> oppToUpdate;
	private Map<Event,Opportunity> eventOppMap;
	// Constructors
	//Filter the tasks based on specific criteria
	public trac_ActivityHelper(List<Task> newTasks) {
		if(LOG_DEBUG){
			System.debug('trac_ActivityHelper-Task-Constructor Enter');
			System.assert(false == newTasks.isEmpty());
		}
		activityType = Schema.Task.sObjectType;
		matchingActivityIds = new Set<Id>();

		for(Task tsk: newTasks) {
			if(matchingCriteria( 
				tsk.CreatedDate,
				tsk.CreatedById,
				tsk.Subject)) {
				matchingActivityIds.add(tsk.Id);
			}
		}
	}
	// Constructor
	// Filter the events based on specific criteria
	public trac_ActivityHelper(List<Event> newEvents) {
		if(LOG_DEBUG){
			System.debug('trac_ActivityHelper-Event-Constructor Enter');
		}
		System.assert(false == newEvents.isEmpty());
		this.newEventList = newEvents;
		activityType = Schema.Event.sObjectType;
		matchingActivityIds = new Set<Id>();

		for(Event evt: newEvents) {
			if(matchingCriteria( 
				evt.CreatedDate,
				evt.CreatedById,
				evt.Subject)) {
				matchingActivityIds.add(evt.Id);
			}
		}
		if(LOG_DEBUG)
		System.debug('FINISHED Event Constructor');
	}

	public trac_ActivityHelper(List<Event> newEvents, List<Event> oldEvents){
		if(LOG_DEBUG){
			System.debug('ENTERED ActivityHelper Update Constructor');
		}
		this.newEventList = newEvents;
		this.oldEventList = oldEvents;
	}

	// Helper method to get related Tasks records
	private Set<Id> getRelatedContactIdsFromTasks() {
		
		Set<Id> contactIdList = new Set<Id>();
		List<Task> taskQueryList = 
		[
			SELECT Id, Who.Id, Who.Type,
			(
				SELECT RelationId
				FROM TaskWhoRelations
			)
			FROM Task
			WHERE Id IN :matchingActivityIds
		];
		
		if(taskQueryList.isEmpty()) {
			return contactIdList;
		}

		for(Task tsk: taskQueryList) {

			if( null != tsk.Who) {
				if('Contact' == tsk.Who.Type && null != tsk.Who.Id) {
					contactIdList.add(tsk.Who.Id);
				}
			}

			// Find all other related contacts through TaskWhoRelations
			for(Integer index =0; index < tsk.TaskWhoRelations.size(); index++) {
				contactIdList.add(tsk.TaskWhoRelations[index].RelationId);
			}
		}
		return contactIdList;
	}


	// Helper method to get related Events records
	private Set<Id> getRelatedContactIdsFromEvents() {
		
		Set<Id> contactIdList = new Set<Id>();
		List<Event> eventQueryList = 
		[
			SELECT Id, Who.Id, Who.Type,
			(
				SELECT RelationId
				FROM EventWhoRelations
			)
			FROM Event
			WHERE Id IN :matchingActivityIds
		];

		if(eventQueryList.isEmpty()) {
			return contactIdList;
		}

		for(Event evt: eventQueryList) {

			if( null != evt.Who) {
				if('Contact' == evt.Who.Type && null != evt.Who.Id) {
					contactIdList.add(evt.Who.Id);
				}
			}

			for(Integer index =0; index < evt.EventWhoRelations.size(); index++) {
				contactIdList.add(evt.EventWhoRelations[index].RelationId);
			}
		}

		return contactIdList;
	}

	// Helper function to return a set of contacts ID that is connected to the Task or Event
	private Set<Id> getContactsIDList() {
		Set<Id>  contactIdList = new Set<Id>();

		if(Schema.Task.sObjectType == activityType) {
			contactIdList = getRelatedContactIdsFromTasks();

		} else if (Schema.Event.sObjectType == activityType) {
			contactIdList = getRelatedContactIdsFromEvents();
		}

		return contactIdList;
	}

	//Helper function to filter out activities that match the ctiresia
	private Boolean matchingCriteria( 
		DateTime activityCreatedDateTime,
		String activityCreatedById,
		String activitySubjectLine) {
		
		Date convertedDate = Date.newinstance(
			activityCreatedDateTime.year(), 
			activityCreatedDateTime.month(), 
			activityCreatedDateTime.day());

		if( activityCreatedById.startsWithIgnoreCase(Label.ELOQUA_USER_SF_ID) &&
			System.today().isSameDay(convertedDate) &&
			activitySubjectLine.startsWithIgnoreCase(FORM_SUBJECT_STR))
		{
			System.debug('Criteria matched');
			return true;
		} 
		return false;
	}

	// Method to reopen contacts that matches a certain criteria 
	// determine by the helper function 'matchingCriteria'
	// Limitation on Salesforce API: we are only able to get the primary contact 
	// in an afterInsert trigger
	// https://success.salesforce.com/issues_view?id=a1p30000000Su0FAAS
	public void reopenContacts() {

		Set<Id> affectedContactsId = getContactsIDList();

		List<Contact> contactsToBeReopened = 
		[
			SELECT Id, Name, Reopen__c
			FROM Contact
			WHERE Id IN :affectedContactsId
		];

		for(Contact ct: contactsToBeReopened) {
			System.debug(+ ct.Name + ' reopened!!');
			ct.Reopen__c = true;
		}
		update contactsToBeReopened;
	}
	/**
	*@description Iterates through the Events and checks if the related opportunity needs an update.
	*@author Kevin Chow, Traction On Demand
	*@date October 12, 2016
	*/
	public void updateMatchingEvents() {
		oppToUpdate = new List<Opportunity>();
		Map<Id,Event> oppIdMap = new Map<Id,Event>();
		if(LOG_DEBUG)
			System.debug('ENTERED Matching Events');

		for(integer i=0; i < newEventList.size(); i++) {
			//Trigger fired on update
			if(null != this.oldEventList){
				if(this.newEventList[i].Type != this.oldEventList[i].Type
					&& this.newEventList[i].Type == EVENT_TYPE
					|| this.newEventList[i].EndDateTime != this.oldEventList[i].EndDateTime){
					oppIdMap.put(this.newEventList[i].whatId, this.newEventList[i]);
				}
			}
			//Trigger fired on insert
			else{
				if(this.newEventList[i].Type == EVENT_TYPE){
					oppIdMap.put(this.newEventList[i].whatId,this.newEventList[i]);
				}
			}
			
		}
		//We query the opportunities related to each event
		List<Opportunity> oppList = [
		SELECT Id, First_Meeting_Date__c
		FROM Opportunity
		WHERE Id IN :oppIdMap.keySet()];

		List<Opportunity> oppToUpdate = new List<Opportunity>();
		for(Opportunity opp: oppList){
			Event ev = oppIdMap.get(opp.Id);
			if(ev != null){
				if(checkOppDate(opp.First_Meeting_Date__c)){
					opp.First_Meeting_Date__c = date.newinstance(ev.EndDateTime.year(),
					ev.EndDateTime.month(),ev.EndDateTime.day());
					oppToUpdate.add(opp);
				}
				else{
					Date result = findLatestDate(opp);
					opp.First_Meeting_Date__c = result;
					oppToUpdate.add(opp);
				}
			}
		}
		if(!oppToUpdate.isEmpty()){
			update oppToUpdate;
		}
	}
	/**
	*@description Checks if the First Meeting Date field is null in order to proceed with update
	*@author Kevin Chow, Traction On Demand
	*@date October 12, 2016
	*/
	private Boolean checkOppDate(Date dt) {
		if(LOG_DEBUG)
			System.debug('ENTERED OPP DATE CHECK');
		if(dt == null){
			if(LOG_DEBUG)
				System.debug('The opportunity is valid for update');
			return true;
		}
		return false;
	}
	/**
	*@description Queries the related event and returns the latest End Date
	*@author Kevin Chow, Traction On Demand
	*@date October 19, 2016
	*/
	private Date findLatestDate(Opportunity opp){
		if(LOG_DEBUG)
			System.debug('ENTERED FINDING DATE');
		
		List<Event> eventDates = [
		SELECT Id, WhatId, EndDateTime
		FROM Event
		WHERE WhatId = :opp.Id
		ORDER BY EndDateTime DESC ];

		if(eventDates.size() > 0){
			DateTime resultDate = eventDates.get(0).EndDateTime;
			return date.newInstance(resultDate.Year(), resultDate.Month(), resultDate.Day());
		}
		return null;
	}
}