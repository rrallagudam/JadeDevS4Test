<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Lead_Registration_Approved_Custom</fullName>
        <ccEmails>hpatel@adaptiveinsights.com</ccEmails>
        <description>Lead Registration Approved - Custom</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Community_Templates/Lead_Registration_Approved_Custom</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Lead_is_Still_New</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_Manager_Director_and_CSO</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Owner, Manager, Director and CSO</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Lead_is_Still_New</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_Manager_and_Director2</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Owner, Manager and Director</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Lead_is_Still_New</template>
    </alerts>
    <alerts>
        <fullName>Partner_Community_Registration_Assignment_Notification_to_Lead_Owner</fullName>
        <description>Partner Community Registration Assignment Notification to Lead Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>partners@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X1C_Partner_Community_Registration_Notification_to_Lead_Owner_Custom</template>
    </alerts>
    <alerts>
        <fullName>Partner_Community_Registration_Notification_to_Lead_Owner</fullName>
        <description>Partner Community Registration Notification to Lead Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>partners@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X1B_Partner_Community_Registration_Template_Custom</template>
    </alerts>
    <alerts>
        <fullName>Partner_Lead_Expiration_Confirmation</fullName>
        <ccEmails>partners@adaptiveinsights.com</ccEmails>
        <description>Partner Lead Expiration Confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Community_Templates/X6B_Partner_Contact_Expiration_Confirmation</template>
    </alerts>
    <alerts>
        <fullName>Partner_Lead_Expiration_Notification</fullName>
        <ccEmails>partners@adaptiveinsights.com</ccEmails>
        <description>Partner Lead Expiration Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Community_Templates/Partner_Lead_Expiration_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Assign_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>rsimental@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Record_Type_to_MAL</fullName>
        <field>RecordTypeId</field>
        <lookupValue>MAL</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change Record Type to MAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_recordtype_to_Customer</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Customer</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change recordtype to Customer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Stamp_LS_Histroical_High_date</fullName>
        <field>Lead_Score_Historical_High_Date__c</field>
        <formula>Now()</formula>
        <name>Date Stamp LS Histroical High date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Opt_Out_True</fullName>
        <description>Checks the checkbox</description>
        <field>HasOptedOutOfEmail</field>
        <literalValue>1</literalValue>
        <name>Email Opt-Out = True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Status_update</fullName>
        <description>Update Lead status to New</description>
        <field>Status</field>
        <literalValue>New</literalValue>
        <name>Lead Status update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lifecycle_MAL</fullName>
        <field>Lifecycle_Stage__c</field>
        <literalValue>MAL</literalValue>
        <name>Lifecycle MAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lifecycle_MQL</fullName>
        <field>Lifecycle_Stage__c</field>
        <literalValue>MQL</literalValue>
        <name>Lifecycle MQL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lifecycle_SAL</fullName>
        <field>Lifecycle_Stage__c</field>
        <literalValue>SAL</literalValue>
        <name>Lifecycle SAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Owner_s_Director_s_Email</fullName>
        <description>Populate the record owner&apos;s director&apos;s email address</description>
        <field>Owner_s_Director_s_Email__c</field>
        <formula>Owner:User.Manager.Manager.Email</formula>
        <name>Populate Owner&apos;s Director&apos;s Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Owner_s_Manager_s_Email</fullName>
        <description>Populate the record owner&apos;s manager&apos;s email address</description>
        <field>Owner_s_Manager_s_Email__c</field>
        <formula>Owner:User.Manager.Email</formula>
        <name>Populate Owner&apos;s Manager&apos;s Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Record_Type_MAL</fullName>
        <field>RecordTypeId</field>
        <lookupValue>MAL</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Record Type MAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Record_Type_MQL</fullName>
        <field>RecordTypeId</field>
        <lookupValue>MQL</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Record Type MQL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Record_Type_SAL</fullName>
        <field>RecordTypeId</field>
        <lookupValue>SAL</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Record Type SAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Record_type_to_SAL</fullName>
        <field>RecordTypeId</field>
        <lookupValue>SAL</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Record type to SAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timestamp_MAL</fullName>
        <field>Timestamp_Lifecycle_MAL__c</field>
        <formula>NOW()</formula>
        <name>Timestamp MAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timestamp_MQL</fullName>
        <field>Timestamp_Lifecycle_MQL__c</field>
        <formula>NOW()</formula>
        <name>Timestamp MQL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timestamp_SAL</fullName>
        <field>Timestamp_Lifecycle_SAL__c</field>
        <formula>NOW()</formula>
        <name>Timestamp SAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_By_Pass</fullName>
        <field>By_Pass_Assignment_Rule__c</field>
        <literalValue>1</literalValue>
        <name>Update By Pass</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_By_Pass_Assignement</fullName>
        <field>By_Pass_Assignment_Rule__c</field>
        <literalValue>1</literalValue>
        <name>Update By Pass Assignement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_By_Pass_Assignment</fullName>
        <field>By_Pass_Assignment_Rule__c</field>
        <literalValue>1</literalValue>
        <name>Update By Pass Assignment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contact_from_Lead_Converted_Yes</fullName>
        <description>Sets this field to YEWS</description>
        <field>Update_Contact_from_Lead_Convert__c</field>
        <formula>&quot;Yes&quot;</formula>
        <name>Update Contact from Lead Converted = Yes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Follow_Up_to_Adaptive_Insights</fullName>
        <description>When the lead is marked as expired, change Follow Up to Adaptive Insights</description>
        <field>Partner_Referal_Follow_Up__c</field>
        <literalValue>Adaptive Insights</literalValue>
        <name>Update Follow Up to Adaptive Insights</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Higher_Ed</fullName>
        <field>Higher_Education__c</field>
        <literalValue>1</literalValue>
        <name>Update Higher Ed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_LS_Historical_Date</fullName>
        <field>Lead_Score_Historical_High_Date__c</field>
        <formula>Today()</formula>
        <name>Update LS Historical Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_LS_Historical_High</fullName>
        <field>Lead_Score_Historical_High__c</field>
        <formula>Lead_Score__c</formula>
        <name>Update LS Historical High</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>asaalinger@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update Lead Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Phone_Format</fullName>
        <field>Phone</field>
        <formula>IF(BEGINS(Phone, &quot;+1.&quot;), SUBSTITUTE(Phone, &quot;+1.&quot;, &quot;&quot;),
 IF(BEGINS(Phone, &quot;+1&quot;), SUBSTITUTE(Phone, &quot;+1&quot;, &quot;&quot;),



Phone))</formula>
        <name>Update Lead Phone Format</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Phone_Formate</fullName>
        <field>Phone</field>
        <formula>IF(BEGINS(Phone, &quot;+1.&quot;), SUBSTITUTE(Phone, &quot;+1.&quot;, &quot;&quot;),
 IF(BEGINS(Phone, &quot;+1&quot;), SUBSTITUTE(Phone, &quot;+1&quot;, &quot;&quot;),



Phone))</formula>
        <name>Update Lead Phone Formate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Registration_Status_to_Exp</fullName>
        <description>Update Lead Registration Status to Expired</description>
        <field>Registration_Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Update Lead Registration Status to Exp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Source_Parnter_PRL_Used</fullName>
        <description>When a partner uses the PRL in the URL and the lead is new, change the Lead Source field to &quot;Partner PRL&quot;</description>
        <field>LeadSource</field>
        <literalValue>Partner PRL</literalValue>
        <name>Update Lead Source = Parnter PRL Used</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_status</fullName>
        <field>Lead_Status__c</field>
        <name>Update Lead status Not Last Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>PreviousValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Life_cycle_stage_to_SAL</fullName>
        <field>Timestamp_Lifecycle_SAL__c</field>
        <name>Update Life cycle stage to SAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_No_of_Employees_Field</fullName>
        <description>No. of Employees to be updated by the sum of Consulting, System Design Implementation, Sales, Business Development and Marketing.</description>
        <field>NumberOfEmployees</field>
        <formula>Consulting__c +
 System_Design_Implementation__c +
 Sales__c +
 Business_Development__c +
 Marketing__c</formula>
        <name>Update No. of Employees Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Non_Profit</fullName>
        <field>Non_Profit__c</field>
        <literalValue>1</literalValue>
        <name>Update Non Profit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Non_Profit_Checbox</fullName>
        <field>Non_Profit__c</field>
        <literalValue>1</literalValue>
        <name>Update Non Profit Checbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>kbalben@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status</fullName>
        <field>Status</field>
        <literalValue>Raw</literalValue>
        <name>Update Status = Raw</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_field_SDR_Last_Update</fullName>
        <field>SDR_Last_Update__c</field>
        <formula>Now()</formula>
        <name>Update field SDR Last Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_total_Touch</fullName>
        <field>Total_Touches__c</field>
        <formula>IF(ISNULL(Total_Touches__c), 0, Total_Touches__c) + 1</formula>
        <name>Update total Touch</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_record_type_to_partner_prospect</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partner_Prospect</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>change record type to partner prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>populate_timestamp</fullName>
        <field>Trial_Request_Date__c</field>
        <formula>NOW()</formula>
        <name>populate timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Accept Lead Change to SAL</fullName>
        <actions>
            <name>Update_Contact_from_Lead_Converted_Yes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3</booleanFilter>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SAL</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>SAL</value>
        </criteriaItems>
        <description>Changing the Contact Status to Accepted updates the Lead to SAL</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change Record Type to MAL</fullName>
        <actions>
            <name>Change_Record_Type_to_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change record type to MAL if the lifecycle of the lead is MAL. Does not apply to Partner Prospect record type.</description>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Lead_Automation__c ,  ISPICKVAL(Lifecycle_Stage__c , &apos;MAL&apos;), RecordTypeId &lt;&gt; &apos;01261000000MIAE&apos;, NOT(ISPICKVAL(Lead_Type__c, &apos;Partner Prospect&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change Record Type to MQL</fullName>
        <actions>
            <name>Record_Type_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change record type to MQL if the lifecycle of the lead is MQL. Does not apply to Partner Prospect record type.</description>
        <formula>AND($Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Lead_Automation__c ,ISPICKVAL(Lifecycle_Stage__c ,&apos;MQL&apos;), RecordTypeId &lt;&gt; &apos;01261000000MIAE&apos;, NOT(ISPICKVAL(Lead_Type__c, &apos;Partner Prospect&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change Record Type to SAL</fullName>
        <actions>
            <name>Record_type_to_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change record type to SAL if the lifecycle of the lead is SAL. Does not apply to Partner Prospect record type.</description>
        <formula>AND($Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Lead_Automation__c ,ISPICKVAL(Lifecycle_Stage__c ,&apos;SAL&apos;), RecordTypeId &lt;&gt; &apos;01261000000MIAE&apos;, NOT(ISPICKVAL(Lead_Type__c, &apos;Partner Prospect&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change recordtype to Customer</fullName>
        <actions>
            <name>Change_recordtype_to_Customer</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Lead.Lead_Source_Most_Recent__c</field>
            <operation>equals</operation>
            <value>Partner - Prospect Referral Form</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>Partner,Partner List,Partner PRL,Partner - Prospect Referral Form,Webinar - Partner</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change recordtype to Partner Prospect</fullName>
        <actions>
            <name>change_record_type_to_partner_prospect</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Lead.Type__c</field>
            <operation>equals</operation>
            <value>Partner Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lead_Source_Most_Recent__c</field>
            <operation>equals</operation>
            <value>Partner Community</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead Expiration_Partner Community %3A Email Notification</fullName>
        <active>false</active>
        <description>For registered leads, we will expire in an automated way after 60 days of no activity updates. Lead owner and partner contact should receive a notification one week before it expires and then again on the day that it expires.</description>
        <formula>AND($Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Lead_Automation__c,   NOT(ISBLANK(Partner_Last_Activity_Date__c)), NOT(IsConverted))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Partner_Lead_Expiration_Confirmation</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Lead_Registration_Status_to_Exp</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.Partner_Last_Activity_Date__c</offsetFromField>
            <timeLength>61</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Partner_Lead_Expiration_Notification</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.Partner_Last_Activity_Date__c</offsetFromField>
            <timeLength>53</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead New SLA</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>MQL</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>MQL</value>
        </criteriaItems>
        <description>The lead owner has 1 business day (from lifecycle MQL Date) to Accept or Reject the lead. Lead cannot be in CONTACT STATUS of NEW for more than 1 business day.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Lead.X3_Business_Days_from_MQL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <offsetFromField>Lead.X5_Business_Days_from_MQL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <offsetFromField>Lead.X2_Business_Days_from_MQL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>New Lead Created Manually</fullName>
        <actions>
            <name>Lifecycle_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Record_Type_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Lifecycle_Stage__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Status__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lead_Score__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Fields to update when a lead is created manually</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Partner Community Registration Notification to Lead Owner</fullName>
        <actions>
            <name>Partner_Community_Registration_Assignment_Notification_to_Lead_Owner</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Partner_Community_Registration_Notification_to_Lead_Owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(  RecordType.Id = &apos;01261000000MIAE&apos;, ISPICKVAL(Lead_Type__c  , &apos;Partner Prospect&apos;), ISPICKVAL( Lead_Source_Most_Recent__c , &apos;Partner Community&apos;), ISCHANGED( OwnerId )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Lead Accepted Notification</fullName>
        <actions>
            <name>Lead_Registration_Approved_Custom</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Lead_Automation__c , NOT(ISBLANK(Partner_Contact__c ) ), ISPICKVAL(Registration_Status__c , &apos;Accepted&apos;), ISCHANGED( Registration_Status__c ), NOT(ISBLANK(TEXT( Registration_Status__c ))) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner PRL User</fullName>
        <actions>
            <name>Update_Lead_Source_Parnter_PRL_Used</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.PRL_Used__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.LastModifiedById</field>
            <operation>equals</operation>
            <value>Eloqua</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Eloqua_Partner__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>When a partner uses the PRL in the URL and the lead is new, change the Lead Source field to &quot;Partner PRL&quot;</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Populate Owner%27s Manager%27s Email</fullName>
        <actions>
            <name>Populate_Owner_s_Director_s_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Populate_Owner_s_Manager_s_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populated the record owner&apos;s manager&apos;s email address with a workflow for sending notifications</description>
        <formula>ISNEW() || ISCHANGED(OwnerId)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Reject Lead Change to MAL</fullName>
        <actions>
            <name>Lifecycle_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Record_Type_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <description>Changing the Contact Status to Rejected updates the Lead to MAL</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reject and Junk %3D Email Op-Out</fullName>
        <actions>
            <name>Email_Opt_Out_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Reject_Reason__c</field>
            <operation>equals</operation>
            <value>Junk,Hard Bounce</value>
        </criteriaItems>
        <description>Checked the email opt-out box is Reject and Reason = Junk</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SDR Last Update on Lead</fullName>
        <actions>
            <name>Update_field_SDR_Last_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>equals</operation>
            <value>Sales Development Rep</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SDR List Uploads Lead Status</fullName>
        <actions>
            <name>Lifecycle_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change the lead status to Raw when SDRs upload lists</description>
        <formula>OR(CONTAINS(TEXT(LeadSource),&quot;Jigsaw&quot;),CONTAINS(TEXT(LeadSource),&quot;SalesLoft&quot;))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update LS Historical High Date</fullName>
        <actions>
            <name>Date_Stamp_LS_Histroical_High_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates the date/time stamp for LS Historical High Date</description>
        <formula>ISCHANGED( Lead_Score_Historical_High__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Phone Format</fullName>
        <actions>
            <name>Update_Lead_Phone_Format</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Phone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Phone Formate</fullName>
        <actions>
            <name>Update_Lead_Phone_Formate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Phone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Score Historical High</fullName>
        <actions>
            <name>Update_LS_Historical_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_LS_Historical_High</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(Lead_Score__c &gt;  Lead_Score_Historical_High__c,  ISNULL(Lead_Score_Historical_High__c) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update No%2E of Employees Field for Partner Prospects</fullName>
        <actions>
            <name>Update_No_of_Employees_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update the No. of Employees field when the Lead record is created from the Partner Prospect Web-to-Lead Registration form and/or edited.</description>
        <formula>AND(
RecordTypeId = &apos;01261000000MIAE&apos;,
ISPICKVAL( LeadSource , &apos;Partner Community&apos;),
ISPICKVAL( Type__c , &apos;Partner Prospect&apos;),
ISPICKVAL( Status__c , &apos;Active&apos;),
ISPICKVAL( Lead_Source_Most_Recent__c , &apos;Partner Community&apos;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp MAL</fullName>
        <actions>
            <name>Record_Type_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When the Lifecycle picklist changes to MAL, update the timestamp</description>
        <formula>AND(ISCHANGED( Lifecycle_Stage__c ), ISPICKVAL(Lifecycle_Stage__c , &quot;MAL&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp MQL</fullName>
        <actions>
            <name>Record_Type_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When the Lifecycle picklist changes to MQL, update the timestamp</description>
        <formula>AND(ISCHANGED(  Status  ),ISPICKVAL(Status , &quot;New&quot;),
NOT( ISPICKVAL(Lead_Source_Most_Recent__c,&quot;Partner Community&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Total Touch</fullName>
        <actions>
            <name>Update_total_Touch</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.Lead_Automation__c , NOT( ISBLANK( LastActivityDate_MinusEloqua__c ) ), ISCHANGED( LastActivityDate_MinusEloqua__c )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updating status to New from Raw</fullName>
        <actions>
            <name>Lead_Status_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Raw</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lead_Score__c</field>
            <operation>greaterOrEqual</operation>
            <value>30</value>
        </criteriaItems>
        <description>Updating status to New from when :
1-&gt;score &gt;=30
2-&gt;status = Raw</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>When the lead is marked as expired%2C change Follow Up to Adaptive Insights</fullName>
        <actions>
            <name>Update_Follow_Up_to_Adaptive_Insights</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When the lead is marked as expired, change Follow Up to Adaptive Insights</description>
        <formula>AND($Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Lead_Automation__c,   ISPICKVAL( Registration_Status__c , &apos;Expired&apos;) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>timestamp Trial Request Date</fullName>
        <actions>
            <name>populate_timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.Lead_Automation__c , Enterprise_Trial__c  = true)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
