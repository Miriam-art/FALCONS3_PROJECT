public class DmlMultipleRecordInsert_RightWay{
    
    public static void dmlMultipleRecordInsert_RIGHT1(){
        list<account> listAccount = new List<Account>();

        account acc = new Account();
        acc.Name = 'SoftInnovas1';
        acc.AccountNumber = 'ASCI-1';
        acc.active__c = 'Yes';
        listAccount.add(acc);


        for (Integer i = 0; i < 5; i++){
            account acc2 = new Account();
            acc2.Name = 'SoftInnovas Nov' + i;
            acc2.AccountNumber = 'ASCI-2' + i;
            acc2.active__c = 'Yes';

            listAccount.add(acc2);
            system.debug('just adding in list = ' + listAccount);
        }

        system.debug('size of list ' + listAccount.size());
        listAccount.isEmpty(); //returns true when list is empty

        // if(!listAccount.isEmpty())
        // insert listAccount;
    }

    public static void dmlMultipleRecordUpdate_right(){
        //soql
        List<Account> listAcc = [select id, name
                                 from account
                                 where name like 'SoftInnovas%'];
        System.debug('list size = ' + listAcc.size());

        List<account> updateAccounts = new List<Account>();

        for (Account acc : listAcc){
            acc.Name = acc.Name + ' update Bulk';
            updateAccounts.add(acc);

        }
        if (!updateAccounts.isEmpty())
            update updateAccounts;
    }

    //Delete Method
    public static void dmlMultipleRecordRecordDelete(){
        list<Account> listAccToDelete = [select id, name
                                         from Account
                                         where name like 'Soft%'];
        Delete listAccToDelete;

        //another way
        //Delete [select id, name from Account where name like 'Soft%'];
    }




public static void addMultipleBranchAstudent(){
    List <Branch__c> listBrch= new List <Branch__c>();
    for(Integer i =0; i<=10; i++){
        Branch__c brch  = new Branch__c();

        brch.Branch_Name__c = 'Create Trigger + '+i;
        brch.HOD_Phone__c = 'Just added NEW BRANCH + '+i;
        listBrch.add(brch);

    }
    insert listBrch;
}

}