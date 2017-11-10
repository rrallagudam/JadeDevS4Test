/**
 * Helper class for use of Decisions on Demand business policies from triggers
 * 
 * Copyright 2017, Decisions on Demand, Inc.
 * All Rights Reserved.
 * 
 * For support, contact support@decisionsondemand.com
 */
public class DecsOnD_TriggerHelper {
    @TestVisible
    public static boolean testTriggers = false;

    // Data.com clean statuses for which leads should NOT be assigned
    public static final Set<String> CLEAN_STATUSES_TO_SKIP = new Set<String>(new String[]{
        'Pending'
    });
    
    /**
     * Default wrapper for triggered execution of business policies.
     * Note that business policies will only be applied if the relevant trigger events are enabled 
     * in the Triggers section on the policy detail page.
     */
    public static void handleTrigger(sObjectType objType) {
        String triggerName = objType.getDescribe().getName() + 'PolicyTrigger';
        if (!testTriggers && !DecsOnD.TriggerExecutionHandler.isOkToRunTrigger(objType)) {
            System.debug(LoggingLevel.INFO, 'Skipped execution of ' + triggerName);
            return;
        }
         system.debug('Tigger newMap>>>>>'+trigger.newMap);
        Map<String, String> results = null;
        String event = 'unknown';
        if (trigger.isInsert) {
            handleTrigger(objType, trigger.newMap, null);
        } else if (trigger.isUpdate) {
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
        String triggerName = objType.getDescribe().getName() + 'PolicyTrigger';
        // Business policy invocation is disabled in various situations, such as in unit tests or when called from a batch or a future method.
        // If testTriggers is true, this code will be executed for test coverage purposes -- but the Decisions on Demand API call will be a no-op
        if (!testTriggers && !DecsOnD.TriggerExecutionHandler.isOkToRunTrigger(objType)) {
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
    
    /**
     * Filter leads that have been cleaned by data.com
     */
    public static Map<Id, Lead> filterLeadsReadyForAssignment(Map<Id, Lead> newMap, Map<Id, Lead> oldMap) {
        if (!Trigger.isUpdate) return null;
        if ((newMap==null) || (oldMap==null)) return null;
        Map<Id, Lead> filteredNewMap = new Map<Id, Lead>();
        for (Lead newLead : newMap.values()) {
            // Filter out only the leads that have been cleaned by Data.com
            if (!CLEAN_STATUSES_TO_SKIP.contains(newLead.CleanStatus)) { 
                Lead oldLead = oldMap.get(newLead.Id);
                // Only handle leads for which the status has changed
                if ((oldLead!=null) && (newLead.CleanStatus!=oldLead.CleanStatus)) {
                    filteredNewMap.put(newLead.Id, newLead);
                }
            }
        }
        return filteredNewMap;
    }    
}