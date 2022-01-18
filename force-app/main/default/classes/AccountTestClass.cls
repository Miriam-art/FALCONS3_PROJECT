@isTest
public class AccountTestClass {
    
    @isTest static void createAccount(){
        Account acc = new Account();
        acc.name   = 'Holy Batch3';
        acc.Rating = 'Hot';
        acc.Type   = '';
        insert acc;
    }
}