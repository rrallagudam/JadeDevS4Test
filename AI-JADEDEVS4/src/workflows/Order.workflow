<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Adaptive_Subsidiary</fullName>
        <field>Adaptive_Subsidiary__c</field>
        <formula>TEXT(Account.Adaptive_Subsidiary__c)</formula>
        <name>Update Adaptive Subsidiary</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Adaptive Subsidiary</fullName>
        <actions>
            <name>Update_Adaptive_Subsidiary</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Adaptive Subsidiary When Order Created.</description>
        <formula>1=1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
