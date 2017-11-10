@IsTest
public class QuoteExtController_Tests {

  @TestSetup static void init() {
    TestData.setup();
  }
  
  @IsTest public static void basicTests(){
    TestData data = new TestData();
            
    SBAA__Approval__c a = new SBAA__Approval__c();
    a.sbaa__ApprovalStep__c = 1;
    a.sbaa__RecordField__c = 'foo';
    a.Quote__c = data.TestQuote.Id;
    insert a;
        
    PageReference pageRef = Page.Submit_Quote;
    pageRef.getParameters().put('id', String.valueOf(a.Id));
    Test.setCurrentPage(pageRef);
                
    ApexPages.StandardController sc = new ApexPages.StandardController(a);
    QuoteExtController ctrl = new QuoteExtController(sc);
                               
    System.assert( ctrl.onSubmit() != null);
    System.assert( ctrl.onRecall() != null);
    System.assert( ctrl.onPreview() == null);
  }
}