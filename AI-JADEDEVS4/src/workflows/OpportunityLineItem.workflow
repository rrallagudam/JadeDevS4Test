<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Service_Type_update</fullName>
        <field>Service_Type__c</field>
        <formula>text(Product2.Service_Type__c)</formula>
        <name>Service Type update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Opportunity Product%3A Service Type Update</fullName>
        <actions>
            <name>Service_Type_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>OpportunityLineItem.Product2_Product__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>update the service type for opportunity product items</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
