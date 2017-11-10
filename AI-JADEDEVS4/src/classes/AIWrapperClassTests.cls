@IsTest
public class AIWrapperClassTests {

    @TestSetup static void init() {
        TestData.setup();
    }
    
    @IsTest public static void basicTests(){        
        TestData data = new TestData();
                
        data.TestQuote.Term_Years__c = '3';
        data.TestQuote.SBQQ__SubscriptionTerm__c = 36;
        data.TestQuote.Is_Multi_Year__c = True;
        update data.TestQuote;
        data.TestOpportunity = (Opportunity) SObjectUtils.get('Opportunity', data.TestOpportunity.Id);      
        System.assertEquals(3, data.TestOpportunity.Term_Years__c);
        System.assert( data.TestOpportunity.Roll_Up_Subscription_Revenue__c > 0);
        System.assert( data.TestOpportunity.SBQQ__PrimaryQuote__c != null);
        
        AIOpportunity oppty = new AIOpportunity().withSObject(data.TestOpportunity);
        System.assertEquals(data.TestOpportunity.Id, oppty.Id);
        System.assert(oppty.LineItems.size() > 0);
        oppty = new AIOpportunity().withId(data.TestOpportunity.Id);
        System.assertEquals(data.TestOpportunity.Id, oppty.Id);
        System.assert(oppty.LineItems.size() > 0);
        
        oppty.clearErrors();
        System.assertEquals(false, oppty.hasErrors());        
        
        List<OpportunityLineItem> items = oppty.LineItems.values();
        AIOpportunityLineItem lineItem = new AIOpportunityLineItem().withSObject(items[0] );
        System.assert(lineItem != null);
        lineItem = new AIOpportunityLineItem().withId(items[0].Id);
        System.assert(lineItem != null);
        
        OpportunityOrderConversionAction.convertToOrder(new List<Opportunity>{ data.TestOpportunity});
        Id orderId = [SELECT Id FROM Order][0].Id;
        AIOrder order = new AIOrder().withId(orderId);
        System.assert(order != null);
        System.assert(order.OrderItems.size() > 0);
        System.assert( order.Id == orderId );
        System.assert( order.record.Id == orderId );
        order = new AIOrder().withSObject(order.record);
        System.assert(order != null);
        
        List<OrderItem> oitems = order.OrderItems.values();
        AIOrderItem orderItem = new AIOrderItem().withSObject( oitems[0] );
        System.assert( orderItem != null );
        orderItem = new AIOrderItem().withId( oitems[0].Id );
        System.assert( orderItem != null );
        
        Booking_Detail__c detail = new Booking_Detail__c();
        detail.Opportunity__c = data.TestOpportunity.Id;
        detail.Order__c = orderId;
        insert detail;
        AIBookingDetail bookingDetail = new AIBookingDetail().withSObject(detail);
        System.assert(bookingDetail != null);
        bookingDetail = new AIBookingDetail().withId(detail.Id);
        System.assert(bookingDetail != null);
        
        List<Installment__c> testInstallments = new List<Installment__c>();
        for(Integer i=0; i<3; i++){
            Installment__c iRecord = new Installment__c();
            iRecord.Quote__c = data.TestQuote.Id;
            iRecord.Payment_Due_Amount__c = 1000.00;
            iRecord.Payment_Due_Date__c = Date.today().addYears(i+1);
            testInstallments.add(iRecord);
        }
        insert testInstallments;
        
        AIInstallment installment = new AIInstallment().withSObject(testInstallments[0]);
        System.assert( installment != null );
        installment = new AIInstallment().withId(testInstallments[0].Id);
        System.assert( installment != null );
        
        SBQuote quote = new SBQuote().withSObject(data.TestQuote);
        System.assertEquals(3, quote.Installments.size());
    }
}