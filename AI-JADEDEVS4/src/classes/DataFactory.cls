/**@@
#APEX CLASS NAME          :    DataFactory 
#DESCRIPTION           :    This is Utility class used for test data creation.https://cs66.salesforce.com/_ui/common/apex/debug/ApexCSIPage#
@@**/
public class DataFactory{
    ID pricebookId = Test.getStandardPricebookId(); 
   
       //public static List<User> userList = new List<User>();

    /**@@
    #DESCRIPTION     : Creating test Lead records 
    #Paramaters        : String, Integer
    @@**/
    //  Test Records for List of Lead Object
    public Static List<Lead> createLeadTestRecords(String leadLastName,Integer totalLeads){
        List<Lead> leadList = new List<Lead>();
        for(Integer i=0; i<totalLeads; i++) {
            Lead leadObj = new Lead(LastName= leadLastName+i, FirstName='LeadFName', Company='testaccountcompany',Status=CustomConstants.LeadStatusRaw,Country='USA',State = 'GA', PostalCode = '12345', Email = 'testemail@test.com', NAICS_Code__c = '11',HubSpot_Lead_Score__c = 20);
            leadList.add(leadObj);
        }
        insert leadList;
        return leadList;
    }//END OF LEAD INSERT
    
        /**@@
    #DESCRIPTION     : Creating test Lead records 
    #Paramaters        : String, Integer
    @@**/
    //  Test Records for List of Lead Object
    public Static List<Lead> createPartnerLeadTestRecords(String leadLastName,string testCompany,String testIndustry ,String MDFNum,string testEmail,Integer totalLeads){
        List<Lead> leadList = new List<Lead>();
   
        for(Integer i=0; i<totalLeads; i++) {
            Lead leadRecord = new Lead();
        leadRecord.FirstName = 'Foo';
        leadRecord.LastName = leadLastName;
        leadRecord.AnnualRevenue =1224;
        leadRecord.Adaptive_Industry__c =testIndustry;
        leadRecord.Country ='India';
        leadRecord.State ='MH';
        leadRecord.Website ='www.google.com';
        leadRecord.Partner_Referal_Follow_Up__c ='Adaptive Insights';
        leadRecord.Title = 'CEO';
        leadRecord.Phone = '1231231234';
        leadRecord.Email = testEmail;//'testemail@test.com';
        leadRecord.NumberOfEmployees =33;
        leadRecord.MDF_Sourced_Lead__c ='Yes';
        leadRecord.MDF_Approval_Number__c =MDFNum;
        leadRecord.Company= testCompany;
   
        
            leadList.add(leadRecord);
        }
        
        return leadList;
    }//END OF LEAD INSERT
    /**@@
    #DESCRIPTION     : Creating Lead  record for Data.com
    #Paramaters      : Feedid,count
    @@**/
     public static List<Lead> createLeadForDataDotCom(String LastName,integer totalCount){
     List<Lead> ListLead = new List<Lead> ();
     for(integer i=0;i<totalCount;i++)
        {
              Lead leadRecord= new lead (LastName = LastName+i, 
                                         New_Form_Submit__c = true,Data_com_Enriched__c = false, 
                                         Company='Jade',Website = 'www.Google.com',City = 'Mumbai',Ownerid = CustomConstants.unassignedLeadQueueId  );
           ListLead.add(leadRecord);
               
        }//End Of For
                 insert ListLead;
                 return ListLead;
     }//End Of Method
    
    /**@@
    #DESCRIPTION     : Creating test Account records 
    #Paramaters        : String, Integer
    @@**/
    //  Test Records for List of Account Object
    public Static List<Account> createAccountTestRecords(String accName,Integer totalAccounts){
        //Id RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
        List<Account> accList = new List<Account>();
         List<User> userList =createUserTestRecords('Test',1);
        for(Integer i=0; i<totalAccounts; i++) {
            Account accObj = new Account( Name =accName , Type='Partner', BillingCity ='TestCity', BillingCountry = 'USA',
                                         BillingPostalCode='111111', BillingState='GA', BillingStreet='TestStreet',Status__c='Active', 
                                         Industry='TestSoftware', PRM_Annual_Revenue__c = '1B+',Industry_Focus__c = 'Game Software',Website = 'www.acmetest.com'
                                       ,Account_CSM__c =userList[0].id,Partner_Commission_Type__c='Reseller' ,PartnerType__c =' Solution Provider'
                                        );
            accList.add(accObj);
        }
        insert accList;
        return accList;
    }//END OF ACCOUNT INSERT  
    
    /**@@
    #DESCRIPTION     : Creating test Account records for exception 
    #Paramaters        : None
    @@**/
    //  Test Records for List of Account Object
    public Static Account createAccountForException(){
        Account acc = new Account (Name='LastName');
        insert acc;
        return acc;
    }//END OF ACCOUNT INSERT
    
    
    /**@@
    #DESCRIPTION     : Creating test contact records 
    #Paramaters        : String, Id, Integer
    @@**/
    public Static List<Contact> createContactTestRecords(String ContactLastName, Id accObjId, Integer totalContacts){
        Id devRecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
        List<contact> contactList = new List<Contact>();
        for(Integer i=0;i<totalContacts;i++){
            Contact testContact = new Contact(FirstName='TestFName',
                                              LastName = ContactLastName+i,
                                              Email ='unit'+i+'@test.com',
                                              AccountId = accObjId,
                                              Phone='1345678902',
                                              recordTypeId = devRecordTypeId,
                                              Status__c = CustomConstants.ContactStatusPursuing,
                                              Lifecycle_Stage__c = CustomConstants.LifecycleMAL,
                                             MailingState = 'Ontario',Purchasing_Role__c =CustomConstants.strPrimaryContact
                                             ,LeadSource ='Marketing',Lead_Offer_Most_Recent__c='Partner',Lead_Offer_Original__c='Case study');
            contactList.add(testContact);
        }
        insert contactList;
        return contactList;
    }//END OF CONTACT INSERT
    
