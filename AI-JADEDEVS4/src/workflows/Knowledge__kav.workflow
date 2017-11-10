<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_to_Article</fullName>
        <description>Notification to Creator that a Knowledge Article has been Approved</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderAddress>customersuccess@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X8B_Knowledge_Article_Approved</template>
    </alerts>
    <alerts>
        <fullName>Notification_to_Creator_that_Knowledge_Article_has_been_Rejected</fullName>
        <description>Notification to Creator that Knowledge Article has been Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderAddress>customersuccess@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X8C_Knowledge_Article_Not_Approved</template>
    </alerts>
    <alerts>
        <fullName>Notification_to_Review_Knowledge_Article</fullName>
        <description>Notification to Review Knowledge Article</description>
        <protected>false</protected>
        <recipients>
            <recipient>Knowledge_Managers</recipient>
            <type>group</type>
        </recipients>
        <senderAddress>customersuccess@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X8A_Knowledge_Article_Submitted_for_Review</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Status_to_New</fullName>
        <field>ValidationStatus</field>
        <literalValue>New</literalValue>
        <name>Update Status to New</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Not_Approved</fullName>
        <field>ValidationStatus</field>
        <literalValue>Not Approved</literalValue>
        <name>Update Status to Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Published</fullName>
        <field>ValidationStatus</field>
        <literalValue>Published</literalValue>
        <name>Update Status to Published</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Submitted_for_Review</fullName>
        <field>ValidationStatus</field>
        <literalValue>Submitted for Review</literalValue>
        <name>Update Status to Submitted for Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <knowledgePublishes>
        <fullName>Publish_Article</fullName>
        <action>Publish</action>
        <label>Publish Article</label>
        <language>en_US</language>
        <protected>false</protected>
    </knowledgePublishes>
    <knowledgePublishes>
        <fullName>Publish_as_New</fullName>
        <action>PublishAsNew</action>
        <label>Publish as New</label>
        <language>en_US</language>
        <protected>false</protected>
    </knowledgePublishes>
</Workflow>
