@isTest
public class samplesoqlDemo1Test{

    @istest
    static void testmethod1(){
        account acc = new account();
        acc.Name = 'test account';
        insert acc;
        sampleSoqlDemo1.sampleSoql1();
    }

    @istest
    static void testmethod2(){
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 100; i++){
            account acc = new account();
            acc.Name = 'test account - ' + i;
            listAcc.add(acc);
        }
        insert listAcc;
        sampleSoqlDemo1.sampleSoql1();
    }
}