    /**@@
    #DESCRIPTION     : Creating test opportunity records 
    #Paramaters      : String, Integer.
    @@**/
    public Static List<Opportunity> createOpportunityTestRecords(String opportunityName, Integer totalOpportunities){
        
        List<Opportunity> opportunityList = new List<Opportunity>();
        ID pricebookId = Test.getStandardPricebookId();
       // List<Contract> lstContract= createContractTestRecords(1);
        List<Account> accList = createAccountTestRecords('TestaccName',1);
        List<Contact> conList = createContactTestRecords('Test',accList[0].id,1);
        for(Integer i=0;i<totalOpportunities;i++){            
            Opportunity testOpportunity = new Opportunity(Name='Test Opportunity4',
                                                          AccountId=accList[0].Id,
                                                          Primary_Contact__c = conList[0].ID,                     
                                                          StageName='New',
                                                          Pricebook2Id=pricebookId,
                                                          CloseDate=Date.Today().AddDays(90),
                                                          Special_Terms__c = 'TestInternal Notes',
                                                          SBQQ__Contracted__c = false,
                                                          Closed_Reasons__c = 'Other',
                                                          Type='New',
                                                          Is_Installment_Opportunity__c=false,
                                                          CurrencyIsoCode='USD',
                                                          NextStep = 'Raw',
                                                          Partner_Account__c = accList[0].id,
                                                          CRM_Other__c = 'test Crm',
                                                          CRM_System__c = 'NetSuite',
                                                          Competition__c = 'Board',
                                                            ERP_System__c = 'Abila',
                                                            Fiscal_Year_End__c = 'Jan',
                                                            HR_System_Other__c = 'test hr',
                                                            HR_System__c = 'Ceridian',
                                                            Incumbent_Budgeting_Tool__c = 'Anaplan',
                                                            Other_ERP__c = 'other',
                                                            Partner_Fee__c = false,
                                                            Reason_for_change_Pain_Points__c ='test pain reason',
                                                           Referral_Follow_Up__c =   'Partner',                  
                                                            Time_Frame__c = 'No Time Frame',
                                                            Order_Type__c = 'Renewal'
                                                         );
            opportunityList.add(testOpportunity);
        }
        insert opportunityList;
        return opportunityList;
    }//END OF OPPORTUNITY INSERT
    
     /**@@
    #DESCRIPTION     : Creating test opportunity records 
    #Paramaters      : String, Integer.
    @@**/
    public Static List<Opportunity> createOpportunityTestRecords1(String opportunityName, Integer totalOpportunities){
        
        List<Opportunity> opportunityList = new List<Opportunity>();
        ID pricebookId = Test.getStandardPricebookId();
       
        List<Account> accList = createAccountTestRecords('TestaccName',1);
       
        for(Integer i=0;i<totalOpportunities;i++){            
            Opportunity testOpportunity = new Opportunity(Name='Test Opportunity4',
                                                          AccountId=accList[0].Id,
                                                          StageName='New',
                                                          Pricebook2Id=pricebookId,
                                                          CloseDate=Date.Today().AddDays(90),
                                                          Special_Terms__c = 'TestInternal Notes',
                                                          SBQQ__Contracted__c = false,
                                                          Closed_Reasons__c = 'Other',
                                                          Type='New',
                                                          Is_Installment_Opportunity__c=false,
                                                          CurrencyIsoCode='USD',
                                                          NextStep = 'Raw',
                                                          Partner_Account__c = accList[0].id,
                                                          CRM_Other__c = 'test Crm',
                                                          CRM_System__c = 'NetSuite',
                                                          Competition__c = 'Board',
                                                            ERP_System__c = 'Abila',
                                                            Fiscal_Year_End__c = 'Jan',
                                                            HR_System_Other__c = 'test hr',
                                                            HR_System__c = 'Ceridian',
                                                            Incumbent_Budgeting_Tool__c = 'Anaplan',
                                                            Other_ERP__c = 'other',
                                                            Partner_Fee__c = false,
                                                            Reason_for_change_Pain_Points__c ='test pain reason',
                                                           Referral_Follow_Up__c =   'Partner',                  
                                                            Time_Frame__c = 'No Time Frame',
                                                            Order_Type__c = 'Renewal'
                                                         );
            opportunityList.add(testOpportunity);
        }
        insert opportunityList;
        return opportunityList;
    }//END OF OPPORTUNITY INSERT
    
