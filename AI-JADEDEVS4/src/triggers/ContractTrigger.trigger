trigger ContractTrigger on Contract (after insert, after update) {
if(ContractRenewalBatch.SkipContractTriggers){return;}

  ContractTriggerHandler handler = new ContractTriggerHandler();

  if(Trigger.isInsert && Trigger.isAfter) {
    handler.OnAfterInsert(Trigger.new);

  } 
  if(Trigger.isUpdate && Trigger.isAfter) { 
    handler.OnAfterUpdate(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);

  }

}