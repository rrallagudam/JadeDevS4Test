@IsTest
public class InternalHelpDeskController_Tests{

    @IsTest public static void defaultContentTests(){
        InternalHelpDeskController ctrl = new InternalHelpDeskController();
        System.assertEquals('', ctrl.getPageContent() );   
        
        Content__c page = new Content__c();
        page.Name = 'Support Page';
        page.Body__c = 'Test body';
        insert page;
        
        System.assertEquals('Test body', ctrl.getPageContent() );
    }
}