    /**@@
    #DESCRIPTION     : Creating test opportunity records 
    #Paramaters      : String, Integer.
    @@**/
    public Static List<Opportunity> createOpportunityWithRenewedContract(String opportunityName, Integer totalOpportunities){
        
        List<Opportunity> opportunityList = new List<Opportunity>();
        ID pricebookId = Test.getStandardPricebookId();
        List<Contract> lstContract= createContractTestRecords(1);
        List<Account> accList = createAccountTestRecords('TestaccName',1);
        List<Contact> conList = createContactTestRecords('Test',accList[0].id,1);
        for(Integer i=0;i<totalOpportunities;i++){            
            Opportunity testOpportunity = new Opportunity(Name='Test Opportunity4',
                                                          AccountId=accList[0].Id,
                                                          Primary_Contact__c = conList[0].ID,                     
                                                          StageName='New',
                                                          Pricebook2Id=pricebookId,
                                                          CloseDate=Date.Today().AddDays(90),
                                                          Special_Terms__c = 'TestInternal Notes',
                                                          SBQQ__Contracted__c = false,
                                                          Closed_Reasons__c = 'Other',
                                                          Type='Renewal',
                                                          Is_Installment_Opportunity__c=false,
                                                          CurrencyIsoCode='USD',
                                                          NextStep = 'Raw',
                                                          Partner_Account__c = accList[0].id,
                                                          CRM_Other__c = 'test Crm',
                                                          CRM_System__c = 'NetSuite',
                                                          Competition__c = 'Board',
                                                            ERP_System__c = 'Abila',
                                                            Fiscal_Year_End__c = 'Jan',
                                                            HR_System_Other__c = 'test hr',
                                                            HR_System__c = 'Ceridian',
                                                            Incumbent_Budgeting_Tool__c = 'Anaplan',
                                                            Other_ERP__c = 'other',
                                                            Partner_Fee__c = false,
                                                            Reason_for_change_Pain_Points__c ='test pain reason',
                                                           Referral_Follow_Up__c =   'Partner',                  
                                                            Time_Frame__c = 'No Time Frame',
                                                            Order_Type__c = 'Renewal',
                                                            SBQQ__RenewedContract__c = lstContract[0].id,
                                                           SBQQ__Renewal__c = true
                                                         );
            opportunityList.add(testOpportunity);
        }
        insert opportunityList;
        return opportunityList;
    }//END OF OPPORTUNITY INSERT
      /**@@
    #DESCRIPTION     : Creating test opportunity records 
    #Paramaters      : String, Integer.
    @@**/
    public Static List<Opportunity> createRenewalOpportunityTestRecords(String opportunityName, Integer totalOpportunities){
        
        List<Opportunity> opportunityList = new List<Opportunity>();
        ID pricebookId = Test.getStandardPricebookId();
       List<Contract> lstContract= createContractTestRecords(1);
        List<Account> accList = createAccountTestRecords('TestaccName',1);
        List<Contact> conList = createContactTestRecords('Test',accList[0].id,1);
        for(Integer i=0;i<totalOpportunities;i++){            
            Opportunity testOpportunity = new Opportunity(Name='Test Opportunity4',
                                                          AccountId=accList[0].Id,
                                                          Primary_Contact__c = conList[0].ID,                     
                                                          StageName=CustomConstants.OpportunityStageProspect,
                                                          Pricebook2Id=pricebookId,
                                                          CloseDate=Date.Today().AddDays(90),
                                                          Special_Terms__c = 'TestInternal Notes',
                                                          SBQQ__Contracted__c = false,
                                                          Closed_Reasons__c = 'Other',
                                                          Type='Renewal', 
                                                          Is_Installment_Opportunity__c=false,
                                                          CurrencyIsoCode='USD',
                                                          NextStep = 'Raw',
                                                          SBQQ__Renewal__c =true,
                                                          Partner_Account__c =accList[0].id,
                                                          Contract = lstContract[0] 
                                                         );
            opportunityList.add(testOpportunity);
        }
        insert opportunityList;
        return opportunityList;
    }//END OF OPPORTUNITY INSERT
    public Static List<Opportunity> createOpportunityTestRecordsNew(String opportunityName, String opptyType, String currencyIso, String accId, String conId, Integer totalOpportunities){
        
        List<Opportunity> opportunityList = new List<Opportunity>();
        ID pricebookId = Test.getStandardPricebookId();
        if(accId == '')
        {
            List<Account> accList = createAccountTestRecords(opportunityName,1);
            List<Contact> conList = createContactTestRecords(opportunityName,accList[0].id,1);
            accId = accList[0].Id;
            conId = conList[0].Id;
        }
        else if(conId == '')
        {
            List<Contact> conList = createContactTestRecords(opportunityName,accId,1);
            conId = conList[0].Id;
        }
        
        for(Integer i=0;i<totalOpportunities;i++){
            Opportunity testOpportunity = new Opportunity(Name=opportunityName+i,
                                                          AccountId=accId,
                                                          Primary_Contact__c = conId,                     
                                                          StageName=CustomConstants.OpportunityStageProspect,
                                                          Pricebook2Id=pricebookId,
                                                          CloseDate=Date.Today().AddDays(90),
                                                          Special_Terms__c = 'TestInternal Notes',
                                                          SBQQ__Contracted__c = false,
                                                          Closed_Reasons__c = 'Other',
                                                          Type=opptyType,Is_Installment_Opportunity__c=false,
                                                          CurrencyIsoCode=currencyIso,
                                                          NextStep = 'Raw');
            opportunityList.add(testOpportunity);
        }
        insert opportunityList;
        return opportunityList;
    }//END OF OPPORTUNITY INSERT
    
      /**@@
    #DESCRIPTION     : Creating partner opportunity records 
    #Paramaters        : String, Integer
    @@**/
    //  Test Records for List of Opportunity Object
    public Static List<Opportunity> createPartnerOpportunityTestRecords(String testNextStep,String MDFNum,  Integer totalOpp){
        List<Opportunity> oppList = new List<Opportunity>();
   
        for(Integer i=0; i<totalOpp; i++) {
        Opportunity opp = new Opportunity();    
        opp.CloseDate = Date.today();
        opp.Forecast_ARR__c = 100;
        opp.NextStep = testNextStep;
        opp.StageName = 'abc';
        opp.Name='test opp';
        opp.Likely__c = 22.1;
        opp.MDF_Approval_Number__c =MDFNum;
        opp.MDF_Sourced_Lead__c='Yes';
        opp.Solution_Requirements__c = 'Consolidation;Dashboards';
        oppList.add(opp);
        }
        
        return oppList;
    }//END OF Opportunity INSERT
    
    
          /**@@
    #DESCRIPTION     : Creating partner Account records 
    #Paramaters        : String, Integer
    @@**/
    //  Test Records for List of Opportunity Object
    public Static List<Account> createPartnerAccountTestRecords(String testIndustry,Integer totalAcc){
        List<Account> accRecList = new List<Account>();
   
        for(Integer i=0; i<totalAcc; i++) {
        Account accList = new Account();    
        accList.Name = 'ACME Test';
        accList.AnnualRevenue = 10000;
        accList.Adaptive_Industry__c = testIndustry;
        accList.BillingCountry = 'Canada';
        accList.BillingState = 'Ontario';
        accList.Website = 'www.acmetest.com';
        accList.NumberOfEmployees =12;
        accList.Current_GL__c='abc';
        accList.CRM_System__c='CRM';
        accList.HR_System__c ='HR';
        accRecList.add(accList);
        }
        
        return accRecList;
    }//END OF Account INSERT
    
