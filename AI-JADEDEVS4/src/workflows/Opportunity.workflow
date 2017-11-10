<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AM_has_not_moved_this_to_a_SAO_within_two_business_days</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>AM has not moved this to a SAO within two business days</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Owner_1st_Meeting_Completed_no_SAO_2_days</template>
    </alerts>
    <alerts>
        <fullName>New_Customer_Notification</fullName>
        <description>New Customer Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>jpasvankias@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>meggert@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Sales_Ops_Email_Templates/New_Customer</template>
    </alerts>
    <alerts>
        <fullName>Notify_AM_of_SAO</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify AM of SAO</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Owner_not_moved_from_SAO_20_days</template>
    </alerts>
    <alerts>
        <fullName>Notify_Manager_of_SAO</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Manager of SAO</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Manager_not_moved_from_SAO_25_days</template>
    </alerts>
    <alerts>
        <fullName>Notify_Opp_Owner_s_Manager_when_Opp_Prospecting_for_5_business_days</fullName>
        <ccEmails>AMtest@adaptiveinsights.com,AVPtest@adaptiveinsights.com,CSOtest@adaptiveinsights.com</ccEmails>
        <description>Notify Opp Owner&apos;s Manager when Opp Prospecting for 5+ business days</description>
        <protected>false</protected>
        <recipients>
            <recipient>rrallagudam@adaptiveinsights.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Ops_Email_Templates/Manager_1st_Meeting_Completed_no_SAO_5_days</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Registration_Approved_Custom</fullName>
        <description>Opportunity Registration Approved - Custom</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Community_Templates/X5A_Opportunity_Registration_Approved_Custom</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Sent_For_Review</fullName>
        <description>Opportunity Sent For Review</description>
        <protected>false</protected>
        <recipients>
            <recipient>Sales_Ops</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opportunity_Sent_for_Review</template>
    </alerts>
    <alerts>
        <fullName>Partner_Opportunity_Expiration_Confirmation</fullName>
        <description>Partner Opportunity Expiration Confirmation</description>
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
        <template>Partner_Community_Templates/X7B_Partner_Opportunity_Expiration_Confirmation</template>
    </alerts>
    <alerts>
        <fullName>Partner_Opportunity_Expiration_Notification</fullName>
        <ccEmails>partners@adaptiveinsights.com</ccEmails>
        <description>Partner Opportunity Expiration Notification</description>
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
        <template>Partner_Community_Templates/X7A_Partner_Opportunity_Expiration_Notification</template>
    </alerts>
    <alerts>
        <fullName>Partner_Opportunity_expiration</fullName>
        <description>Partner Opportunity expiration</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Email_Templates/Partner_Opportunity_expiration_before_30_days</template>
    </alerts>
    <alerts>
        <fullName>Partner_Opportunity_expiration_before_30_days</fullName>
        <description>Partner Opportunity expiration before 30 days</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Email_Templates/Partner_Opportunity_expiration_before_30_days</template>
    </alerts>
    <alerts>
        <fullName>X5A_Opportunity_Registration_Approved_Custom</fullName>
        <description>5A. Opportunity Registration Approved - Custom</description>
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
        <template>Partner_Community_Templates/X5A_Opportunity_Registration_Approved_Custom</template>
    </alerts>
    <alerts>
        <fullName>X5B_Opportunity_Registration_Rejected_Custom</fullName>
        <description>5B. Opportunity Registration Rejected - Custom</description>
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
        <template>Partner_Community_Templates/X5B_Opportunity_Registration_Rejected_Custom</template>
    </alerts>
    <fieldUpdates>
        <fullName>Blank_SAO_Is_Changed_Date</fullName>
        <field>Timestamp_SAO__c</field>
        <name>Blank SAO Is Changed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Close_Date_90_Days</fullName>
        <description>Set the Close Date to 90 days from today</description>
        <field>CloseDate</field>
        <formula>TODAY() + 90</formula>
        <name>Close Date 90 Days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Copy_Total_New_ARR_to_Best_Case</fullName>
        <field>Best_case__c</field>
        <formula>Total_New_ARR__c</formula>
        <name>Copy Total New ARR to Best Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Copy_Total_New_ARR_to_Commit</fullName>
        <field>Commit__c</field>
        <formula>Total_New_ARR__c</formula>
        <name>Copy Total New ARR to Commit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Copy_Total_New_ARR_to_Likely</fullName>
        <field>Likely__c</field>
        <formula>Total_New_ARR__c</formula>
        <name>Copy Total New ARR to Likely</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Copy_the_Total_New_ARR</fullName>
        <field>Forecast_ARR__c</field>
        <formula>Total_New_ARR__c</formula>
        <name>Copy the Total New ARR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Counter_Signer_User_Field_Update</fullName>
        <field>Counter_Signer_User__c</field>
        <lookupValue>ssitaram@adaptiveinsights.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Counter Signer User Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Default_Forecast_ARR</fullName>
        <description>Set the default Forecast ARR to $10,000 for Direct, Prospect opportunities</description>
        <field>Forecast_ARR__c</field>
        <formula>IF(Classification__c = &quot;Direct&quot; &amp;&amp; ISPICKVAL(Type, &quot;New&quot;), 10000, 0)</formula>
        <name>Default Forecast ARR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Close_date</fullName>
        <field>CloseDate</field>
        <formula>Today()</formula>
        <name>Opportunity Close date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Closed_Lost</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Closed_Lost</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Closed Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Closed_Won</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Closed_Won</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Commitment</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Commitment_Negotiation</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Commitment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Need_Analysis</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Need_Analysis</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Need Analysis</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Nurture</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Nurture</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Nurture</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Proposal</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Proposal_Presentation</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Proposal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Prospect</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Prospect</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_SAO</fullName>
        <field>RecordTypeId</field>
        <lookupValue>SAO</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type SAO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_SQO</fullName>
        <field>RecordTypeId</field>
        <lookupValue>SQO</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type SQO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Signed</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Signed</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Signed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Record_Type_Solution_Explore</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Solution_Exploration</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opportunity Record Type Solution Explore</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Patner_Contact_Email_Field_Update</fullName>
        <field>Partner_Contact_Email__c</field>
        <formula>Partner_Contact__r.Email</formula>
        <name>Partner Contact Email Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_1st_Opportunity_Close_Date</fullName>
        <field>X1st_Opp_close_date__c</field>
        <formula>CloseDate</formula>
        <name>Populate 1st Opportunity Close Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Best_Case</fullName>
        <field>Best_case__c</field>
        <formula>Likely__c</formula>
        <name>Populate Best Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Likely</fullName>
        <field>Likely__c</field>
        <formula>Commit__c</formula>
        <name>Populate Likely</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Prior_Archive_field_update</fullName>
        <field>ARCHIVE_Prior_ARR__c</field>
        <formula>SBQQ__RenewedContract__r.Total_Renewal_Price__c</formula>
        <name>Prior Archive field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SAO_Is_Changed_Date_Field_Update</fullName>
        <field>Timestamp_SAO__c</field>
        <formula>Today()</formula>
        <name>SAO Is Changed Date Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SQO_Is_Changed_DateField_Update</fullName>
        <field>SQO_ischanged_Date__c</field>
        <formula>Today()</formula>
        <name>SQO Is Changed DateField Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Next_Send_Email_Date_to_Now_12</fullName>
        <field>Next_Send_Email_Date__c</field>
        <formula>NOW()  + 0.5</formula>
        <name>Set Next Send Email Date to Now() + 12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Workflow_Execution_Date_to_Now</fullName>
        <field>Workflow_Execution_Date__c</field>
        <formula>NOW()</formula>
        <name>Set Workflow Execution Date to Now()</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_Need_Analysis_Is_Changed_Date</fullName>
        <field>Need_Analysis_ischanged_date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp Need Analysis Is Changed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opp_Registration_Status_to_Expire</fullName>
        <field>Registration_Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Update Opp Registration Status to Expire</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opp_Stage_to_Disqualified</fullName>
        <field>StageName</field>
        <literalValue>Disqualified</literalValue>
        <name>Update Opp Stage to Disqualified</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opportunity_RecordType</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partner</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Opportunity RecordType</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opportunity_StageName</fullName>
        <field>StageName</field>
        <literalValue>Prospect</literalValue>
        <name>Update Opportunity StageName</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opportunity_closed_date</fullName>
        <description>Date(year(datevalue(CreatedDate)), MONTH(datevalue( CreatedDate))+ 3, DAY( DATEVALUE(CreatedDate) ) )</description>
        <field>CloseDate</field>
        <formula>CreatedDate + 270</formula>
        <name>Update Opportunity closed date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Probability_to_0</fullName>
        <field>Probability</field>
        <formula>0</formula>
        <name>Update Probability to 0</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Layout_eSign</fullName>
        <field>RecordTypeId</field>
        <lookupValue>eSign</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Layout eSign</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SDR_Owner2</fullName>
        <field>SDR_Owner2__c</field>
        <formula>CreatedBy.Full_Name__c</formula>
        <name>Update SDR Owner2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Temp_Renewal_ARR</fullName>
        <field>Temp_Renewal_ARR__c</field>
        <formula>IF( TEXT(Type) == &quot;Renewal&quot;, 

  IF(Roll_Up_Subscription_Revenue__c - Target_Renewal_ARR__c &gt;= 0 &amp;&amp; Renewal_Term__c&gt; 0,

    IF(Roll_Up_Subscription_Revenue__c/Renewal_Term__c * 12 &gt; Target_Renewal_ARR__c,
      Target_Renewal_ARR__c,

      IF (Renewal_Term__c &lt; 12, 
        Roll_Up_Subscription_Revenue__c,
        Roll_Up_Subscription_Revenue__c/Renewal_Term__c * 12)),
       
    IF( Renewal_Term__c &lt;= 12, 
      Target_Renewal_ARR__c + (Roll_Up_Subscription_Revenue__c - Target_Renewal_ARR__c), 

      IF(Roll_Up_Subscription_Revenue__c - Target_Renewal_ARR__c &lt; 0,
        (Roll_Up_Subscription_Revenue__c/Renewal_Term__c)*12,
        ((Roll_Up_Subscription_Revenue__c - Target_Renewal_ARR__c)/Renewal_Term__c) * 12
      )
    )
  ),
  0
)</formula>
        <name>Update Temp Renewal ARR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Temp_Term</fullName>
        <field>Temp_Term__c</field>
        <formula>/*IF(ISBLANK(SBQQ__PrimaryQuote__c),IF(ISBLANK(Old_ID__c), SBQQ__RenewedContract__r.SBQQ__RenewalTerm__c, ARCHIVE_Subscription_Term__c), 
SBQQ__PrimaryQuote__r.Quote_Term_Length__c 
) 

IF(ISBLANK(SBQQ__PrimaryQuote__r.Quote_Term_Length__c),IF(ISBLANK(SBQQ__PrimaryQuote__c),IF(ISBLANK(Old_ID__c), SBQQ__RenewedContract__r.SBQQ__RenewalTerm__c, ARCHIVE_Subscription_Term__c), 
SBQQ__PrimaryQuote__r.Quote_Term_Length__c), 
SBQQ__PrimaryQuote__r.RenewalTerm__c 
)*/ 

