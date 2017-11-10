/**@@
#CLASS NAME  	:   OpportunitySignedReminderSchedular_Test
#DESCRIPTION    :   This is a test class for OpportunitySignedReminderSchedular Apex class.
@@**/
@isTest
public class OpportunitySignedReminderSchedular_Test 
{
    /**@@
    #DESCRIPTION     : This is a test method used to create test data for OpportunitySignedReminderSchedular Apex class.
    #Paramaters      : None
    @@**/
    static testMethod void myTestMethod()
    {
        Test.StartTest();
        OpportunitySignedReminderSchedular osc= new OpportunitySignedReminderSchedular();
        String cronStr = '0 59 * * * ?';
        System.schedule('Remainder signed Opportunity Batch', cronStr, osc); 
        Test.stopTest();
        
    }
    
}