          /**@@
    #DESCRIPTION     : Creating partner opportunity records 
    #Paramaters        : String, Integer
    @@**/
    //  Test Records for List of Contact Object
    public Static List<Contact> createPartnerContactTestRecords(String testTitle,String testBudgetedProject,Integer totalCon){
        List<Contact> conList = new List<Contact>();
   
        for(Integer i=0; i<totalCon; i++) {
        Contact c = new Contact();    
        c.FirstName = 'Foo';
        c.LastName = 'Bar';
        c.Title = testTitle;
        c.Phone = '1231231234';
        c.Email = 'foo@bar.com';
        c.Reason_for_change_Pain_Points__c = 'Test Pain';
        c.ERP__c = 'Abila';
        c.CRM__c = 'Microsoft Dynamics';
        c.HR__c = 'ADP';
        c.Fiscal_Year_End__c = 'Jan';
        c.Budgeted_Project__c = testBudgetedProject;
        c.Time_Frame__c = '13 - 24 Months';
       /* c.Dashboard__c = 'Yes';
        c.Expense_Planning__c = 'No';
        c.Revenue_Planning__c = 'Yes';
        c.Personnel_Planning__c = 'No';
        c.Forecasting__c = 'Yes';
        c.Consolidation__c = 'No';
        c.Cash_Flow_Balance_Sheet__c = 'Yes'; */
        conList.add(c);
        }
        
        return conList;
    }//END OF Contact INSERT
    /**@@
    #DESCRIPTION     : Creating test Quote records 
    #Paramaters      : Id, Integer
    @@**/
    public Static List<SBQQ__Quote__c> createQuoteTestRecords(Id oppObjId, Integer totalQuotes){
        List<SBQQ__Quote__c> quoteList = new List<SBQQ__Quote__c>();
        for(Integer i=0;i<totalQuotes;i++){
            SBQQ__Quote__c testQuote = new SBQQ__Quote__c();
            testQuote.SBQQ__Opportunity2__c= oppObjId;
            testQuote.SBQQ__Type__c ='Installment Payment for Subscriptions';
            testQuote.Display_End_Date__c = Date.Today().addDays(2);
            testQuote.SBQQ__PaymentTerms__c ='TestPTerm';
            testQuote.Special_Terms__c ='QuoteTest';
            testQuote.SBQQ__Primary__c = true;
            testQuote.SBQQ__StartDate__c = system.today();
            testQuote.Quote_Term_Length__c = 4;
            quoteList.add(testQuote);
        }
        insert quoteList;
        return quoteList;
    }//END OF Quote INSERT
    
     /**@@
    #DESCRIPTION     : Creating test Product records 
    #Paramaters      :  Integer
    @@**/
    public Static List<Product2> createProductRecords(string strProductName, string strProductCode, Integer totalProduct){
        List<Product2> prodList = new List<Product2>();
        for(Integer i=0;i<totalProduct;i++){
            Product2 testProd = new Product2();
            testProd.Name = strProductName;
            testProd.ProductCode = strProductCode;
            testProd.IsActive = true;
            testProd.Description ='TestPTerm';
            testProd.Product__c ='All';
            testProd.Product_Unique_Key__c = strProductCode;
            testProd.SBQQ__DefaultQuantity__c = 1112;
            testProd.SBQQ__QuantityEditable__c = true;
            testProd.SBQQ__AssetConversion__c ='One per quote line';
            testProd.Type__c ='Base';
            testProd.Revenue_Type__c ='Subscription';
            testProd.Family='Subscription';
            prodList.add(testProd);
        }
        insert prodList;
        return prodList;
    }//END OF Product INSERT
    
    /**@@
    #DESCRIPTION     : Creating test order records 
    #Paramaters      : String, Id, Id, Integer.
    @@**/
    public Static List<Order> createOrderTestRecords(String orderName, Id oppObjId, Id accObjId, Integer totalOrders){
        List<Order> orderList = new List<Order>();
        List<SBQQ__Quote__c> quoteList = createQuoteTestRecords(oppObjId,1);
        
        for(Integer i=0;i<totalOrders;i++){
            Order testOrder = new Order(name = orderName+i);
            testOrder.AccountId= accObjId;
            testOrder.OpportunityId=oppObjId;
            testOrder.Status='Draft';
            testOrder.Order_Start_Date__c=system.today();
            testOrder.EffectiveDate = Date.today();
            testOrder.Special_Terms__c ='TestOrder';
            testOrder.Quote__c = quoteList[0].id;
            orderList.add(testOrder);
        }
        insert orderList;
        return orderList;
    }//END OF ORDER INSERT
    
        /**@@
    #DESCRIPTION     : Creating test Contract records 
    #Paramaters      : 
    @@**/
    public Static List<Contract> createContractTestRecords(integer totalContract){
        List<Contract> contractList = new List<Contract>();
        List<Account> accList = createAccountTestRecords('TestaccName',1);
       List<opportunity> oppList =createOpportunityTestRecords('test opp',1);
        for(Integer i=0;i<totalContract;i++){
            Contract testContract = new Contract();
            testContract.AccountId= accList[0].id;
            testContract.SBQQ__Opportunity__c =oppList[0].id;
            testContract.status='Draft';
            testContract.StartDate =System.today();
            testContract.ContractTerm = 12;
            contractList.add(testContract);
        }
        insert contractList;
        return contractList;
    }//END OF Contract INSERT
    
    /**@@
    #DESCRIPTION     : Creating test IndustryClassification records 
    #Paramaters      : Id, Integer
    @@**/
    public Static List<Industry_Classification__c> createIndustryClassificationRecords(String AdaptiveIndustry, Integer totalIndustryClassification){
        List<Industry_Classification__c> industryClassificationList = new List<Industry_Classification__c>();
        for(Integer i=0;i<totalIndustryClassification;i++){
            Industry_Classification__c testIndustryClassification= new Industry_Classification__c(NAICS_Description__c = 'Test Description', Adaptive_Industry__c = AdaptiveIndustry, NAICS_Code__c='11');
            industryClassificationList.add(testIndustryClassification);
        }
        Insert industryClassificationList;
        return industryClassificationList;
    }// END of IndustryClassification record
    
