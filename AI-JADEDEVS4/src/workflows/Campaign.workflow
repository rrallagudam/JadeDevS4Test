<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_to_Campaign_Owner_Ready_to_Review</fullName>
        <description>Email to Campaign Owner Ready to Review</description>
        <protected>false</protected>
        <recipients>
            <recipient>Event_Marketing</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MarOps_Campaigns/Local_Event_Ready_to_Review</template>
    </alerts>
    <alerts>
        <fullName>Local_Event_Detail_to_RM</fullName>
        <ccEmails>sdgroup@adaptiveinsights.com</ccEmails>
        <description>Local Event Detail to RM</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>AVP__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>CAM_Name__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Demo_Presenter__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Regional_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MarOps_Campaigns/Local_Event_In_Production</template>
    </alerts>
    <fieldUpdates>
        <fullName>Active_Campaign_Field_True</fullName>
        <description>Sets the Active checkbox to True</description>
        <field>IsActive</field>
        <literalValue>1</literalValue>
        <name>Active Campaign Field - True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Campaign_End_date</fullName>
        <description>Sets the campaign end date</description>
        <field>EndDate</field>
        <formula>StartDate</formula>
        <name>Campaign End date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Campaign_Name_Change</fullName>
        <description>Change US Local Event Campaign name to normalized naming convention</description>
        <field>Name</field>
        <formula>LEFT(Regional_Manager__r.FirstName, 1) &amp; Regional_Manager__r.LastName &amp; &quot; &quot; &amp;  Event_Location_City__c &amp; &quot; &quot; &amp; Event_Location_State__c &amp; &quot; &quot; &amp; IF(ISPICKVAL(Type,&quot;Seminar&quot;),&quot;Seminar&quot;,
IF(ISPICKVAL(Type,&quot;Seminar Plus Fun Event&quot;),&quot;Seminar Plus Fun Event&quot;,
IF(ISPICKVAL(Type,&quot;Workshop&quot;),&quot;Workshop&quot;,
IF(ISPICKVAL(Type,&quot;Workshop Plus Fun Event&quot;),&quot;Workshop Plus Fun Event&quot;,
IF(ISPICKVAL(Type,&quot;Lessons Over Lunch&quot;),&quot;Lessons Over Lunch&quot;,
IF(ISPICKVAL(Type,&quot;User Group&quot;),&quot;Local User Group&quot;,
IF(ISPICKVAL(Type,&quot;Workshop - End User&quot;),&quot;Workshop - End User&quot;,
IF(ISPICKVAL(Type,&quot;Consolidation Workshop&quot;),&quot;Consolidation Workshop&quot;,
IF(ISPICKVAL(Type,&quot;Consolidation Lessons Over Lunch&quot;),&quot;Consolidation Lessons Over Lunch&quot;,
IF(ISPICKVAL(Type,&quot;Consolidation Seminar&quot;),&quot;Consolidation Seminar&quot;,
IF(ISPICKVAL(Type,&quot;Finance Revolution Tour&quot;),&quot;Finance Revolution Tour&quot;,
IF(ISPICKVAL(Type,&quot;Roadshow&quot;),&quot;Roadshow&quot;,
IF(ISPICKVAL(Type,&quot;Networking Event&quot;),&quot;Networking Event&quot;,
IF(ISPICKVAL(Type,&quot;Thought Leadership&quot;),&quot;Thought Leadership&quot;,
IF(AND(CONTAINS(TEXT(Type),&quot;Vertical&quot;),CONTAINS(TEXT(Type),&quot;LOL&quot;)),&quot;Vertical Luncheon&quot;,
IF(AND(CONTAINS(TEXT(Type),&quot;Vertical&quot;),CONTAINS(TEXT(Type),&quot;Seminar&quot;)),&quot;Vertical Seminar&quot;,
&quot;ERROR-campaign type missing&quot;))))))))))))))))  &amp; &quot; &quot; &amp; TEXT(YEAR( StartDate )) &amp; &quot;.&quot; &amp;  TEXT(MONTH(StartDate)) &amp; &quot;.&quot; &amp; TEXT(DAY(StartDate))</formula>
        <name>Campaign Name Change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clone_Date</fullName>
        <description>MarOps tracking</description>
        <field>Date_Cloned__c</field>
        <formula>IF( ISCLONE() ,Now(),null)</formula>
        <name>Clone Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Customer_Company_Update</fullName>
        <description>Updates the customer speaker comany</description>
        <field>Customer_Speaker_Company_Name__c</field>
        <formula>Customer_Speaker_Contact__r.Account.Name</formula>
        <name>Customer Company Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Customer_Title_Update</fullName>
        <description>Updates the customer speaker title</description>
        <field>Customer_Speaker_Title__c</field>
        <formula>Customer_Speaker_Contact__r.Title</formula>
        <name>Customer Title Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_2Email_2_3_Created</fullName>
        <field>Status_Emails_2_3_created__c</field>
        <formula>Now()</formula>
        <name>Date-Time 2Email 2 &amp; 3 Created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Dynamic_Content</fullName>
        <field>Status_Dynamic_Content_Created__c</field>
        <formula>Now()</formula>
        <name>Date-Time Dynamic Content</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Elq_Campaign_Created</fullName>
        <field>Status_Elq_Campaign_Created__c</field>
        <formula>Now()</formula>
        <name>Date-Time Elq Campaign Created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Email_1_Created</fullName>
        <field>Status_Email_1_Created__c</field>
        <formula>Now()</formula>
        <name>Date-Time Email #1 Created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_ICS_Tested</fullName>
        <field>Status_ICS_Tested__c</field>
        <formula>Now()</formula>
        <name>Date-Time ICS Tested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Partner_HTML_Sent</fullName>
        <field>Status_Partner_Email_Sent__c</field>
        <formula>Now()</formula>
        <name>Date-Time Partner HTML Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_QA_Test</fullName>
        <description>MarOps Field</description>
        <field>Status_QA_Test__c</field>
        <formula>Now()</formula>
        <name>Date-Time QA Test</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Segment_Created</fullName>
        <field>Status_Segment_Created__c</field>
        <formula>Now()</formula>
        <name>Date-Time Segment Created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Shared_List</fullName>
        <field>Status_Shared_List_Created__c</field>
        <formula>Now()</formula>
        <name>Date-Time Shared List</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Status_Approved2Launch</fullName>
        <description>MarOps Tracking</description>
        <field>Status_Approved_2_Launch__c</field>
        <formula>Now()</formula>
        <name>Date-Time Status Approved2Launch</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Status_Detail_Approved</fullName>
        <description>MarOps Tracking</description>
        <field>Status_Detailed_Approved__c</field>
        <formula>Now()</formula>
        <name>Date-Time Status Detail Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Status_Detail_Ready_for_Review</fullName>
        <description>MarOps Time Stamp</description>
        <field>Status_Ready_for_Review__c</field>
        <formula>Now()</formula>
        <name>Date-Time Status Detail Ready for Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Status_In_Production</fullName>
        <description>MarOps Time Stamp</description>
        <field>Status_In_Production__c</field>
        <formula>Now()</formula>
        <name>Date-Time Status In Production</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Status_Planned</fullName>
        <description>Date/Time Stamp to Status:Planned field</description>
        <field>Status_Planning__c</field>
        <formula>Now()</formula>
        <name>Date-Time Status Planned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Status_Running</fullName>
        <description>MarOps Tracking</description>
        <field>Status_Running__c</field>
        <formula>Now()</formula>
        <name>Date-Time Status Running</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Time_Website_Listing</fullName>
        <field>Status_Website_Listing_Created__c</field>
        <formula>Now()</formula>
        <name>Date-Time Website Listing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Fill_Out_CAM_Email</fullName>
        <field>CAM_Email__c</field>
        <formula>CAM_Name__r.Email</formula>
        <name>Fill-Out CAM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Completed</fullName>
        <field>Status</field>
        <literalValue>Completed</literalValue>
        <name>Status = Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_1st_Email_date</fullName>
        <description>Sets the Email 31 Date to 28 days before Start Date</description>
        <field>Email_Invite_1__c</field>
        <formula>StartDate - 28</formula>
        <name>Update 1st Email date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_2nd_Email_date</fullName>
        <description>Sets the email #2 date, 14 days before start date</description>
        <field>Email_Invite_2__c</field>
        <formula>StartDate - 14</formula>
        <name>Update 2nd Email date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_3rd_Email_date</fullName>
        <description>Sets Email #3 send date 7 days before start date</description>
        <field>Email_Invite_3__c</field>
        <formula>StartDate - 7</formula>
        <name>Update 3rd Email date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Campaign_Status_In_Production</fullName>
        <description>Changes Status to In production based on checkboxes checked</description>
        <field>Status</field>
        <literalValue>In Production</literalValue>
        <name>Update Campaign Status = In Production</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Email_Reminder_1_day</fullName>
        <field>Email_Reminder_1_Day__c</field>
        <formula>StartDate - 1</formula>
        <name>Update Email Reminder 1 day</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Email_Reminder_1wk</fullName>
        <description>Sets the email reminder date 1 wk before start date</description>
        <field>Email_Reminder_1_WK__c</field>
        <formula>StartDate - 7</formula>
        <name>Update Email Reminder 1wk</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RM_Email</fullName>
        <field>RM_Email_Address__c</field>
        <formula>Regional_Manager__r.Email</formula>
        <name>Update RM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RM_Phone</fullName>
        <field>RM_Phone_Number__c</field>
        <formula>Regional_Manager__r.Phone</formula>
        <name>Update RM Phone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Campaign End date</fullName>
        <actions>
            <name>Campaign_End_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.EndDate</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Adds the end date to campaign that don&apos;t have one</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Campaign Status is Ready to Review</fullName>
        <actions>
            <name>Email_to_Campaign_Owner_Ready_to_Review</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_Time_Status_Detail_Ready_for_Review</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>New_Local_Event_is_Ready_to_Review</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.RecordTypeId</field>
            <operation>equals</operation>
            <value>Roadshow,Seminar-Workshop</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>Detail Ready for Review</value>
        </criteriaItems>
        <description>Actions to do when campaign is set to details approved</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change Campaign Status-In Production</fullName>
        <actions>
            <name>Local_Event_Detail_to_RM</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_Time_Status_In_Production</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Campaign_Status_In_Production</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Campaign_In_Production_Status_Change</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Changes campaign status based on check boxes. Local Events Only</description>
        <formula>AND( ICS_File_Created__c ,
 Dynamic_Content_Created__c ,
 Shared_List_Created__c ,
 Event_Listing_Website_Created__c ,
 OR(RecordType.Name=&quot;Seminar-Workshop&quot;, RecordType.Name=&quot;Roadshow&quot;) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change Local Event Campaign Name</fullName>
        <actions>
            <name>Campaign_Name_Change</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.RecordTypeId</field>
            <operation>equals</operation>
            <value>Seminar-Workshop,Roadshow</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>Detail Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Venue_Address_Country__c</field>
            <operation>notEqual</operation>
            <value>United Kingdom</value>
        </criteriaItems>
        <description>Changes the campaign name on Details Approved</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Customer Fields Update</fullName>
        <actions>
            <name>Customer_Company_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Customer_Title_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.Customer_Speaker__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates the customer speaker fields in a campaign</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email Date Update Seminar%2FWorkshopCreated</fullName>
        <actions>
            <name>Update_1st_Email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_2nd_Email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_3rd_Email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Email_Reminder_1_day</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Email_Reminder_1wk</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.RecordTypeId</field>
            <operation>equals</operation>
            <value>Roadshow,Seminar-Workshop</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Email_Invite_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates the email date fields within Seminar/Workshop campaigns</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Fill-out RMs Info</fullName>
        <actions>
            <name>Update_RM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_RM_Phone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.Regional_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DDynamic Content</fullName>
        <actions>
            <name>Date_Time_Dynamic_Content</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Dynamic_Content_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DElq Campaign Created</fullName>
        <actions>
            <name>Date_Time_Elq_Campaign_Created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.HS_Workflow_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DEmail %231 Created</fullName>
        <actions>
            <name>Date_Time_Email_1_Created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Email_Invite_1_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DEmail %232 %26 3 Created</fullName>
        <actions>
            <name>Date_Time_2Email_2_3_Created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Emails_2_3_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DICS Tested</fullName>
        <actions>
            <name>Date_Time_ICS_Tested</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.ICS_File_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DPartner HTML Created</fullName>
        <actions>
            <name>Date_Time_Partner_HTML_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Partner_HTML_Sent__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DSegment Created</fullName>
        <actions>
            <name>Date_Time_Segment_Created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Segment_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DShared List</fullName>
        <actions>
            <name>Date_Time_Shared_List</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Shared_List_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Checkbox%3DWebsite Listing</fullName>
        <actions>
            <name>Date_Time_Website_Listing</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Local_Event_is_listed_on_the_website</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Event_Listing_Website_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Campaign checkbox has been checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Status%3DApproved 2 Launch</fullName>
        <actions>
            <name>Date_Time_Status_Approved2Launch</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Campaign_Approved_2_Launch_Status_Change</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Campaign_Details_have_been_Approved_2_Launch</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>Approved 2 Launch</value>
        </criteriaItems>
        <description>Campaign Status has been moved to Approved 2 Launch</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Status%3DDetail Approved</fullName>
        <actions>
            <name>Date_Time_Status_Detail_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Campaign_Details_Approved_Status_Change</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Campaign_Details_have_been_approved</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>Detail Approved</value>
        </criteriaItems>
        <description>Campaign Status has been moved to Detail Approved</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Status%3DInProduction</fullName>
        <actions>
            <name>Date_Time_Status_In_Production</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>In Production</value>
        </criteriaItems>
        <description>Changes campaign status based on check boxes. Local Events Only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Status%3DPlanned</fullName>
        <actions>
            <name>Date_Time_Status_Planned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>Planned</value>
        </criteriaItems>
        <description>Campaign Status has been moved to Planned</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Status%3DQA Test</fullName>
        <actions>
            <name>Date_Time_QA_Test</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.QA_Tested__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>QA Test</value>
        </criteriaItems>
        <description>Campaign checkbox is checked for QA Test</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Status%3DRunning</fullName>
        <actions>
            <name>Date_Time_Status_Running</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Campaign_Running_Status_Change</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>Running</value>
        </criteriaItems>
        <description>Campaign Status has been moved to Running</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MarOps%3A Was Campaign Cloned</fullName>
        <actions>
            <name>Clone_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Date/Time stamp if campaign was cloned</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Campaign Created</fullName>
        <actions>
            <name>Active_Campaign_Field_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Set Status to Completed</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Campaign.Status</field>
            <operation>equals</operation>
            <value>Running,Cancelled</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Status_Completed</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Campaign.EndDate</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update CAM Info</fullName>
        <actions>
            <name>Fill_Out_CAM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.CAM_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Add CAM Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Campaign_Approved_2_Launch_Status_Change</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Campaign Approved 2 Launch Status Change</subject>
    </tasks>
    <tasks>
        <fullName>Campaign_Details_Approved_Status_Change</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Campaign Details Approved Status Change</subject>
    </tasks>
    <tasks>
        <fullName>Campaign_Details_have_been_Approved_2_Launch</fullName>
        <assignedTo>Marketing_Operations_Specialist</assignedTo>
        <assignedToType>role</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Campaign Details have been Approved 2 Launch</subject>
    </tasks>
    <tasks>
        <fullName>Campaign_Details_have_been_approved</fullName>
        <assignedTo>Marketing_Operations_Specialist</assignedTo>
        <assignedToType>role</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Campaign Details have been approved</subject>
    </tasks>
    <tasks>
        <fullName>Campaign_In_Production_Status_Change</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Campaign In Production Status Change</subject>
    </tasks>
    <tasks>
        <fullName>Campaign_Running_Status_Change</fullName>
        <assignedToType>owner</assignedToType>
        <description>Campaign status has been changed to Running.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Campaign Running Status Change</subject>
    </tasks>
    <tasks>
        <fullName>Local_Event_is_listed_on_the_website</fullName>
        <assignedToType>owner</assignedToType>
        <description>Local Event is Listed on the website, please create your emails and notify MarOps when you are done</description>
        <dueDateOffset>-33</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Campaign.StartDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Local Event is listed on the website</subject>
    </tasks>
    <tasks>
        <fullName>New_Local_Event_is_Ready_to_Review</fullName>
        <assignedToType>owner</assignedToType>
        <description>New campaign is ready to review by your team. Please forward to the the team

Tasks to do; 
Campaign detail is ready for peer review</description>
        <dueDateOffset>-37</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Campaign.StartDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>New Local Event is Ready to Review</subject>
    </tasks>
</Workflow>
