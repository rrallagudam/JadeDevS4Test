public class CustomConstants {
    public static final String LifecycleMAL = 'MAL'; 
    public static final String LifecycleMQL = 'MQL';
    public static final String LifecycleSAL = 'SAL';
    public static final String LifecycleSQL = 'SQL';
    public static final String LifecycleSQO = 'SQO';
    public static final String LifecycleSAO = 'SAO';
    public static final String LifecycleCustomer = 'Customer';
    
    public static final String ContactStatusRaw = 'Raw';
    public static final String ContactStatusNew = 'New';
    public static final String ContactStatusRestored = 'Restored';
    public static final String ContactStatusPursuing = 'Pursuing';
    public static final String ContactStatusFollowUp = 'Follow Up';
    public static final String ContactStatusUnresponsive = 'Unresponsive';
    public static final String ContactStatusUnqualified = 'Unqualified';
    public static final String ContactStatusQualified = 'Qualified';
    public static final String ContactUnQualifiedReasonNI = 'No Interest';
        
    public static final String LeadStatusRaw = 'Raw';
    public static final String LeadStatusNew = 'New';
    public static final String LeadStatusFollowUp = 'Follow Up';
    public static final String LeadStatusRestored = 'Restored';
    public static final String LeadStatusPursuing = 'Pursuing';
    public static final String LeadStatusRejected = 'Rejected';
    public static final String LeadStatusUnresponsive = 'Unresponsive';
    public static final String LeadStatusUnqualified = 'Unqualified';
    public static final String LeadStatusQualified = 'Qualified';
    public static final String LeadRegistrationStatusAccepted = 'Accepted';
    public static final String LeadRegistrationStatusRejected = 'Rejected';
    public static final String LeadRegistrationStatusExpired = 'Expired';
    public static final String LeadFollowUpAI = 'Adaptive Insights';
    
    public static final String OpportunityStageProspect = 'Prospect';
    public static final String OpportunityStageSDRNur = 'SDR Nurture';
    public static final String OpportunityStageDisq = 'Disqualified';
    public static final String OpportunityStageSAO = 'SAO';
    public static final String OpportunityStageSQO = 'SQO';
    public static final String OpportunityStageSolExp = 'Solution Exploration';
    public static final String OpportunityStageProPre = 'Proposal Presentation';
    public static final String OpportunityStageNeedAna = 'Need Analysis';
    public static final String OpportunityStageComAndNeg = 'Commitment & Negotiation';
    public static final String OpportunityStagePrepForSig = 'Prepare for Signature';
    public static final String OpportunityStageSigned = 'Signed';
    public static final String OpportunityStageSentToOrders = 'Sent to Orders';
    public static final String OpportunityStageCW = 'Closed Won';
    public static final String OpportunityStageCL = 'Closed Lost';
    public static final String OpportunityStageCWI = 'Closed Won - Installments';
    public static final String OpportunityStageCLNP = 'Closed Non-Pursuit';
    public static final String OpportunityStageFieldNur = 'Field Nurture';
    public static final String OpportunityReferralPartner = 'Referral Partner';
    public static final String OpportunityTypeNew = 'New';
    public static final String OpportunityTypeAddOn = 'Add-On';
    public static final String OpportunityTypeRenewal = 'Renewal';
    public static final String OpportunityTeamRoleAccMgr = 'Account Manager';
    public static final String OpportunityTeamRoleAccCSM = 'Account CSM';
    public static final String OpportunityRegistrationStatusExpired = 'Expired';
    
    public static final String LeadTypeCustomerProspect = 'Customer Prospect';
    
    public static final String LeadSource = 'Partner - Prospect Referral Form';
    
    public static final String AccountTypeCustomer = 'Customer';
    public static final String AccountTypeCustomerProspect = 'Customer Prospect';
    public static final String AccountTypePartner = 'Partner';
    public static final String AccountTypePartnerProspect = 'Partner Prospect';
    public static final String AccountStsCancelled = 'Cancelled';
    public static final String EmailTemplateNameWelcomeEmail = 'Welcome Email';
    public static final String CustomerSucessEmailAddress = 'customersuccess@adaptiveinsights.com';
    public static final String SDRRole = 'SDR';
    public static final Id SDRProfileId = '00e6100000161qtAAA';
    public static final Id SalesRepProfileId = '00e6100000161qq';
    public static final String OrderNotificationEmailId = 'orders@adaptiveinsights.com';
     
    public static final String TaskStsCompleted = 'Completed';
    public static final String TaskPriorityNormal = 'Normal';
    public static final String TaskTypeNextStep = 'Next Step Update';
    static List<OrgWideEmailAddress> lstOrgWideEmailAddress = [SELECT id FROM OrgWideEmailAddress WHERE DisplayName = 'Sales Ops'];
    public static final String SalesOpsEmailId = lstOrgWideEmailAddress[0].id;
    
    public static final Id EloquaUserId = '00561000001XyHU';
    public static final Id unassignedLeadQueueId = '00G61000000fXyk';
    public static final Id HannahEggertUserId = '00561000001Y3gn';
    public static final Id RebekahRobbUserId = '00561000001Y3ej';
    
    // Contact picklist values - Purchasing_Role__c
    public static final String strPrimaryContact = 'Primary Contact';
    public static final String strPrimaryCustomerContact   = 'Primary Customer Contact';
    
    // Email Templates
    public static final String strOrderNotificationTemplate = 'Opportunity stage Sent to Order';
    public static final string strLeadRegistarationApprovalTemplate = 'Lead Registration Approved - Custom';
    public static final string strLeadRegistarationRejectionTemplate = 'Lead Rejection Email - Custom';
    public static final string strPartnerOppExpirationNotificationTemplate = '7A. Partner Opportunity Expiration Notification';
    public static final string strPartnerOppExpirationConfirmationTemplate = '7B. Partner Opportunity Expiration Confirmation';
    public static final string strPartnerLeadExpirationNotificationTemplate = 'Partner Lead Expiration Notification';
    public static final string strPartnerLeadExpirationConfirmationTemplate = 'Partner Lead Expiration Confirmation';
    
    public static final string PartnerCommunityLoginProspect = 'Partner Community Login - Prospect';
    public static final string PartnerCommunityLoginSolutionProvider = 'Partner Community Login - Solution Provider';
    public static final string PartnerCommunityLoginReferral ='Partner Community Login - Referral';    
    public static final string PartnerCommunityUserPartner = 'Partner Community User - Partner';    
    public static final string PartnerUserProfilePartnerProspect = 'Partner Prospect';
    public static final string PartnerUserProfilePartner ='Partner';
    public static final string PartnerUserProfileReferralPartner ='Referral Partner';
    public static final string PartnerCommunityUserRoleManager ='Manager';
    public static final string PartnerCommunityUserRoleUser ='User';
    
    public static final string ProfileNameFieldRep = 'Field Sales';
    
    
    public static final string CMstsSent = 'Sent';
    public static final string CMstsResp = 'Responded';
    public static final string CMstsRegAttend = 'Registered - Attended';
    public static final string CMstsRegNotAttend = 'Registered - Not Attended';
    public static final string CMstsNotRegAttend = 'Not Registered - Attended';
    public static final string CMstsNotRegDenied = 'Registered - Denied';
    public static final string CMstsRegCancelled = 'Registered - Canceled';
    public static final string CMstsRegElevated = 'Registered - Elevated';
    public static final string CMstsRegConfirmed = 'Registered - Confirmed';
    public static final string CMstsRegQualifing = 'Registered - Qualifying';
    
    public static final string CampaignstsPlanned = 'Planned';
    public static final string CampaignstsInProd = 'In Production';
    
    //Rejected/Unqualified Reasons for Lead/Contact
    public static final string ReasonNLWC = 'No Longer With Company';
    public static final string ReasonComp = 'Competitor';
    public static final string ReasonCompAlt = 'Is A Competitor';
    public static final string ReasonJunk = 'Junk';
    public static final string ReasonHB ='Hard Bounce';
    
    // Queue Names
    public static final string strChannelLeadValidation ='Channel_Lead_Validation';
    
    // Installment Opportunity
    public static final string strInstallmentPaySubscriptionsProductId = '01t61000002K791';
    
    //UserRole Id for CEO and CRO
    public static final string CEORoleId = '00E61000000YOBl';
    
    public static final string CROROleId = '00E61000000cmaZ';
    public static final String approvalStatusPending = 'Pending';
    
    //Exclude Intacct
    public static final String IntacctAccountId = '0016100000VBiXN';
    
    // Partners Email address
    public static final String partnerEmailAddress = 'partners@adaptiveinsights.com';
    
    //SLA lead report name
     public static final String SLALeadReportName = 'SLA_Violations_Leads';
    
     //SLA Contact report name
     public static final String SLAContactReportName = 'SLA_Violations_Contact';
    
        //SLA Opportunity report name
     public static final String SLAOppProspectReportName = 'SLA_Violations_Prospect_Opportunities';
    
        //SLA Opportunity report name
     public static final String SLAOppSAOReportName = 'SLA_Violations_SAO_Opportunities';
     
     //System Admin Profile Id
     public static final string sysAdminId = '00e610000013WZ7AAM';
     
     //Sales Ops Profile Id
     public static final string salesOpsId = '00e2F000000HfVaQAK';
     
     //Sales operations Profile Id
     // Need to Change this Profile Id with Productions Profile Id while Deploying this class
     public static final string salesOperationsProfileId = '00e6100000161qu';
     
     //SalesOps email address
     public static final string salesOpsEmailDL = 'salesops@adaptiveinsights.com';
     
    // Customer Success Manager
     public static final string strCustomerSuccessManagerProfile = 'Customer Success Manager';
     
     // Opportunity Line Item Revenue Type
     public static final string strOLIRevenueType = 'Service';
     
     // SLA Notification Date Filter
     public static final Date augustFirstDate = Date.newInstance(2017, 8, 1);
     public static final Date oppCreatedDate = Date.newInstance(2017, 5, 1);
        
    //SalesOpsEmailId = lstOrgWideEmailAddress[0].id
    public CustomConstants(){
    }
}