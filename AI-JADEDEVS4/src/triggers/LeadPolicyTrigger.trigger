/**
 * Trigger to apply Decisions on Demand business policies for the Lead object
 * 
 * Copyright 2017, Decisions on Demand, Inc.
 * All Rights Reserved.
 * 
 * For support, contact support@decisionsondemand.com
 */
trigger LeadPolicyTrigger on Lead (after insert, after update, after delete) {
    if (Trigger.isUpdate) {
        Map<Id, Lead> filteredNewMap = DecsOnD_TriggerHelper.filterLeadsReadyForAssignment(Trigger.newMap, Trigger.oldMap);
        system.debug('filteredNewMap >>>'+filteredNewMap);
        DecsOnD_TriggerHelper.handleTrigger(Lead.sObjectType, trigger.newMap, Trigger.oldMap);
    } else {
        DecsOnD_TriggerHelper.handleTrigger(Lead.sObjectType);
    }
}