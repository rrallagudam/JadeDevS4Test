<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Customer_Reference_Acknowledgement_Email_Notification</fullName>
        <description>Customer Reference Acknowledgement Email Notification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Customer_Reference_Acknowledgement_Notification</template>
    </alerts>
    <alerts>
        <fullName>Customer_Reference_Delivered_Email_Notification</fullName>
        <description>Customer Reference Delivered Email Notification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Customer_Reference_Delivered</template>
    </alerts>
    <alerts>
        <fullName>Customer_Reference_Request_Email_Notification</fullName>
        <description>Customer Reference Request Email Notification</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <recipient>Customer_Reference</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Reference_Request_Receipt_Notification</template>
    </alerts>
    <rules>
        <fullName>Customer Reference Acknowledgement Email Notification</fullName>
        <actions>
            <name>Customer_Reference_Acknowledgement_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Reference_Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Researching</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Customer Reference Delivered Email Notification</fullName>
        <actions>
            <name>Customer_Reference_Delivered_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Reference_Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Delivered</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Customer Reference Request Email Notification</fullName>
        <actions>
            <name>Customer_Reference_Request_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Reference_Request__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
