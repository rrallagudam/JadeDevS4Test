<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Contact_Registration_Approved_Custom</fullName>
        <description>Contact Registration Approved - Custom</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <field>Partner_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>partners@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X4A_Contact_Registration_Approved_Custom</template>
    </alerts>
    <alerts>
        <fullName>Notify_CSO_Accepted</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify CSO - Accepted</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_CSO_Accepted</template>
    </alerts>
    <alerts>
        <fullName>Notify_CSO_Accepted2</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify CSO - Accepted</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_CSO_Accepted</template>
    </alerts>
    <alerts>
        <fullName>Notify_CSO_Follow_Up</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify CSO - Follow-Up</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_CSO_Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>Notify_CSO_New_Restored</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify CSO - New/Restored</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_CSO_New_Restored</template>
    </alerts>
    <alerts>
        <fullName>Notify_CSO_Reopen</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify CSO - Reopen</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Reopen_Not_Unchecked_CSO</template>
    </alerts>
    <alerts>
        <fullName>Notify_Contact_Owner_Reopen</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Contact Owner - Reopen</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Reopen_Not_Unchecked_Owner</template>
    </alerts>
    <alerts>
        <fullName>Notify_Contact_Owner_of_New_Lead</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Contact Owner of New Lead</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Contact_Owner_of_New_Lead</template>
    </alerts>
    <alerts>
        <fullName>Notify_Manager_Accepted</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Manager - Accepted</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Manager_Accepted</template>
    </alerts>
    <alerts>
        <fullName>Notify_Manager_Follow_Up</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Manager - Follow-Up</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Manager_Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>Notify_Manager_New_Restored</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Manager - New/Restored</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Manager_New_Restored</template>
    </alerts>
    <alerts>
        <fullName>Notify_Manager_Reopen</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Manager - Reopen</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Reopen_Not_Unchecked_Manager</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_Accepted</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Owner - Accepted</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Contact_Owner_Accepted</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_Follow_Up</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Owner - Follow-Up</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Contact_Owner_Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_New_Restored</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Owner - New/Restored</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Contact_Owner_New_Restored</template>
    </alerts>
    <alerts>
        <fullName>Partner_Contact_Expiration_Confirmation</fullName>
        <description>Partner Contact Expiration Confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>partners@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X6B_Partner_Contact_Expiration_Confirmation</template>
    </alerts>
    <alerts>
        <fullName>Partner_Contact_Expiration_Notification</fullName>
        <description>Partner Contact Expiration Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>partners@adaptiveinsights.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Community_Templates/X6A_Partner_Contact_Expiration_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_record_type_to_Partner</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partner</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change record type to Partner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_recordtype_to_prospect</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Prospect</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change recordtype to prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_Reopen</fullName>
        <description>Check the Reopen checkbox</description>
        <field>Reopen__c</field>
        <literalValue>1</literalValue>
        <name>Check Reopen</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Status_Accepted</fullName>
        <field>Status__c</field>
        <literalValue>Accepted</literalValue>
        <name>Contact Status Accepted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Status_Qualified</fullName>
        <field>Status__c</field>
        <literalValue>Qualified</literalValue>
        <name>Contact Status Qualified</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Status_to_New</fullName>
        <field>Status__c</field>
        <literalValue>New</literalValue>
        <name>Contact Status to New</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Status_to_Raw</fullName>
        <field>Status__c</field>
        <literalValue>Raw</literalValue>
        <name>Contact Status to Raw</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Opt_Out_True</fullName>
        <description>Set Email Opt Out to True</description>
        <field>HasOptedOutOfEmail</field>
        <literalValue>1</literalValue>
        <name>Email Opt Out = True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Owner_s_Manager_s_Email</fullName>
        <description>Populate the record owner&apos;s manager&apos;s email address</description>
        <field>Owner_s_Manager_s_Email__c</field>
        <formula>Owner.Manager.Email</formula>
        <name>Populate Owner&apos;s Manager&apos;s Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_Reopen_Date</fullName>
        <description>For determining when to send email notifications</description>
        <field>Reopen_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp Reopen Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sync_Contact_to_NetSuite</fullName>
        <field>In_NetSuite__c</field>
        <literalValue>1</literalValue>
        <name>Sync Contact to NetSuite</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
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
        <fullName>Timestamp_SAO</fullName>
        <field>Timestamp_Lifecycle_SAO__c</field>
        <formula>NOW()</formula>
        <name>Timestamp SAO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timestamp_SQL</fullName>
        <field>Timestamp_Lifecycle_SQL__c</field>
        <formula>NOW()</formula>
        <name>Timestamp SQL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timestamp_SQO</fullName>
        <field>Timestamp_Lifecycle_SQO__c</field>
        <formula>NOW()</formula>
        <name>Timestamp SQO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Total_Last_Touch_update</fullName>
        <field>Total_Touches__c</field>
        <formula>IF(ISNULL(Total_Touches__c), 0, Total_Touches__c) + 1</formula>
        <name>Total Last Touch update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contact_Registration_Status</fullName>
        <field>Registration_Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Update Contact Registration Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contact_Status_to_Restored</fullName>
        <field>Status__c</field>
        <literalValue>Restored</literalValue>
        <name>Update Contact Status to Restored</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contact_from_Lead_Convert_NULL</fullName>
        <description>Reset the Update Contact from Lead Convert field to NULL to allow other leads to convert.</description>
        <field>Update_Contact_from_Lead_Convert__c</field>
        <name>Update Contact from Lead Convert NULL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_In_NetSuite_False</fullName>
        <field>In_NetSuite__c</field>
        <literalValue>0</literalValue>
        <name>Update In NetSuite False</name>
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
        <formula>Calculated_Score__c</formula>
        <name>Update LS Historical High</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lifecycle_to_MAL</fullName>
        <field>Lifecycle_Stage__c</field>
        <literalValue>MAL</literalValue>
        <name>Update Lifecycle to MAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lifecycle_to_MQL</fullName>
        <field>Lifecycle_Stage__c</field>
        <literalValue>MQL</literalValue>
        <name>Update Lifecycle to MQL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lifecycle_to_SAL</fullName>
        <field>Lifecycle_Stage__c</field>
        <literalValue>SAL</literalValue>
        <name>Update Lifecycle to SAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
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
        <fullName>Change record type to prospect</fullName>
        <actions>
            <name>Change_recordtype_to_prospect</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Customer Prospect</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Accepted SLA</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Status__c</field>
            <operation>equals</operation>
            <value>Accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SAL</value>
        </criteriaItems>
        <description>The contact owner has 1 business day (from lifecycle SAL Date) to Follow Up with the Contact. Contact cannot be in CONTACT STATUS of ACCEPTED for more than 1 business day.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Owner_Accepted</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X15_Business_Days_From_SAL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Manager_Accepted</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X20_Business_Days_From_SAL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_CSO_Accepted2</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X25_Business_Days_From_SAL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Contact Follow-Up SLA</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Status__c</field>
            <operation>equals</operation>
            <value>Follow-up</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SAL</value>
        </criteriaItems>
        <description>The contact owner has 90 business days (from lifecycle SAL Date) to qualify the Contact. Contact cannot be in CONTACT STATUS of FOLLOW-UP for more than 90 business days.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_CSO_Follow_Up</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X96_Calendar_Days_From_SAL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Owner_Follow_Up</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X90_Calendar_Days_From_SAL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Manager_Follow_Up</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X92_Calendar_Days_From_SAL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Contact New%2FRestored SLA</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Status__c</field>
            <operation>equals</operation>
            <value>New,Restored</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>MQL</value>
        </criteriaItems>
        <description>The contact owner has 1 business day (from lifecycle MQL Date) to Accept or Reject the lead. Contact cannot be in CONTACT STATUS of NEW or RESTORED for more than 1 business day.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Manager_New_Restored</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X3_Business_Days_From_MQL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_CSO_New_Restored</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X5_Business_Days_from_MQL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Owner_New_Restored</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X2_Business_Days_From_MQL__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Contact Reopen</fullName>
        <actions>
            <name>Check_Reopen</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If account = Prospect and Lead Offer is new Reopen Contact</description>
        <formula>AND(  OR(  ISPICKVAL( Account.Type, &quot;Customer Prospect&quot;),  ISPICKVAL( Account.Type, &quot;Customer&quot;),  ISPICKVAL( Account.Type, &quot;Partner Prospect&quot;)  ),  LastModifiedBy.LastName = &quot;Eloqua&quot;,  NOT(BEGINS($User.Username, &quot;automatedclean&quot;)),  NOT(BEGINS($User.Username, &quot;autoproc&quot;)),  $User.Alias &lt;&gt; &quot;wave&quot;, ISCHANGED( Lead_Offer_Most_Recent__c )   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Reopen SLA</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Reopen__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Notify people if the Reopen checkbox has not been unchecked by certain times</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Contact_Owner_Reopen</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X2_Business_Days_From_Reopen__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_CSO_Reopen</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X5_Business_Days_From_Reopen__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Manager_Reopen</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.X3_Business_Days_From_Reopen__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Contact SQL recordtype change</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Status__c</field>
            <operation>equals</operation>
            <value>Qualified</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact not sync to Netsuite</fullName>
        <actions>
            <name>Update_In_NetSuite_False</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Purchasing_Role__c) &amp;&amp; NOT(ISBLANK(Purchasing_Role__c)) &amp;&amp; (INCLUDES(Purchasing_Role__c,&apos;Influencer&apos;) || INCLUDES(Purchasing_Role__c,&apos;Researcher&apos;) || INCLUDES(Purchasing_Role__c,&apos;Executive Sponsor&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact sync to Netsuite</fullName>
        <actions>
            <name>Sync_Contact_to_NetSuite</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>(INCLUDES(Purchasing_Role__c,&apos;Billing Contact&apos;) ||  INCLUDES(Purchasing_Role__c,&apos;Decision Maker&apos;) ||  INCLUDES(Purchasing_Role__c,&apos;Main Customer Contact&apos;) ||  INCLUDES(Purchasing_Role__c,&apos;Admin&apos;)) &amp;&amp;  ISCHANGED(Purchasing_Role__c) &amp;&amp;  NOT(ISBLANK(Purchasing_Role__c)) &amp;&amp;  (NOT(INCLUDES(Purchasing_Role__c,&apos;Influencer&apos;)) ||  NOT(INCLUDES(Purchasing_Role__c,&apos;Researcher&apos;)) ||  NOT(INCLUDES(Purchasing_Role__c,&apos;Executive Sponsor&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Score Increases Above 30</fullName>
        <actions>
            <name>Contact_Status_to_New</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Calculated_Score__c</field>
            <operation>greaterOrEqual</operation>
            <value>30</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status__c</field>
            <operation>equals</operation>
            <value>Raw</value>
        </criteriaItems>
        <description>Raw status increases lead score above 30 change to NEW</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Score Restore</fullName>
        <actions>
            <name>Timestamp_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contact_Status_to_Restored</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISCHANGED(Eloqua_Lead_Score__c), Calculated_Score__c  &gt;= 30, OR(ISPICKVAL(Status__c, &quot;Unresponsive&quot;)  , ISPICKVAL(Status__c, &quot;Unqualified&quot;)), ISPICKVAL( Lifecycle_Stage__c ,&quot;MAL&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>NLWC %3D Email Opt Out</fullName>
        <actions>
            <name>Email_Opt_Out_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Unqualified_Reason__c</field>
            <operation>equals</operation>
            <value>NLWC</value>
        </criteriaItems>
        <description>Sets the Email Opt Out = True</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Accepted Contact</fullName>
        <actions>
            <name>Timestamp_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL(Status__c, &quot;Accepted&quot;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>New Contact from Lead Convert</fullName>
        <actions>
            <name>Contact_Status_Accepted</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contact_from_Lead_Convert_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Update contact record based on lead conversion</description>
        <formula>( ISPICKVAL(Status__c, &quot;Raw&quot;) || ISPICKVAL(Status__c, &quot;New&quot;) || ISPICKVAL(Status__c, &quot;Accepted&quot;) || ISPICKVAL(Status__c, &quot;Follow-Up&quot;) || ISPICKVAL(Status__c, &quot;Qualified&quot;) ) &amp;&amp; Update_Contact_from_Lead_Convert__c = &quot;YES&quot; &amp;&amp; ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>New Contact from Lead Convert MAL</fullName>
        <actions>
            <name>Contact_Status_to_Raw</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contact_from_Lead_Convert_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c ,       $Setup.SkipAutomationSetting__c.Contact_Automation__c,      ISPICKVAL(Lifecycle_Stage__c, &quot;MAL&quot;)  &amp;&amp;        Update_Contact_from_Lead_Convert__c = &quot;YES&quot;  &amp;&amp;       (  NOT(ISPICKVAL( Status__c , &quot;Accepted&quot;))       ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Contact-Lead Score Above 30</fullName>
        <actions>
            <name>Contact_Status_to_New</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>On creation and lead score above 30</description>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Contact_Automation__c, OR( Calculated_Score__c  &gt;= 30 ,ISBLANK(Calculated_Score__c ) ),ISBLANK(Update_Contact_from_Lead_Convert__c ), NOT(  ISPICKVAL( Status__c ,&apos;Accepted&apos; )  ))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>New Contact-Lead Score Below 30</fullName>
        <actions>
            <name>Contact_Status_to_Raw</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>On creation of new contact lead score drives Lifecycle and status</description>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Contact_Automation__c, OR( Calculated_Score__c  &lt;= 29 ,ISBLANK(Calculated_Score__c ) ),ISBLANK(Update_Contact_from_Lead_Convert__c ), NOT(  ISPICKVAL( Status__c ,&apos;Accepted&apos; )  ))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>New MAL Contact from Account</fullName>
        <actions>
            <name>Contact_Status_to_Raw</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>A new contact is created from an account</description>
        <formula>AND(  $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Contact_Automation__c , ISBLANK(Update_Contact_from_Lead_Convert__c),OR( Calculated_Score__c  &lt; 30 , ISBLANK(Calculated_Score__c  ),  ISPICKVAL(Status__c  , &apos;Raw&apos;),ISPICKVAL(Status__c  , &apos;&apos;) ),NOT(ISPICKVAL(Status__c  , &apos;Accepted&apos;))  )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Partner Registered Contact Expiration</fullName>
        <actions>
            <name>Partner_Contact_Expiration_Notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>For registered leads/contacts, we will expire in an automated way after 60 days of no activity updates. Contact owner and partner contact should receive a notification one week before it expires and then again on the day that it expires.</description>
        <formula>AND(
Last_Activity_Date__c =  TODAY()-53,
NOT(ISBLANK( Partner__c )) 
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Partner_Contact_Expiration_Confirmation</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Contact_Registration_Status</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Populate Owner%27s Manager%27s Email</fullName>
        <actions>
            <name>Populate_Owner_s_Manager_s_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populated the record owner&apos;s manager&apos;s email address with a workflow for sending notifications</description>
        <formula>ISCHANGED(OwnerId)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Total Last Touch</fullName>
        <actions>
            <name>Total_Last_Touch_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND($Setup.SkipAutomationSetting__c.Contact_Automation__c ,  NOT(ISBLANK(LastActivityDate_MinusEloqua__c)) ,ISCHANGED(LastActivityDate_MinusEloqua__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Contact Status - Qualified</fullName>
        <actions>
            <name>Contact_Status_Qualified</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SQL,SAO,SQO</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Contact Status - Restored</fullName>
        <actions>
            <name>Timestamp_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contact_Status_to_Restored</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contact_from_Lead_Convert_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Update the Contact Status to Restored if originally Unresponsive or Unqualified</description>
        <formula>ISPICKVAL(Account.Type, &quot;Customer Prospect&quot;) &amp;&amp; ( ISPICKVAL(Status__c, &quot;Unresponsive&quot;) || ISPICKVAL(Status__c, &quot;Unqualified&quot;)  ) &amp;&amp; Update_Contact_from_Lead_Convert__c = &quot;YES&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Contact from Lead Convert</fullName>
        <actions>
            <name>Notify_Contact_Owner_of_New_Lead</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Timestamp_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contact_from_Lead_Convert_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Update contact record based on lead conversion</description>
        <formula>( ISPICKVAL(Status__c, &quot;Accepted&quot;) || ISPICKVAL(Status__c, &quot;Follow-Up&quot;) || ISPICKVAL(Status__c, &quot;Qualified&quot;) ) &amp;&amp; Update_Contact_from_Lead_Convert__c = &quot;YES&quot; &amp;&amp; !ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update LS Historical High</fullName>
        <actions>
            <name>Update_LS_Historical_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_LS_Historical_High</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( Calculated_Score__c &gt; Lead_Score_Historical_High__c , ISNULL(Lead_Score_Historical_High__c) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lifecycle to MAL</fullName>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the Contact Status is changed to Unresponsive, Unqualified or Rejected, change Lifecycle back to MAL</description>
        <formula>ISPICKVAL(Status__c, &quot;Unresponsive&quot;) || ISPICKVAL(Status__c, &quot;Unqualified&quot;) || ISPICKVAL(Status__c, &quot;Rejected&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lifecycle to SAL</fullName>
        <actions>
            <name>Timestamp_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the Contact Status is changed to Accepted, change Lifecycle to SAL</description>
        <formula>AND(ISPICKVAL( Lifecycle_Stage__c , &quot;MAL&quot;), OR( ISPICKVAL(Status__c, &quot;Accepted&quot;),ISPICKVAL(Status__c, &quot;Contacted&quot;) ,ISPICKVAL(Status__c, &quot;Follow-Up&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lifecycle to SAL From MQL</fullName>
        <actions>
            <name>Timestamp_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lifecycle_to_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the Contact Status is changed to Accepted, change Lifecycle to SAL</description>
        <formula>ISPICKVAL(Lifecycle_Stage__c, &quot;MQL&quot;) &amp;&amp; ISPICKVAL(Status__c, &quot;Accepted&quot;) &amp;&amp; !ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp MAL</fullName>
        <actions>
            <name>Timestamp_MAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>MAL</value>
        </criteriaItems>
        <description>When the Lifecycle picklist changes to MAL, update the timestamp</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp MQL</fullName>
        <actions>
            <name>Timestamp_MQL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When the Lifecycle picklist changes to MQL, update the timestamp</description>
        <formula>AND(ISCHANGED( Lifecycle_Stage__c ),  ISPICKVAL(Lifecycle_Stage__c, &quot;MQL&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp SAL</fullName>
        <actions>
            <name>Change_recordtype_to_prospect</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp_SAL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SAL</value>
        </criteriaItems>
        <description>When the Lifecycle picklist changes to SAL, update the timestamp</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp SAO</fullName>
        <actions>
            <name>Timestamp_SAO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SAO</value>
        </criteriaItems>
        <description>When the Lifecycle picklist changes to SAO, update the timestamp</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp SQL</fullName>
        <actions>
            <name>Timestamp_SQL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SQL</value>
        </criteriaItems>
        <description>When the Lifecycle picklist changes to SQL, update the timestamp</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Timestamp SQO</fullName>
        <actions>
            <name>Timestamp_SQO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Lifecycle_Stage__c</field>
            <operation>equals</operation>
            <value>SQO</value>
        </criteriaItems>
        <description>When the Lifecycle picklist changes to SQO, update the timestamp</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>change recordtype to Partner</fullName>
        <actions>
            <name>Change_record_type_to_Partner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner Prospect,Partner</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>timestamp Trial Request Date</fullName>
        <actions>
            <name>populate_timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.Contact_Automation__c , Enterprise_Trial__c  = true)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
