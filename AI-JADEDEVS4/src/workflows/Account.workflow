<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Account_Cancellation_Notification</fullName>
        <description>Account Cancellation Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>AccountCancellationDistributionList</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Account_Cancellation_Notification</template>
    </alerts>
    <alerts>
        <fullName>CSM_Email_Notification</fullName>
        <description>CSM Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>CSM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>CSM_Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Trial_Notification_For_Contact</template>
    </alerts>
    <alerts>
        <fullName>Notify_AM_of_New_Lead</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify AM of New Lead</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Notify_Account_Owner_of_New_Lead</template>
    </alerts>
    <alerts>
        <fullName>Partner_Docusign_Email_Notification</fullName>
        <description>Partner Docusign Email Notification</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <field>Partner_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Email_Templates/Partner_Docusign_notification</template>
    </alerts>
    <alerts>
        <fullName>Partner_NDA_Agreement_Email_Notifications</fullName>
        <description>Partner NDA Agreement Email Notifications</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Email_Templates/NDA_Agreement</template>
    </alerts>
    <fieldUpdates>
        <fullName>AdaptiveSignatureUpdate</fullName>
        <field>Adaptive_Signature__c</field>
        <formula>IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;US Parent&apos;),&apos;Adaptive Insights, Inc.&apos;, 
IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;Australia subsidiary&apos;),&apos;Adaptive Insights Pty Ltd&apos;, 
IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;Canada subsidiary&apos;),&apos;Adaptive Insights, Ltd.&apos;, 
IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;UK subsidiary&apos;),&apos;Adaptive Insights Limited&apos;, 
IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;Japan subsidiary&apos;),&apos;Adaptive Insights, Inc&apos;,NULL)))))</formula>
        <name>AdaptiveSignatureUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AddressUpdate</fullName>
        <field>Adaptive_Subsidiary_Address__c</field>
        <formula>IF(ISPICKVAL(Adaptive_Subsidiary__c , &apos;US Parent&apos;),  $Label.Subsidiary_US,
IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;Australia subsidiary&apos;) ,$Label.Subsidiary_Austraila,
IF(ISPICKVAL(Adaptive_Subsidiary__c , &apos;Canada subsidiary&apos;) ,$Label.Subsidiary_Canada, 
IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;UK subsidiary&apos;) ,$Label.Subsidiary_UK, 
IF(ISPICKVAL(Adaptive_Subsidiary__c, &apos;Japan subsidiary&apos;) ,$Label.Subsidiary_Japan,NULL)))))</formula>
        <name>AddressUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>All_Other_Countries_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>bdard@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>All Other Countries Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_Account_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>mbyantz@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign Account Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_Account_Owner_2</fullName>
        <field>OwnerId</field>
        <lookupValue>mhaun@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign Account Owner 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_Account_Owner_3</fullName>
        <field>OwnerId</field>
        <lookupValue>chill@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign Account Owner 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_Account_Owner_4</fullName>
        <field>OwnerId</field>
        <lookupValue>bwillette@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign Account Owner 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_Account_Owner_5</fullName>
        <field>OwnerId</field>
        <lookupValue>amcdonnell@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign Account Owner 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_Account_Owner_japan</fullName>
        <field>OwnerId</field>
        <lookupValue>cshinohara@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign Account Owner japan</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_UK_Account_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>rdouglas@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign UK Account Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Assign_the_Owner_1</fullName>
        <field>OwnerId</field>
        <lookupValue>mkim@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Assign the Owner 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>By_Pass_Assignment</fullName>
        <field>Bypass_Assignment_Rules__c</field>
        <literalValue>1</literalValue>
        <name>By Pass Assignment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>By_Pass_Assignment_1</fullName>
        <field>Bypass_Assignment_Rules__c</field>
        <literalValue>1</literalValue>
        <name>By Pass Assignment 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>By_Pass_Assignment_2</fullName>
        <field>Bypass_Assignment_Rules__c</field>
        <literalValue>1</literalValue>
        <name>By Pass Assignment 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>By_Pass_Assignment_check</fullName>
        <field>Bypass_Assignment_Rules__c</field>
        <literalValue>1</literalValue>
        <name>By Pass Assignment check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>By_Pass_Assignment_checkboc</fullName>
        <field>Bypass_Assignment_Rules__c</field>
        <literalValue>1</literalValue>
        <name>By Pass Assignment checkboc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CSM_Email_Update</fullName>
        <field>CSM_Email__c</field>
        <formula>Account_CSM__r.Email</formula>
        <name>CSM Email Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CSM_Manager_Email_Address_Update</fullName>
        <field>CSM_Manager_Email__c</field>
        <formula>Account_CSM__r.Manager.Email</formula>
        <name>CSM Manager Email Address Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CSM_Manager_Email_Update</fullName>
        <field>CSM_Manager_Email__c</field>
        <formula>Account_CSM__r.Manager.Email</formula>
        <name>CSM Manager Email Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_recordtype_to_Partner</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partner</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change recordtype to Partner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_recordtype_to_Prospect</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Prospect</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change recordtype to Prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_status_to_Active</fullName>
        <field>Status__c</field>
        <literalValue>Active</literalValue>
        <name>Change status to Active</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Counter_signer_field_update</fullName>
        <field>Counter_Signer_User__c</field>
        <lookupValue>cgearhart@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Counter signer field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Early_Adopter_Timestamp</fullName>
        <field>Early_Adopter_Timestamp__c</field>
        <formula>IF(ISBLANK(TEXT(EA_Status__c)),null,NOW())</formula>
        <name>Early Adopter Timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Partner_Contact_Email_Field_Update</fullName>
        <field>Partner_Contact_Email__c</field>
        <formula>Partner_Contact__r.Email</formula>
        <name>Partner Contact Email Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Relationship_Status_Update</fullName>
        <field>Relationship_Status_Update__c</field>
        <formula>Today()</formula>
        <name>Relationship Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Notify_AM_of_New_Lead</fullName>
        <description>Uncheck Notify AM of New Lead checkbox to allow for future lead entry</description>
        <field>Notify_AM_of_New_Lead__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Notify AM of New Lead</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Adaptive_Revenue</fullName>
        <description>Update Adaptive revenue with Annual revenue</description>
        <field>Adaptive_Revenue__c</field>
        <formula>AnnualRevenue</formula>
        <name>Update Adaptive Revenue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_By_Pass_Assignement</fullName>
        <field>Bypass_Assignment_Rules__c</field>
        <literalValue>1</literalValue>
        <name>Update By Pass Assignement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_By_Pass_Assignment</fullName>
        <field>Bypass_Assignment_Rules__c</field>
        <literalValue>1</literalValue>
        <name>Update By Pass Assignment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Co_Term_Event</fullName>
        <description>This will update the Co-Term Event on an Account</description>
        <field>SBQQ__CoTerminationEvent__c</field>
        <literalValue>Add-on</literalValue>
        <name>Update Co-Term Event</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contract_Co_Term</fullName>
        <description>Updates the Contract Co-Term on an account</description>
        <field>SBQQ__ContractCoTermination__c</field>
        <literalValue>Prompt</literalValue>
        <name>Update Contract Co-Term</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_No_of_Employees_Field</fullName>
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
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_type_to_partner_prospect</fullName>
        <field>Type</field>
        <literalValue>Partner Prospect</literalValue>
        <name>change type to partner prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account Relationship Status Update</fullName>
        <actions>
            <name>Relationship_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Relationship_Status__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updating this Relationship Status Update field based on relationship status</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Subsidiary Address</fullName>
        <actions>
            <name>AddressUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Adaptive_Subsidiary__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Account Subsidiary Address populated based on Account Subsidiary</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Adaptive Signature</fullName>
        <actions>
            <name>AdaptiveSignatureUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Adaptive_Subsidiary__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>All Other Countries Partner Assignment Rules</fullName>
        <actions>
            <name>All_Other_Countries_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>By_Pass_Assignment_check</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>Account.Partner_Community__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>equals</operation>
            <value>US,United States,USA,Canada,CAN,CA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Bypass_Assignment_Rules__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner Prospect,Partner</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CSM Email Update</fullName>
        <actions>
            <name>CSM_Email_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CSM_Manager_Email_Address_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Account_CSM__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CSM Email notifications</fullName>
        <actions>
            <name>CSM_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Account_CSM__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.CSM_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.CSM_Manager_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change partner recordtype</fullName>
        <actions>
            <name>Change_recordtype_to_Partner</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Change_status_to_Active</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_No_of_Employees_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>change_type_to_partner_prospect</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Account.PRM_Description__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change recordtype to Prospect</fullName>
        <actions>
            <name>Change_recordtype_to_Prospect</name>
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
        <fullName>Contract setup for SteelBrick</fullName>
        <actions>
            <name>Update_Co_Term_Event</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contract_Co_Term</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Account_Status__c</field>
            <operation>equals</operation>
            <value>Customer,Partner &amp; Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Customer</value>
        </criteriaItems>
        <description>This will setup an account to handle contracts correctly with SteelBrick</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Counter signer field update</fullName>
        <actions>
            <name>Counter_signer_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Counter_Signer_User__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Customer Cancellation Notice</fullName>
        <actions>
            <name>Account_Cancellation_Notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends emails to various parties when a customer has cancelled</description>
        <formula>AND( 
ISCHANGED( Account_Status__c ), 
ISPICKVAL( Account_Status__c, &quot;Cancelled&quot;), 
NOT(BEGINS($User.Username, &quot;automatedclean&quot;)), 
NOT(BEGINS($User.Username, &quot;autoproc&quot;)), 
$User.Alias &lt;&gt; &quot;cwoo2&quot;, 
$User.Alias &lt;&gt; &quot;wave&quot; 
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Early Adopter Timestamp</fullName>
        <actions>
            <name>Early_Adopter_Timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Timestamp whenever picklist value is changed for Early Adopter field on Account.</description>
        <formula>ISCHANGED(EA_Status__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Japan Partner Assignment Rules</fullName>
        <actions>
            <name>Assign_Account_Owner_japan</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>By_Pass_Assignment_check</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>Account.Partner_Community__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>equals</operation>
            <value>Japan,JP</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Bypass_Assignment_Rules__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner Prospect,Partner</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify AM of New Lead</fullName>
        <actions>
            <name>Notify_AM_of_New_Lead</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Notify_AM_of_New_Lead</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Lead has been entered for an existing Account. Notify the account manager</description>
        <formula>Notify_AM_of_New_Lead__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Partner Assignment Rule 1</fullName>
        <actions>
            <name>Assign_Account_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>By_Pass_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2 AND 3 AND 6 AND 7) OR (1 AND 4 AND 5 AND 6 AND 7)</booleanFilter>
        <criteriaItems>
            <field>Account.Partner_Community__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>contains</operation>
            <value>US,United States,USA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingState</field>
            <operation>contains</operation>
            <value>AL,CT,DC,DE,FL,GA,MA,MD,ME,MI,NC,NH,NJ,NY,PA,RI,SC,TN,VA,VT,WV</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>contains</operation>
            <value>Canada,CA,CAN</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingState</field>
            <operation>contains</operation>
            <value>AB,BC,MB,NB,NL,NT,NS,NU,ON,PE,QC,SK,YT</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Bypass_Assignment_Rules__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner Prospect,Partner</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Assignment Rule 2</fullName>
        <actions>
            <name>Assign_Account_Owner_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>By_Pass_Assignment_checkboc</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2 AND 3 AND 4 AND 5)</booleanFilter>
        <criteriaItems>
            <field>Account.Partner_Community__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>contains</operation>
            <value>US,United States,USA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingState</field>
            <operation>contains</operation>
            <value>AK,AR,AZ,CA,CO,HI,IA,ID,IL,IN,KS,KY,LA,MN,MO,MS,MT,ND,NE,NM,NV,OH,OK,OR,SD,TX,UT,WA,WI,WY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Bypass_Assignment_Rules__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner Prospect,Partner</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Contact Email Field Update</fullName>
        <actions>
            <name>Partner_Contact_Email_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>Partner_Contact__c  &lt;&gt; null</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate 1st opportunity close date</fullName>
        <active>false</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.Account_Automation__c , ISBLANK( X1st_Opp_close_date__c ), Closed_Won_Count__c =1 )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate Adaptive Revenue</fullName>
        <actions>
            <name>Update_Adaptive_Revenue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Adaptive_Revenue__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Populate account adaptive revenue with Annual revenue when adaptive revenue is blank/null</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>UK %26 Ireland Partner Assignment Rules</fullName>
        <actions>
            <name>Assign_UK_Account_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>By_Pass_Assignment_check</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>Account.Partner_Community__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>equals</operation>
            <value>UK,United kingdom,Ireland,IL,great britian</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Bypass_Assignment_Rules__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner Prospect,Partner</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
