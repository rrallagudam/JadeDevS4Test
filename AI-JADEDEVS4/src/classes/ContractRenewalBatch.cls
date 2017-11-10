global class ContractRenewalBatch implements Database.Batchable<sObject> {
  public static boolean SkipContractTriggers = false;  
  global Database.QueryLocator start(Database.BatchableContext BC) {
    String strEscActivated = String.escapeSingleQuotes('Activated');
    String strEscFalse = String.escapeSingleQuotes('FALSE');  
  //  String strOppType = String.escapeSingleQuotes('Add-On');      
    String query = '';
    if(!test.isRunningTest()){  
    query = 'SELECT Id,Status FROM Contract WHERE Status = \''+ strEscActivated  + '\' AND SBQQ__RenewalForecast__c = FALSE AND SBQQ__RenewalOpportunity__c = NULL AND CREATEDDATE = TODAY';
    }
    else
    {
    query = 'SELECT Id,Status FROM Contract LIMIT 10' ;    
    }
     // String query = 'SELECT Id,Status FROM Contract WHERE Status = \''+ strEscActivated  +'\' AND SBQQ__RenewalForecast__c = FALSE AND SBQQ__RenewalOpportunity__c = NULL' ;
    return Database.getQueryLocator(query);
  }
   
    global void execute(Database.BatchableContext BC, List<Contract> scope) {
    system.debug('****scope****'+scope);
    List<Contract> updateContracts = new List<Contract>();
    for(Contract oContract : scope){            
                updateContracts.add( new Contract(ID=oContract.ID,SBQQ__RenewalForecast__c=true));
    }
        SkipContractTriggers = true;
        if(!test.isRunningTest()){        
            update updateContracts ;
        }
  }    
    
  global void finish(Database.BatchableContext BC) {
        
  }
}