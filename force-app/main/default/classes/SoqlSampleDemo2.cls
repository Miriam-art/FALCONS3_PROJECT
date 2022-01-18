public class SoqlSampleDemo2{
    public static void soqlChildToParent1(){
        //fetch contact name along with account name id accountNumber
        List<contact> contacts = [Select firstname, lastname, phone, account.name, account.accountnumber
                                  from contact];

        for (contact eachContact : contacts){
            system.debug(eachContact);
            //print contact lastname-->account name --> acc number
            System.debug('last name ' + eachContact.lastName + ', acc name ' + eachContact.account.Name);
            System.debug('account number -> ' + eachContact.account.AccountNumber);


        }
        system.debug('******contact size  '+ contacts.size());
    }



    public static void soqlChildToParent2(){
        //fetch contact name along with account name id accountNumber
        List<contact> contacts = [Select firstname, lastname, phone, account.name, account.accountnumber, account.Active__c
                                  from contact
                                  Where account.Active__c = 'Yes' and phone != null];

        for (contact eachContact : contacts){
            system.debug(eachContact);
            //print contact lastname-->account name --> acc number
            System.debug('last name ' + eachContact.lastName + ', acc name ' + eachContact.account.Name);
            System.debug('account number -> ' + eachContact.account.AccountNumber);


        }
        system.debug('*****contact size with active filet '+ contacts.size());
    }
}