IF(ISBLANK(SBQQ__PrimaryQuote__c),IF(ISBLANK(Old_ID__c), SBQQ__RenewedContract__r.SBQQ__RenewalTerm__c, ARCHIVE_Subscription_Term__c), 
SBQQ__PrimaryQuote__r.RenewalTerm__c 
)</formula>
        <name>Update Temp Term</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_partner_last_activity_date</fullName>
        <field>Last_Activity_Date__c</field>
        <formula>today()</formula>
        <name>Update partner last activity date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_Track_Base_ARR</fullName>
        <field>Track_Base_ARR__c</field>
        <formula>Base_ARR__c</formula>
        <name>update Track Base ARR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_Track_Renewal_ARR</fullName>
        <description>This is used to update the &apos;Track Renewal ARR&apos; field.</description>
        <field>Track_Renewal_ARR__c</field>
        <formula>Renewal_ARR__c</formula>
        <name>update Track Renewal ARR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_Track_subscription_Start_Date</fullName>
        <description>This field is used to update the Track subscription Start Date field</description>
        <field>Track_Subscription_Start_Date__c</field>
        <formula>Subscription_Start_Date__c</formula>
        <name>update Track subscription Start Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Blank SAO Is Changed Date</fullName>
        <actions>
            <name>Blank_SAO_Is_Changed_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(ISPICKVAL(PRIORVALUE (StageName),  &quot;SAO&quot;),  OR(ISPICKVAL(StageName,&quot;Disqualified&quot;) , ISPICKVAL(StageName,&quot;SDR Nurture&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Calculate Temp Term</fullName>
        <actions>
            <name>Update_Temp_Term</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Copying the Total New ARR</fullName>
        <actions>
            <name>Copy_Total_New_ARR_to_Best_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Copy_Total_New_ARR_to_Commit</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Copy_Total_New_ARR_to_Likely</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Copy_the_Total_New_ARR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Total_New_ARR__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.SBQQ__Renewal__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Renewed_Contract_ID__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Counter Signer User Field Update</fullName>
        <actions>
            <name>Counter_Signer_User_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Counter_Signer_User__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Default Prospect Fields</fullName>
        <actions>
            <name>Close_Date_90_Days</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Default_Forecast_ARR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>notEqual</operation>
            <value>Add-On,Renewal</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Partner_Opportunity__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.SBQQ__Renewal__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Renewed_Contract_ID__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>On record creation, set the Close Date on Prospect opportunities to 90 days from today and default Forecast ARR to $10,000 on Direct opportunities.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>New Customer</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won,Closed Won - Installments</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.New_ARR__c</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 10,000&quot;</value>
        </criteriaItems>
        <description>Notification when a new customer is signed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>New_Customer_Notification</name>
                <type>Alert</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Notify Sales ops Team when a closed opportunity is edited</fullName>
        <active>false</active>
        <description>Notify sales ops Team when a closed opportunity is edited by any business user other than sales ops and system admin</description>
        <formula>($Profile.Name &lt;&gt; &apos;Sales Ops&apos;)  &amp;&amp; ($Profile.Name &lt;&gt; &apos;System Administrator&apos;)  &amp;&amp; ISCHANGED( Amount )   &amp;&amp; ISPICKVAL(StageName, &apos;Closed Won&apos;)  &amp;&amp;  ISPICKVAL(StageName, &apos;Closed Won - Installments&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Close date</fullName>
        <actions>
            <name>Opportunity_Close_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Sent to Orders</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Closed Lost</fullName>
        <actions>
            <name>Opportunity_Record_Type_Closed_Lost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.IsWon</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Closed Won</fullName>
        <actions>
            <name>Opportunity_Record_Type_Closed_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.IsWon</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Commitment %26 Negotiation</fullName>
        <actions>
            <name>Opportunity_Record_Type_Commitment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Commitment &amp; Negotiation</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Need Analysis</fullName>
        <actions>
            <name>Opportunity_Record_Type_Need_Analysis</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Need Analysis</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Source__c</field>
            <operation>notEqual</operation>
            <value>Partner/Channel</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Nurture</fullName>
        <actions>
            <name>Opportunity_Record_Type_Nurture</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>SDR Nurture,Field Nurture</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Source__c</field>
            <operation>notEqual</operation>
            <value>Partner/Channel</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Partner Expiration</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Last_Modified_Date_Activity__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>If there is no activity for 6 months on Opportunity then send email notifications to  partner contact before 30day expiration &amp; after expired</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Partner_Opportunity_expiration</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.Last_Modified_Date_Activity__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Partner_Opportunity_expiration_before_30_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.Last_Modified_Date_Activity__c</offsetFromField>
            <timeLength>-30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Opportunity Prepare For Signature</fullName>
        <actions>
            <name>Update_Record_Layout_eSign</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Prepare for Signature</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Proposal Presentation</fullName>
        <actions>
            <name>Opportunity_Record_Type_Proposal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Proposal Presentation</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Source__c</field>
            <operation>notEqual</operation>
            <value>Partner/Channel</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity SAO</fullName>
        <actions>
            <name>Opportunity_Record_Type_SAO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>SAO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Source__c</field>
            <operation>notEqual</operation>
            <value>Partner/Channel</value>
        </criteriaItems>
        <description>Change the record type when the stage changes</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity SAO SLA</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>Notify people if the opportunity stage has not been changed from Prospect by certain times</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Opp_Owner_s_Manager_when_Opp_Prospecting_for_5_business_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.X5_Business_Days_from_First_Meeting__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>AM_has_not_moved_this_to_a_SAO_within_two_business_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.X3_Business_Days_from_First_Meeting__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Opportunity SQO</fullName>
        <actions>
            <name>Opportunity_Record_Type_SQO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>SQO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Source__c</field>
            <operation>notEqual</operation>
            <value>Partner/Channel</value>
        </criteriaItems>
        <description>Change the record type when the stage changes</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity SQO SLA</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>SAO</value>
        </criteriaItems>
        <description>Notify people if the opportunity stage has not been changed from SAO by certain times</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_AM_of_SAO</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.X21_Business_Days_from_SAO__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Manager_of_SAO</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.X25_Business_Days_from_SAO__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Opportunity Signed</fullName>
        <actions>
            <name>Opportunity_Record_Type_Signed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Signed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Source__c</field>
            <operation>notEqual</operation>
            <value>Partner/Channel</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Solution Exploration</fullName>
        <actions>
            <name>Opportunity_Record_Type_Solution_Explore</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Solution Exploration</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Stage Prospect</fullName>
        <actions>
            <name>Opportunity_Record_Type_Prospect</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity stage is signed - Related to Reminder on Signed Opportunity</fullName>
        <actions>
            <name>Set_Next_Send_Email_Date_to_Now_12</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Workflow_Execution_Date_to_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND($Setup.SkipAutomationSetting__c.Opportunity_Automation__c,$Setup.SkipAutomationSetting__c.All__c, ISPICKVAL( StageName, &apos;Signed&apos;) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Partner Contact Email Field Update</fullName>
        <actions>
            <name>Patner_Contact_Email_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update partner contact field update to send email notifications for partner contact when opportunity expired</description>
        <formula>Partner_Contact__c &lt;&gt; NULL</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Last Activity Date Field Update</fullName>
        <actions>
            <name>Update_partner_last_activity_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(NextStep)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Opportunity Acceptance email after DOD</fullName>
        <actions>
            <name>X5A_Opportunity_Registration_Approved_Custom</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Opportunity_Automation__c , NOT(ISBLANK(Partner_Contact__c ) ), ISPICKVAL(Registration_Status__c , &apos;Accepted&apos;),
 Account.DoD_Update__c,  IsNewAccountOnOpportunity__c 
 )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Opportunity Accepted Notification</fullName>
        <actions>
            <name>X5A_Opportunity_Registration_Approved_Custom</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Partner_Opportunity_Accepted_Notification_Task</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Opportunity_Automation__c , NOT(ISBLANK(Partner_Contact__c ) ), ISPICKVAL(Registration_Status__c , &apos;Accepted&apos;), ISCHANGED( Registration_Status__c ), NOT(ISBLANK(TEXT( Registration_Status__c ))) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Opportunity Rejected Notification</fullName>
        <actions>
            <name>X5B_Opportunity_Registration_Rejected_Custom</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Partner_Opportunity_Rejected_Notification_task</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.All__c, $Setup.SkipAutomationSetting__c.Opportunity_Automation__c , NOT(ISBLANK(Partner_Contact__c ) ),  ISPICKVAL(Registration_Status__c , &apos;Rejected&apos;),  ISCHANGED( Registration_Status__c )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Registered Opportunity Expiration</fullName>
        <actions>
            <name>Partner_Opportunity_Expiration_Notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>For registered Opportunities, we will expire in an automated way after 30 days of no activity updates. Contact owner and partner contact should receive a notification one week before it expires and then again on the day that it expires.</description>
        <formula>AND(  $Setup.SkipAutomationSetting__c.All__c , $Setup.SkipAutomationSetting__c.Opportunity_Automation__c , Last_Activity_Date__c = TODAY() - 23,   NOT(ISBLANK(Partner_Account__c )) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Partner_Opportunity_Expiration_Confirmation</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Opp_Registration_Status_to_Expire</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Update_Opp_Stage_to_Disqualified</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Update_Probability_to_0</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Partner_Opportunity_Expiration_Notification</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Populate 1st Opportunity Close Date</fullName>
        <actions>
            <name>Populate_1st_Opportunity_Close_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( $Setup.SkipAutomationSetting__c.Account_Automation__c , ISBLANK( Account.X1st_Opp_close_date__c ), Account.Closed_Won_Count__c =0,IsClosed, ISPICKVAL(Type  , &apos;New&apos;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate Best Case</fullName>
        <actions>
            <name>Populate_Best_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Likely__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Best_case__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate Likely</fullName>
        <actions>
            <name>Populate_Likely</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Commit__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Likely__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate shadow fields</fullName>
        <actions>
            <name>update_Track_Base_ARR</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_Track_Renewal_ARR</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_Track_subscription_Start_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will populate the shadow fields</description>
        <formula>AND( $Setup.SkipAutomationSetting__c.Opportunity_Automation__c ,OR(  ISCHANGED( Subscription_Start_Date__c ) , ISCHANGED( Renewal_ARR__c ) ,ISCHANGED( Base_ARR__c )  ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SAO Field Update</fullName>
        <actions>
            <name>SAO_Is_Changed_Date_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(ISPICKVAL(PRIORVALUE (StageName),  &quot;Prospect&quot;),  OR(ISPICKVAL(StageName,&quot;SAO&quot;) , ISPICKVAL(StageName,&quot;SQO&quot;) ,  ISPICKVAL(StageName,&quot;Solution Exploration&quot;) , ISPICKVAL(StageName,&quot;Proposal Presentation&quot;) , ISPICKVAL(StageName,&quot;Field Nurture&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SQO Field Update</fullName>
        <actions>
            <name>SQO_Is_Changed_DateField_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(OR(ISPICKVAL(PRIORVALUE(StageName) ,&quot;Prospect&quot;),ISPICKVAL(PRIORVALUE(StageName),&quot;SAO&quot;)) ,    OR(  ISPICKVAL(StageName,&quot;SQO&quot;) ,  ISPICKVAL(StageName,&quot;Solution Exploration&quot;) ,  ISPICKVAL(StageName,&quot;Proposal Presentation&quot;) ,  ISPICKVAL(StageName,&quot;Field Nurture&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Stamp Needs Analysis Is Changed Date</fullName>
        <actions>
            <name>Stamp_Need_Analysis_Is_Changed_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Fill in the Need_Analysis_ischanged_date__c field when the opportunity is changed from the Prospect record type to any other open record type.</description>
        <formula>ISBLANK(Need_Analysis_ischanged_date__c)  &amp;&amp;  PRIORVALUE(StageName) = &quot;Prospect&quot; &amp;&amp; !( ISPICKVAL(StageName, &quot;Disqualified&quot;) || ISPICKVAL(StageName, &quot;SDR Nurture&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Temp Renewal ARR Field</fullName>
        <actions>
            <name>Update_Temp_Renewal_ARR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>Renewal</value>
        </criteriaItems>
        <description>This will fill in the Temp Renewal ARR field on Opps</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Opportunity closed date %26 Stage</fullName>
        <actions>
            <name>Update_Opportunity_StageName</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Opportunity_closed_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Partner_Opportunity__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>notEqual</operation>
            <value>Add-On,Renewal</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Prior Archive field</fullName>
        <actions>
            <name>Prior_Archive_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.SBQQ__Renewal__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update SDR Owner2</fullName>
        <actions>
            <name>Update_SDR_Owner2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the SDR Owner (Archive) field is blank use the created by user.</description>
        <formula>ISBLANK(SDR_Owner2__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Partner_Opportunity_Accepted_Notification_Task</fullName>
        <assignedToType>owner</assignedToType>
        <description>Opportunity acceptance Email sent to partner contact.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CloseDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Partner Opportunity Acceptance Notification</subject>
    </tasks>
    <tasks>
        <fullName>Partner_Opportunity_Expiration_Notification</fullName>
        <assignedTo>Opportunity Owner</assignedTo>
        <assignedToType>opportunityTeam</assignedToType>
        <description>Partner Opportunity Expiration Notification</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CloseDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Partner Opportunity Expiration Notification</subject>
    </tasks>
    <tasks>
        <fullName>Partner_Opportunity_Rejected_Notification_task</fullName>
        <assignedToType>owner</assignedToType>
        <description>Opportunity rejection Email sent to partner contact.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CloseDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Partner Opportunity Rejection Notification</subject>
    </tasks>
</Workflow>
