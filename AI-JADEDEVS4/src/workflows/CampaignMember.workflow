<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Adaptive_Live_Registration_Notice</fullName>
        <ccEmails>storres@adaptiveinsights.com</ccEmails>
        <description>Adaptive Live Registration Notice</description>
        <protected>false</protected>
        <recipients>
            <type>campaignMemberDerivedOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MarOps_Campaigns/Live_Customer_Registration_Notice</template>
    </alerts>
    <alerts>
        <fullName>Camapign_Member_Email_Alert</fullName>
        <description>Camapign Member Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>campaignMemberDerivedOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MarOps_Campaigns/Roundtable_Member_Notice</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_for_Live_2017_Prospect_Track</fullName>
        <ccEmails>storres@adaptiveinsights.com,pgonzalez@adaptiveinsights.com</ccEmails>
        <description>Email Alert for Live 2017 Prospect Track</description>
        <protected>false</protected>
        <recipients>
            <type>campaignMemberDerivedOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MarOps_Campaigns/Live_Prospect_Registration_Notice</template>
    </alerts>
    <alerts>
        <fullName>X2016_Live_Customer_Award_Notice</fullName>
        <ccEmails>storres@adaptiveinsights.com</ccEmails>
        <description>2016 Live Customer Award Notice</description>
        <protected>false</protected>
        <recipients>
            <type>campaignMemberDerivedOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MarOps_Campaigns/Live_Customer_Award_Nomination</template>
    </alerts>
    <rules>
        <fullName>2017 Live Award Nomination Notice</fullName>
        <actions>
            <name>X2016_Live_Customer_Award_Notice</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CampaignMember.Status</field>
            <operation>equals</operation>
            <value>Registered - Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Campaign_ID_18_digit__c</field>
            <operation>equals</operation>
            <value>70161000000QL5gAAG</value>
        </criteriaItems>
        <description>Notifies lead/contact owner that Live Campaign member has submitted a nomination for the customer awards</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2017 Live Prospect Registration Notice</fullName>
        <actions>
            <name>Email_Alert_for_Live_2017_Prospect_Track</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CampaignMember.Status</field>
            <operation>equals</operation>
            <value>Responded</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Campaign_ID_18_digit__c</field>
            <operation>equals</operation>
            <value>70161000000SnEoAAK</value>
        </criteriaItems>
        <description>Notifies lead/contact owner that Live prospect Campaign member has registered</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2017 Live Registration Notice</fullName>
        <actions>
            <name>Adaptive_Live_Registration_Notice</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CampaignMember.Status</field>
            <operation>equals</operation>
            <value>Responded</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Campaign_ID_18_digit__c</field>
            <operation>equals</operation>
            <value>70161000000Qc9tAAC</value>
        </criteriaItems>
        <description>Notifies lead/contact owner that Live Campaign member has registered</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Roundtable Notice to owner</fullName>
        <actions>
            <name>Camapign_Member_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CampaignMember.Status</field>
            <operation>equals</operation>
            <value>Registered - Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Type</field>
            <operation>equals</operation>
            <value>Round Table Webinar</value>
        </criteriaItems>
        <description>Notifies lead/contact owner that Roundtable member has attended the webinar</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
