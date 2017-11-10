global class ContractRenewalBatchScheduled Implements Schedulable
{
   global void execute(SchedulableContext sc)
   {
               Id batchJobId = Database.executeBatch(new ContractRenewalBatch (), 1);
   }
}
/*
System.schedule('Schedule Job Name 1',  '0 00 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 2',  '0 05 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 3',  '0 10 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 4',  '0 15 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 5',  '0 20 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 6',  '0 25 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 7',  '0 30 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 8',  '0 35 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 9',  '0 40 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 10', '0 45 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 11', '0 50 * * * ?', new ScheduleBatchApexClassExample());
System.schedule('Schedule Job Name 12', '0 55 * * * ?', new ScheduleBatchApexClassExample());
--------
System.schedule('Schedule Job ContractRenewalBatchScheduled  0 min',  '0 00 * * * ?', new ContractRenewalBatchScheduled ());
System.schedule('Schedule Job ContractRenewalBatchScheduled  15 min',  '0 15 * * * ?', new ContractRenewalBatchScheduled ());
System.schedule('Schedule Job ContractRenewalBatchScheduled  30 min',  '0 30 * * * ?', new ContractRenewalBatchScheduled ());
System.schedule('Schedule Job ContractRenewalBatchScheduled 45 min', '0 45 * * * ?', new ContractRenewalBatchScheduled ());


*/