    /**@@
    #DESCRIPTION     : Creating test user records 
    #Paramaters      : String, Integer.
    @@**/
    public Static List<User> createUserTestRecords(String userLastName,Integer totalUsers){
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        System.debug('$#$#$#$#$#$#$# Profile: '+p.id);
        List<User> userList = new List<User>();
        
        String orgId = UserInfo.getOrganizationId();
        String dateString = String.valueof(Datetime.now()).replace(' ','').replace(':','').replace('-','');
        Integer randomInt = Integer.valueOf(math.rint(math.random()*1000000));
        String uniqueName = orgId + dateString + randomInt;
        
        for(Integer i=0;i<totalUsers;i++){
            User testUser = new User(Alias = 'standt'+i, 
                                     Email='standardusr'+i+'@adaptiveinsights.com', 
                                     EmailEncodingKey='UTF-8', 
                                     LastName=userLastName, 
                                     LanguageLocaleKey='en_US', 
                                     LocaleSidKey='en_US',
                                     ProfileId = p.Id, 
                                     Role__c = 'SDR',
                                     TimeZoneSidKey='America/Los_Angeles', 
                                     UserName=uniqueName +i+ '@test' + orgId + '.org');
            userList.add(testUser);
        }
        
        insert userList;
     
        return userList;
        
    }//END OF USER INSERT
    
    
    /**@@
    #DESCRIPTION     : Inserting custom setting records 
    #Paramaters        : String, Id, Integer
    @@**/
    public static void insertCustomSetting(){
        
        SkipAutomationSetting__c customSettingObj = SkipAutomationSetting__c.getOrgDefaults();    
        if(customSettingObj.All__c == true){  
            return;
        }
        customSettingObj = SkipAutomationSetting__c.getOrgDefaults();
        customSettingObj.All__c = true;
        customSettingObj.Contact_Automation__c = true;
        customSettingObj.Account_Automation__c = true;
        customSettingObj.Campaign_Automation__c = true;
        customSettingObj.CampaignMember_Automation__c = true;
        customSettingObj.Contract_Automation__c = true;
        customSettingObj.Lead_Automation__c = true;
        customSettingObj.Opportunity_Automation__c = true;
        customSettingObj.OpportunityLineItem_Automation__c = true;
        customSettingObj.Order_Automation__c = true;
        customSettingObj.User_Automation__c = true;
        customSettingObj.Quote_Automation__c = true;
        customSettingObj.Quote_Document_Automation__c = true;
        customSettingObj.Task_Automation__c = true;
        customSettingObj.Booking_Detail_Automation__c = true;
        
        upsert customSettingObj;
    }//END OF INSERT CUSTOM SETTING
    
    /**@@
    #DESCRIPTION     : Inserting run as user
    #Paramaters        : None
    @@**/
    public static List<User> insertRunAsUser(){
        
        Profile profObj = [SELECT Id, usertype FROM Profile WHERE Name='System Administrator'];
        UserRole portalRole = [Select Id,name From UserRole where PortalType != 'Partner' limit 1];
        List<User> usrList = new List<User>();         
        User testUser = new User(Alias = 'standt', 
                                 Email='standarduser@adaptiveinsights.com', 
                                 EmailEncodingKey='UTF-8', 
                                 LastName='TestLname', 
                                 LanguageLocaleKey='en_US', 
                                 LocaleSidKey='en_US',
                                 ProfileId = profObj.Id, 
                                 UserRoleId = portalRole.id,
                                 TimeZoneSidKey='America/Los_Angeles', 
                                 UserName='standarduser@t2estorg.com'
                                );
        usrList.add(testUser);
        
        insert usrList;
        return usrList;
    }
    
    /**@@
    #DESCRIPTION     : Inserting Portal User
    #Paramaters        : contact Id
    @@**/
    
    public static List<User> insertPortalUser(Id contactObjId){
        Profile portalProfile = [SELECT Id FROM Profile where Name=:'Partner Community Login - Prospect'];
        //UserRole portalRole1 = [Select Id,name From UserRole where PortalType = 'Partner' limit 1];
        List<User> usrObjList = new List<User>();
        User user1 = new User(
            Username = 'test1234567@adaptiveinsights.com.adaptive',
            ContactId = contactObjId,
            ProfileId = portalProfile.Id,
            Alias = 'test123',
            Email = 'test1234567@adaptiveinsights.com',
            EmailEncodingKey = 'UTF-8',
            LastName = 'McTesty',
            CommunityNickname = 'test12345',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            LanguageLocaleKey = 'en_US'
            //UserRoleId = portalRole1.id
        );
        usrObjList.add(user1);
        insert usrObjList;
        return usrObjList;
    }
    
    
    
    /**@@
    #DESCRIPTION     : Creating test contact records with various lifecycles
    #Paramaters        : String, Id, String, Integer
    @@**/
    public Static List<Contact> createContactLifecycleTestRecords(String ContactLastName, Id accObjId, String Lifecycle, Integer totalContacts){
        Id devRecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Partner').getRecordTypeId();
        List<contact> contactList = new List<Contact>();
        for(Integer i=0;i<totalContacts;i++){ // T/R: DataFactory should be creating generic data that the test class will be using to manipulate
            Contact testContact = new Contact(FirstName='TestFName',
                                              LastName = ContactLastName+i,
                                              Email ='unit'+i+'@test.com',
                                              AccountId = accObjId,
                                              Phone='1234567890', 
                                              Lifecycle_Stage__c = Lifecycle,
                                              Status__c = 'New',
                                              HubSpot_Lead_Score__c = 33,
                                              Eloqua_Lead_Score__c = 'D3',
                                              recordTypeId = devRecordTypeId);
            contactList.add(testContact);
        }
        insert contactList;
        return contactList;
    }//END OF CONTACT INSERT
    
    
    /**@@
    #DESCRIPTION     : Creating test Campaign records
    #Paramaters        : campaign name, status ,total count.
    @@**/
    public static List<Campaign>  createCampaignWithStatus(string campaignName,String campaignStatus,integer totalCount){ 
        List<Campaign> campaignList = new List<Campaign> ();
        date mydate = date.parse('05/11/2012');
        for(integer i=0;i<totalCount;i++){
            Campaign newCampaign = new Campaign (
                Name =campaignName+i ,
                Campaign_Type_Reportng__c = 'Roadshow',
                IsActive = TRUE,
                Dynamic_Content_Created__c=true,
                HS_Workflow_Created__c=true ,
                Email_Invite_1_Created__c=true,
                Emails_2_3_Created__c=true,
                ICS_File_Created__c=true,
                Partner_HTML_Sent__c=true,
                Segment_Created__c=true,
                Status=campaignStatus,
                Shared_List_Created__c=true,
                Startdate=mydate);   
            campaignList.add(newCampaign);              
        }//End of for
        insert campaignList;
        return campaignList;
    }//End of method
    
