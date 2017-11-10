<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Contract_Renewal_Term</fullName>
        <field>SBQQ__RenewalTerm__c</field>
        <formula>IF( NOT(ISBLANK(SBQQ__Quote__r.RenewalTerm__c)),
SBQQ__Quote__r.RenewalTerm__c,
 SBQQ__RenewalTerm__c)</formula>
        <name>Update Contract Renewal Term</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_contract_term</fullName>
        <field>ContractTerm</field>
        <formula>SBQQ__Quote__r.Quote_Term_Length__c</formula>
        <name>Update contract term</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contract Renewal Term</fullName>
        <actions>
            <name>Update_Contract_Renewal_Term</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contract.ContractTerm</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates the contract renewal term to reflect Quote calculation involving free months.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Contract Term</fullName>
        <actions>
            <name>Update_contract_term</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(ISNULL(ContractTerm))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
