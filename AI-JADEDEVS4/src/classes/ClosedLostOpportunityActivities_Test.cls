@isTest
 private class ClosedLostOpportunityActivities_Test{
    
    static testMethod void myTestMethod() {
        Test.startTest();
            Account a=new Account();
            a.Name='Test Account';
            insert a;
            
            Opportunity opp = new Opportunity();
            opp.Name='Test Opp';
            opp.StageName='Closed Lost';
            opp.AccountId=a.Id;
            opp.CloseDate=system.today();
            opp.Closed_Lost_Reasons__c='test reason';
            insert opp;
            
            list<Task> lstTasks = new list<Task>();
            
            Task objTask = new Task();
            objTask.Subject = 'Test Task';
            objTask.ActivityDate = system.today().addDays(30);
            objTask.WhatId= opp.Id;
            objTask.Status = 'Completed';
            objTask.Type='Pre-sales';
            objTask.Pre_Sales_Activity__c='1st demo';
            lstTasks.add(objTask);                    
            
            Task objTask1 = new Task();
            objTask1.Subject = 'Test Task';
            objTask1.ActivityDate = system.today().addDays(20);
            objTask1.WhatId= a.Id;
            objTask1.Status = 'Completed';
            objTask1.Type='Pre-sales';
            objTask1.Pre_Sales_Activity__c='1st demo';
            lstTasks.add(objTask1);
            
            Task objTask2 = new Task();
            objTask2.Subject = 'Test Task';
            objTask2.ActivityDate = system.today().addDays(20);
            objTask2.WhatId= a.Id;
            objTask2.Status = 'Completed';
            objTask2.Type='Pre-sales';
            objTask2.Pre_Sales_Activity__c='1st demo';
            lstTasks.add(objTask2);
            insert lstTasks;
            
            ClosedLostOpportunityActivities obj = new ClosedLostOpportunityActivities();
            system.assertEquals(obj.lstOpp.size(),3);
            obj.ExportToExcel();
            
        Test.stopTest();
    }
}