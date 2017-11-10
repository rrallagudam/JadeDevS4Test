<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Service_Type_update</fullName>
        <field>Service_Type__c</field>
        <formula>Text(Product2.Service_Type__c)</formula>
        <name>Service Type update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Total_Price_Update</fullName>
        <field>Rollup_Total_Price__c</field>
        <formula>Quantity *  UnitPrice</formula>
        <name>Total Price Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Total_Price_AI</fullName>
        <description>Update the Total Price without bundle line items</description>
        <field>Total_Price_AI__c</field>
        <formula>If( Bundled__c = false, 
Quantity * Net_Unit_Price__c , 
0 
)</formula>
        <name>Update Total Price (AI)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unit_Price</fullName>
        <description>Updates the unit price if bundle</description>
        <field>UnitPrice</field>
        <formula>If( Bundled__c != null,
    ((List_Price_AI__c - (List_Price_AI__c *  Bundled_Discount__c))/12) *  Order.Term_Months__c ,
     UnitPrice 
)</formula>
        <name>Update Unit Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Order Product Updated</fullName>
        <actions>
            <name>Total_Price_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Total_Price_AI</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Unit_Price</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>OrderItem.TotalPrice</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Copies TotalPrice to a custom currency field for use in an Order rollup summary.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Product%3A Service Type update</fullName>
        <actions>
            <name>Service_Type_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>OrderItem.Service_Type__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