    /**@@
    #DESCRIPTION     : Creating test CampaignMemberStatus records
    #Paramaters        : campaign id, total count.
    @@**/
    public static List<CampaignMemberStatus>  createCampaignMemberStatusTestRecord(Id campaignID,integer totalCount){ 
        List<CampaignMemberStatus> CMSList = new List<CampaignMemberStatus> ();
        for(integer i=0;i<totalCount;i++){
            CampaignMemberStatus testCampaignMemberStatus= new CampaignMemberStatus(
                CampaignId=campaignID,
                HasResponded=true, 
                Label='Responded',
                SortOrder=2); 
            CMSList.add(testCampaignMemberStatus);                     
        }//End of for
        insert CMSList;
        return CMSList;
    }//End of method
    
    
    //related to SOZO-386
    
    /**@@
    #DESCRIPTION     : Creating dupblocker scenario records
    #Paramaters        : scenario name, scenario type, createTask
    @@**/
    
    public Static CRMfusionDBR101__Scenario__c createdBCTestRecords(String dBCName, String scType, String createTask){
        
        CRMfusionDBR101__Scenario__c dBCObj = new CRMfusionDBR101__Scenario__c(Name= dBCName, CRMfusionDBR101__Scenario_Type__c = scType , CRMfusionDBR101__Deployed__c = True, CRMfusionDBR101__Create_Task__c = createTask, CRMfusionDBR101__Match_on_Insert_Action__c = 'Do Nothing', CRMfusionDBR101__Match_on_Update_Action__c = 'Do Nothing');
        
        insert dBCObj;
        return dBCObj;
        
    }//END OF  INSERT
    
    
    /**@@
    #DESCRIPTION     : Creating dupblocker scenario rule records
    #Paramaters      : matching field name, scenario type record id, scenario type
    @@**/
    
    public Static CRMfusionDBR101__Scenario_Rule__c createDBCRule(String lorCmatchField, Id dBCID, String strScenarioType){
        
        
        CRMfusionDBR101__Scenario_Rule__c dBCRuleObj = new CRMfusionDBR101__Scenario_Rule__c(CRMfusionDBR101__Scenario__c = dBCID, CRMfusionDBR101__Field_Name__c = lorCmatchField ,CRMfusionDBR101__English_Fuzzy__c = True, CRMfusionDBR101__AlphaClean__c = True, CRMfusionDBR101__Transpose__c = True, CRMfusionDBR101__Scenario_Type__c = strScenarioType);
        
        insert dBCRuleObj;
        return dBCRuleObj;
    }//END OF  INSERT
    
    /**@@
    #DESCRIPTION     : Creating dupblocker scenario rule records
    #Paramaters      : matching field name, scenario type record id, related field API name, related field Label name, scenario type
    @@**/
    
    public Static CRMfusionDBR101__Scenario_Rule__c createDBCRuleforLeadRelatedObject(String lMatchField, Id dBCID, String relatedAPIName, String relatedlabel, String strScenarioType){
        
        
        CRMfusionDBR101__Scenario_Rule__c dBCRuleObj = new CRMfusionDBR101__Scenario_Rule__c(CRMfusionDBR101__Scenario__c = dBCID, CRMfusionDBR101__Field_Name__c = lMatchField ,CRMfusionDBR101__Related_Field_Name__c  = relatedAPIName, CRMfusionDBR101__Related_Field_Display_Value__c = relatedlabel,  CRMfusionDBR101__English_Fuzzy__c = True, CRMfusionDBR101__AlphaClean__c = True, CRMfusionDBR101__Transpose__c = True, CRMfusionDBR101__Scenario_Type__c = strScenarioType);
        
        insert dBCRuleObj;
        return dBCRuleObj;
    }//END OF  INSERT
    
    /**@@
    #DESCRIPTION     : Creating dupblocker scenario custom setting records
    #Paramaters      : Lead to Account Dupblocker scenario record Lists
    @@**/
    
    public static DupeBlocker_Scenarios__c CreateDScenariosCustomSetting(List<CRMfusionDBR101__Scenario__c> lstScenarios){
        DupeBlocker_Scenarios__c objDS = new DupeBlocker_Scenarios__c();
        objDS.Name = 'Matching Rule Records';
        for(CRMfusionDBR101__Scenario__c sc: lstScenarios){
            if(sc.CRMfusionDBR101__Scenario_Type__c == 'Lead'){      
                if(objDS.Lead__c != null){      
                    objDS.Lead__c += sc.id + ';';
                }else{
                    objDS.Lead__c = sc.id + ';';
                }
            }else if(sc.CRMfusionDBR101__Scenario_Type__c == 'Lead to Account'){
                if(objDS.Lead_to_Account__c != null){          
                    objDS.Lead_to_Account__c += sc.id + ';';
                }else{
                    objDS.Lead_to_Account__c = sc.id + ';';
                }
            }else if(sc.CRMfusionDBR101__Scenario_Type__c == 'Lead to Contact'){
                if(objDS.Lead_to_Contact__c != null){        
                    objDS.Lead_to_Contact__c += sc.id + ';';
                }else{
                    objDS.Lead_to_Contact__c = sc.id + ';';
                }
            }           
        }
        insert objDS;
        return objDS;
    } 
    
    /**@@
    #DESCRIPTION     : Creating task test record
    #Paramaters      : 
    @@**/
    
