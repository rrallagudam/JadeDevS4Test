<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Task_Status_to_Completed</fullName>
        <field>Status</field>
        <literalValue>Completed</literalValue>
        <name>Update Task Status to Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Partner Community Task Process</fullName>
        <actions>
            <name>Update_Task_Status_to_Completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>CreatedBy.ProfileId = &apos;00e61000000ZApv&apos; ||
CreatedBy.ProfileId = &apos;00e61000000ZAsa&apos; ||
CreatedBy.ProfileId = &apos;00e61000000ZAve&apos; ||
CreatedBy.ProfileId = &apos;00e61000000ZAvZ&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
