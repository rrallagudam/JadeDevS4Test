@isTest
 private class OpportunityActivities_Test{
    
    static testMethod void myTestMethod() {
        //Test.startTest();
            Account oacc = new Account(Name= 'Test Account', Status__c='Active');
        insert oacc;
         
        Contact ocon = new Contact(FirstName='FName',
                        LastName='LName',
                        Email='unit@test.com',
                        AccountId=oacc.Id);
            insert ocon; 
            Test.startTest();
            list<Opportunity> lstOpps=new list<Opportunity>();
                                      
                lstOpps.add(new Opportunity(Name='Test Opportunity2',                
                AccountId=oacc.Id,
                Primary_Contact__c = ocon.ID,                     
                StageName='Commitment & Negotiation',
                //Pricebook2Id=pricebookId,
                CloseDate=Date.Today().AddDays(90),
                SBQQ__Contracted__c = false,
                Closed_Reasons__c = 'Other',
                Type = 'New Business'));
               
              insert lstOpps;

            
            Task lstTasks = new Task(Subject = 'Test Task',ActivityDate = system.today().addDays(30),WhatId= lstOpps[0].Id,Status = 'Completed');
                                   
            insert lstTasks;  
              
            OpportunityActivities obj = new OpportunityActivities();
            obj.ExportToExcel();
            system.assertEquals(obj.lstOpp.size(),1);
        Test.stopTest();
    }
}