    public static list<Task> createTaskTestRecordswithEloqua( string testwhoid,string testOwnerid, integer totalCount){
        List<task> tsk =new List<task>();
       
        //List<User> userList = Datafactory.createUserTestRecords('TestUser', 1);
        List<User> userList = [SELECT id from User where id =:Label.ELOQUA_USER_SF_ID];
        system.runAs(userList[0]){
            
            for(integer i=0;i<totalCount;i++)
            {
                Task t = new Task(OwnerId = testOwnerid,
                                  Whoid=testwhoid,
                                  Subject='testsubject',
                                  Status='Completed', 
                                  Priority='Normal' 
                                  );
                                  tsk.add(t);
            }
            insert tsk;
        }
        return tsk;
    }
   
    
     /**@@
    #DESCRIPTION     : Creating task test record with whoid 
    #Paramaters      : 
    @@**/
    
    public static list<Task> createTaskTestRecords( string testwhoid,string testOwnerid, integer totalCount){
        List<task> tsk =new List<task>();
        //List<User> userList = Datafactory.createUserTestRecords('TestUser', 1);
        List<User> userList = [SELECT id from User where id =:Label.ELOQUA_USER_SF_ID];
         List<Opportunity> oppList = [SELECT id from Opportunity limit 1];
            
            for(integer i=0;i<totalCount;i++)
            {
                Task t = new Task(OwnerId = testOwnerid,
                                  whoid = testwhoid,
                                  Subject='testsubject',
                                  Status='Completed', 
                                  Priority='Normal' 
                                  );
                                  tsk.add(t);
            }
            insert tsk;
        
        return tsk;
    }
    /**@@
    #DESCRIPTION     : Creating Feed Item test record
    #Paramaters      : Lead id, Count
    @@**/ 
     public static List<FeedItem> createFeedItem(String leadId,integer totalCount){
     List<FeedItem> lstFeedItem = new List<FeedItem> ();
     for(integer i=0;i<totalCount;i++)
        {
               FeedItem fi = new FeedItem ();
                    
                fi.Body='test body';
                fi.Title='test title';
                fi.ParentId=leadId;
                lstFeedItem.add(fi);
               
        }//End Of For
                 insert lstFeedItem;
                 return lstFeedItem;
     }//End Of Method
    
    /**@@
    #DESCRIPTION     : Creating feed Comment record
    #Paramaters      : Feedid,count
    @@**/
     public static List<FeedComment> createFeedComment(String feedId,integer totalCount){
     List<FeedComment> lstFeedComment = new List<FeedComment> ();
     for(integer i=0;i<totalCount;i++)
        {
             FeedComment f=new FeedComment();
             f.CommentBody='test comment';
             f.FeedItemId = feedId;   
             lstFeedComment.add(f);
               
        }//End Of For
                 insert lstFeedComment;
                 return lstFeedComment;
     }//End Of Method
     
     /**@@
    #DESCRIPTION     : Creating SBQQ Quote record
    #Paramaters      : Feedid,count
    @@**/
     public static List<SBQQ__Quote__c> createSBQQQuote(String accountId, String opportunityId, String pricebookId,integer totalCount){
         List<SBQQ__Quote__c> lstSBQQQuoteInsert = new List<SBQQ__Quote__c>();
         for(integer i=0;i<totalCount;i++){
             SBQQ__Quote__c testQuote = new SBQQ__Quote__c(
                SBQQ__Opportunity2__c = opportunityId,
                SBQQ__PriceBook__c = pricebookId,
                SBQQ__Account__c = accountId,
                SBQQ__Type__c = 'Quote',
                SBQQ__Primary__c = true,
                SBQQ__SubscriptionTerm__c = 12,
                Term_Years__c = '1',
                Quote_Term_Length__c = 2,
                SBQQ__StartDate__c = Date.Today() );
                lstSBQQQuoteInsert.add(testQuote);
            }
        insert lstSBQQQuoteInsert;
        return lstSBQQQuoteInsert;
        
        
     }//End Of Method
    
    /**@@
    #DESCRIPTION     : Creating Booking Detail record
    #Paramaters      : Opportunity,order,count
    @@**/
    public static List<Booking_Detail__c> createBookingDetail(Opportunity opp, order ord,integer totalCount){
        List<Booking_Detail__c> lstBookingDetailInsert = new List<Booking_Detail__c>();
         for(integer i=0;i<totalCount;i++){
         Booking_Detail__c newbd = new Booking_Detail__c(Opportunity__c =opp.id, Order__c = ord.id);
         lstBookingDetailInsert.add(newbd);
         }
        insert lstBookingDetailInsert;
        return lstBookingDetailInsert;
        
    }
    
  /**@@
    #DESCRIPTION     : Creating QuoteTemplate record
    #Paramaters      : String, Integer
    @@**/  
    public static List<SBQQ__QuoteTemplate__c> createQuoteTemplateRecord(String name, Integer count){
        List<SBQQ__QuoteTemplate__c> lstQuoteTemplate = new List<SBQQ__QuoteTemplate__c>();
        for(integer i=0; i<count; i++){
            SBQQ__QuoteTemplate__c quoteTempObj = new SBQQ__QuoteTemplate__c(Name = name+i);
            lstQuoteTemplate.add(quoteTempObj);
        }
        insert lstQuoteTemplate;
        return lstQuoteTemplate;
    }
    
    /**@@
    #DESCRIPTION     : Creating QuoteDocument record
    #Paramaters      : String, Integer
    @@**/  
    public static List<SBQQ__QuoteDocument__c> createQuoteDocumentRecord(String QuoteDocName, Id quoteTemplateId, Id QuoteObjId, Id OppObjId, Integer count){
        List<SBQQ__QuoteDocument__c> lstQuoteDocument = new List<SBQQ__QuoteDocument__c>();
        for(integer i=0;i<count;i++){
            SBQQ__QuoteDocument__c quoteDocObj = new SBQQ__QuoteDocument__c(Name = QuoteDocName+i, SBQQ__QuoteTemplate__c = quoteTemplateId,
                                                                            SBQQ__Quote__c = QuoteObjId, SBQQ__Opportunity__c = OppObjId
                                                                            );
            
            lstQuoteDocument.add(quoteDocObj);
        }
        insert lstQuoteDocument;
        return lstQuoteDocument;
    }
    
