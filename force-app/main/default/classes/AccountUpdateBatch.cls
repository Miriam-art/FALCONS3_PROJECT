public  class AccountUpdateBatch implements DataBase.Batchable <SObject>,DataBase.Stateful { //, DataBase.Stateful
public integer recordProcessed = 0;
public integer numberOfTimeExecuteRuns = 0;

   public List<Account> start(Database.BatchableContext bc){
       return [select id, name, site from Account ];//where site = Null
   }

//update site to 'www.softinnovas.com' for all counts
public void execute(Database.BatchableContext bc, List<Account> scopeAccount){
    for(Account eachAcc: scopeAccount){
        eachAcc.Site = 'www.softinnovas.com';

    }
    update scopeAccount;
    numberOfTimeExecuteRuns++;
    recordProcessed = recordProcessed + scopeAccount.size();
    System.debug('In execute = recordProcessed->'+ recordProcessed);
    System.debug('NumberOfTimesExecutes in execute = '+numberOfTimeExecuteRuns);
}

public void finish (Database.BatchableContext bc){
    System.debug('Finish method called. Fin.');
    System.debug('Total records processed = '+ recordProcessed);
    System.debug('NumberOfTimesExecutes = '+ numberOfTimeExecuteRuns);
}

//can we write a method called below 'execute?' NO
// public void execute ()
// }
}