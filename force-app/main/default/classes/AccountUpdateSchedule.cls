public with sharing class AccountUpdateSchedule implements Schedulable{
    public void execute(SchedulableContext sc){
        AccountUpdateBatch accBatch = new AccountUpdateBatch();
        Id accBatchID = Database.executeBatch(accBatch,20);
        //Database.executeBatch(accBatch,20); another way writing this line
        //call anything here
        System.debug('its midnight');
    }
}