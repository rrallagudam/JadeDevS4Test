<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Temp_Annual_Sub_Update</fullName>
        <field>Temp_Annualized_Subscription_Revenue__c</field>
        <formula>Subscription_Monthly_Amount__c * (IF(Renewal_Term__c &lt; 12, Renewal_Term__c, 12))</formula>
        <name>Temp Annual Sub Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_BD_Subscription_Term</fullName>
        <description>Update the Booking Detail Subscription Term from Order Term</description>
        <field>Subscription_Term_Months__c</field>
        <formula>Order__r.Term_Months__c</formula>
        <name>Update BD Subscription Term</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Temp_Renewal_ARR</fullName>
        <field>Temp_Renewal_ARR__c</field>
        <formula>IF(Is_Renewal_Booking__c,
   IF((Annualized_Subscription_Revenue__c - Target_Renewal_ARR__c) &gt; 0,
     Target_Renewal_ARR__c,
     Annualized_Subscription_Revenue__c
  ),
  0
)</formula>
        <name>Update Temp Renewal ARR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Temp_Total_Bookings</fullName>
        <field>Temp_Total_Bookings__c</field>
        <formula>Total_New_Booking__c + Total_Renewal_Booking__c</formula>
        <name>Update Temp Total Bookings</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_temp_add_on_arr</fullName>
        <field>Temp_AddOn_ARR__c</field>
        <formula>IF(Is_Add_On_Booking__c, 
   Annualized_Subscription_Revenue__c,
   IF(Is_Renewal_Booking__c, 
      IF(Annualized_Subscription_Revenue__c &gt; Target_Renewal_ARR__c,
         Annualized_Subscription_Revenue__c - Target_Renewal_ARR__c,
         0
      ),
   0)
)</formula>
        <name>Update temp add-on arr</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Temp Add-On ARR Field</fullName>
        <actions>
            <name>Update_temp_add_on_arr</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Used to evaluate what an Add-on ARR should be.</description>
        <formula>!ISNULL(Opportunity__r.LastModifiedDate)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Temp Add-On ARR Update</fullName>
        <actions>
            <name>Update_temp_add_on_arr</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Will update the Temp Add-on ARR field.</description>
        <formula>!ISNULL(Opportunity__r.LastModifiedDate)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Temp Renewal ARR Field</fullName>
        <actions>
            <name>Update_Temp_Renewal_ARR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Booking_Detail__c.Is_Renewal_Booking__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Will update the Temp Renewal ARR field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Total Bookings update</fullName>
        <actions>
            <name>Temp_Annual_Sub_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Temp_Total_Bookings</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Booking_Detail__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the Temp Total Booking field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Subscription Term</fullName>
        <actions>
            <name>Update_BD_Subscription_Term</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Order.Term_Months__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This is a temporary workflow rule to pull the subscription term from the order. This might need to be turned off after the scripts go live.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
