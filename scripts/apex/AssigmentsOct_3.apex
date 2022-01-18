//AssigmentOct31.inactiveAccWithClosedWonOpp('Yes');



List<Account> retevireList = [select name from account order by name desc limit 5];
AssigmentOct31.createContact(retevireList);

//8.
List<Account> retevireList = [select name from account where id ='0015e00000MZaIPAA1']; // or you can write hard code like -->where active__c='No'
AssigmentOct31.createContactInactiveAcc(retevireList);