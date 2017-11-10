<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Partner_Community_Full_Access_Email</fullName>
        <description>Partner Community Full Access Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>partners@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X3A_Partner_Community_Full_Access_Prospect_to_Partner_Custom</template>
    </alerts>
    <alerts>
        <fullName>Partner_Prospect_Revoke_Access_Email_Alert</fullName>
        <description>Partner Prospect - Revoke Access Email Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>partners@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X2B_Partner_Prospect_Community_Access_Revoked_Template_Custom</template>
    </alerts>
    <rules>
        <fullName>Partner Prospects - Revoke Access</fullName>
        <actions>
            <name>Partner_Prospect_Revoke_Access_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Template sent to partner prospects where their access was revoked</description>
        <formula>AND(  IsActive = False,  Profile_Formula_Text__c = &apos;Partner Community User - Partner Prospect&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Welcome Email Notification to Partner User</fullName>
        <actions>
            <name>Partner_Community_Full_Access_Email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email sent to partners when full access is provided (i.e. switching from &apos;Partner Community Login - Prospect&apos; to &apos;Partner Community Login - Solution Provider&apos;</description>
        <formula>AND(  Profile.Name = &apos;Partner Community Login - Solution Provider&apos;,  PRIORVALUE( Profile_Formula_Text__c )= &apos;Partner Community Login - Prospect&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Welcome Email Notification to Referral Partner User</fullName>
        <actions>
            <name>Partner_Community_Full_Access_Email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email sent to referral partners when full access is provided (i.e. switching from &apos;Partner Community Login - Prospect&apos; to &apos;Partner Community Login - Referral&apos;</description>
        <formula>AND(  Profile.Name = &apos;Partner Community Login - Referral&apos;,  PRIORVALUE( Profile_Formula_Text__c )= &apos;Partner Community Login - Prospect&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
