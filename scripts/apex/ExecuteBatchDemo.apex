AccountUpdateBatch accBatch = new AccountUpdateBatch();
Id accBatchId = Database.executeBatch(accBatch,20);
System.debug('acc Batch ID = '+ accBatchID);




 