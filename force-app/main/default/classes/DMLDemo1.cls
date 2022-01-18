public with sharing class DMLDemo1{
    public static void dmlInsertDemo_stndObj(){

        //1. instance
        Account acc = new Account();

        //2 set firlds
        acc.Name = 'Softinnovas';
        //3 set any other fields

        acc.AccountNumber = 'Yes';
        acc.Active__c = 'Yes';

        //4th and the final step  is DML
        insert acc;
    }

    public static void dmlInsertDemo_cstmObj(){
        Support_Ticket__c ticket = new Support_Ticket__c();
        ticket.Email__c = 'abc@gmail.com';
        ticket.Phone__c = '234394830';

        system.debug('before insert ticket ' + ticket);
        insert ticket;
        system.debug('after insert ticket ' + ticket);
    }

    public static void dmlInsertDemo1_stndObj(){

        //1. instance
        Account acc = new Account();

        //2 set firlds
        acc.Name = 'Softinnovas';

        //3 set any other fields
        acc.AccountNumber = 'FALCONS99';
        acc.Active__c = 'Yes';

        //4th and the final step  is DML
        insert acc;
        System.debug('After insert acc  = ' + acc);

        acc.Name = 'Salesforse Inc.';
        acc.AccountNumber = 'sfdc101';

        // update DML
        update acc;
        System.debug('After update ' + acc);
    }

public static void dmlUpdateDemo3(){
    //1.soql
    account acc = [select id, name, accountNumber from account where id = '0015e00000HxiLdAAJ'];

    //2.update fields
    acc.Name = 'Softinnovas Inc.';
    acc.AccountNumber = 'Falcons 999';
    //acc.active__c = 'No'; //will not WORK.Bcz not in SOQL!

    //3.DML
    update acc;
    System.debug('After update '+ acc);

}
public static void dmlUpdateDemo2(){
    //1. return any 1 account using soql
    account acc = [select id, name from account where id = '0015e00000HxiLdAAJ'];

    //2. create contact instance
    contact cnt = new contact();
    cnt.LastName = 'Holy';

    //3.set the relationship fields
    cnt.accountId = acc.id;

    //4. final step ....DMLDemo1
    insert cnt;
    System.debug('After update '+ acc);
}


}