    /**@@
    #DESCRIPTION     : Creating test user records with Role
    #Paramaters      : String, Integer.
    @@**/
    public Static List<User> createUserTestRecordsWithRole(String userLastName,Integer totalUsers){
        Profile p = [SELECT Id FROM Profile WHERE Name='System Administrator'];
        
        List<UserRole> usrRole = [SELECT id,Name FROM UserRole WHERE Name = 'CEO' LIMIT 1];
        
        List<User> userList = new List<User>();
        
        String orgId = UserInfo.getOrganizationId();
        String dateString = String.valueof(Datetime.now()).replace(' ','').replace(':','').replace('-','');
        Integer randomInt = Integer.valueOf(math.rint(math.random()*1000000));
        String uniqueName = orgId + dateString + randomInt;
        
        for(Integer i=0;i<totalUsers;i++){
            User testUser = new User(Alias = 'standt'+i, 
                                     Email='standardusr'+i+'@adaptiveinsights.com', 
                                     EmailEncodingKey='UTF-8', 
                                     LastName=userLastName, 
                                     LanguageLocaleKey='en_US', 
                                     LocaleSidKey='en_US',
                                     ProfileId = p.Id, 
                                     Role__c = 'SDR',
                                     UserRoleId = usrRole[0].id,
                                     TimeZoneSidKey='America/Los_Angeles', 
                                     UserName=uniqueName +i+ '@test' + orgId + '.org');
            userList.add(testUser);
        }
        
        insert userList;
     
        return userList;
        
    }//END OF USER INSERT
    
     /**@@
    #DESCRIPTION     : Creating test user records with Role
    #Paramaters      : String, Integer.
    @@**/
    public Static void createBusinessDays(){
        Businessdays__c customSettingObj = Businessdays__c.getOrgDefaults();    
        if(customSettingObj.Contact_Business_Days__c > 0){  
            return;
        }
        customSettingObj=Businessdays__c.getOrgDefaults();
        customSettingObj.Contact_Business_Days__c=2;
        customSettingObj.Lead_Business_Days__c=2;
        customSettingObj.Opportunity_15_Days__c =15;
        customSettingObj.Opportunity_7_Days__c=7;
        upsert customSettingObj;
        
     
        
    }//END OF USER INSER
    
    
    /**@@
    #DESCRIPTION     : Creating test opportunity records 
    #Paramaters      : String, Integer.
    @@**/
    public Static List<Opportunity> createOpportunityTestRecordsWithoutUserInsert(String opportunityName, Integer totalOpportunities,List<Account> AccountList,List<Contact> conList){
        
        List<Opportunity> opportunityList = new List<Opportunity>();
        ID pricebookId = Test.getStandardPricebookId();
       // List<Contract> lstContract= createContractTestRecords(1);
        //List<Account> accList = createAccountTestRecords('TestaccName',1);
        //List<Contact> conList = createContactTestRecords('Test',accList[0].id,1);
        for(Integer i=0;i<totalOpportunities;i++){            
            Opportunity testOpportunity = new Opportunity(Name='Test Opportunity4',
                                                          AccountId=AccountList[0].Id,
                                                          Primary_Contact__c = conList[0].ID,                     
                                                          StageName='New',
                                                          Pricebook2Id=pricebookId,
                                                          CloseDate=Date.Today().AddDays(90),
                                                          Special_Terms__c = 'TestInternal Notes',
                                                          SBQQ__Contracted__c = false,
                                                          Closed_Reasons__c = 'Other',
                                                          Type='New',
                                                          Is_Installment_Opportunity__c=false,
                                                          CurrencyIsoCode='USD',
                                                          NextStep = 'Raw',
                                                          Partner_Account__c = AccountList[0].id,
                                                          CRM_Other__c = 'test Crm',
                                                          CRM_System__c = 'NetSuite',
                                                          Competition__c = 'Board',
                                                            ERP_System__c = 'Abila',
                                                            Fiscal_Year_End__c = 'Jan',
                                                            HR_System_Other__c = 'test hr',
                                                            HR_System__c = 'Ceridian',
                                                            Incumbent_Budgeting_Tool__c = 'Anaplan',
                                                            Other_ERP__c = 'other',
                                                            Partner_Fee__c = false,
                                                            Reason_for_change_Pain_Points__c ='test pain reason',
                                                           Referral_Follow_Up__c =   'Partner',                  
                                                            Time_Frame__c = 'No Time Frame',
                                                            Order_Type__c = 'Renewal'
                                                         );
            opportunityList.add(testOpportunity);
        }
        insert opportunityList;
        return opportunityList;
    }//END OF OPPORTUNITY INSERT
    
    /**@@
    #DESCRIPTION     : Creating test Task records for Contact/Lead
	#Parameters		 : OwnerId, ContactOrLeadId, No. of tasks per Lead/contact
    @@**/
    //  Test Records for List of Task Object
    public Static List<Task> createTaskTestRecordsNew(id OwnerId, id ContactOrLeadId, integer noOfTasks){
		
		List<Task> taskList = new List<Task>();
		for(Integer i = 0; i < noOfTasks; i++){
			Task t = new Task();
			t.OwnerId = OwnerId;
			t.Subject='TestSubject'+i;
			t.Status='Not Started';
			t.Priority='Normal';
			t.WhoId = ContactOrLeadId;
			taskList.add(t);
		}
        insert taskList;
        return taskList;
    }//END OF Task INSERT
	
	/**@@
    #DESCRIPTION     : Creating test Event records for Contact/Lead
	#Parameters		 : OwnerId, ContactOrLeadId, No. of tasks per Lead/contact
    @@**/
    //  Test Records for List of Event Object
    public Static List<Event> createEventTestRecords(id OwnerId, id ContactOrLeadId, integer noOfEvents){
		
		List<Event> EventList = new List<Event>();
		for(Integer i = 0; i < noOfEvents; i++){
			Event e = new Event();
			e.OwnerId = OwnerId;
			e.Subject='TestSubject'+i;
			e.WhoId = ContactOrLeadId;
			e.DurationInMinutes = 10;
			e.ActivityDateTime = System.now();
			EventList.add(e);
		}
        insert EventList;
        return EventList;
    }//END OF Event INSERT
    
}//END OF CLASS