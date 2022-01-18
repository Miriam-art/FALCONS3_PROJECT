public with sharing class SoqlSampleDemo3{
    public static void simpleParentTochild(){
        account acc = [select id, name
                       from Account
                       where id = '0015j000003FoJl'];
        system.debug('account id = ' + acc.id);

        List<Contact> listContact = [select firstname, lastname
                                     from Contact
                                     where account.id = :acc.Id];

        for (contact eachCnt : listcontact){
            system.debug(eachCnt);
        }
    }

    public static void simpleParentTochild2(){
        List<account> listAcc = [select id, name
                                 from Account
                                 limit 10];

        list<id> listAccID = new list<id>();
        for (account eachAcc : listAcc){
            listAccId.add(eachAcc.Id);
        }

        List<Contact> listContact = [select firstname, lastname
                                     from contact
                                     where account.id in :listAccID];

        for (contact eachCnt : listcontact){
            system.debug(eachCnt);
        }
    }

    //actual parent to child query
    public static void accountParentToChild3(){
        List<Account> listAccount = [SELECT id, name, phone, (SELECT id, lastName
                                                              FROM Contacts)
                                     FROM Account];
        system.debug(listAccount);
        //for each loop on? account
        for (account eachAccount : listAccount){
            system.debug('eachAccount = ' + eachAccount);
            List<contact> listContacts = eachAccount.contacts;
            //for each loop on listContacts
            for (contact eachContact : listContacts){
                system.debug('acc=  ' + eachAccount.Name + ', contact listname=  ' + eachContact.lastName);

            }
        }
    }

    public static void accountAndOpp(){
        list<account> listAccount = [SELECT name, annualrevenue, (SELECT name, amount
                                                                  from Opportunities
                                                                  where Stagename = 'Closed Won')
                                     from account
                                     where type = 'Customer - Direct'];
        for (account acc : listAccount){
            decimal totalAmount = 0;
            List<Opportunity> listOpp = acc.Opportunities;
            for (opportunity opp : listOpp){
                system.debug('Opp name =  ' + opp.name);
                system.debug('Opp amount = ' + opp.Amount);
                totalAmount += totalAmount + opp.amount;

            }
            system.debug('Acc name ' + acc.name + ' Total opp Amount ' + totalAmount);

        }
    }
}