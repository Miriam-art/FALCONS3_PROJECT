public with sharing class AssigmentOct31 {

//1.Define a method to create and return new Account record. Please pass all the required field values in this method.
    // public static void AssigmentsDML(string accName, string accPhone){
    //     account newAcc = new account (name = accName, phone = accPhone);
    //     insert newAcc;
    //     System.debug(newAcc);

    // }

    //2.Write another method which takes an Account record and create an opportunity for the same. Take any dummy values for opportunity required fields
// public static void AssigmentsDML2(Account acc){
// opportunity opp = new opportunity();
// opp.name = 'Monday';
// opp.Accountid = acc.id;
// opp.amount = 205;
// opp.CloseDate = '11/03/2021';
// opp.type = date.today();
// opp.type = 'New Customer';
// opp.StageName = 'Closed Won';
// insert opp;

// }
//3. Create new class, and one new method to create account, and one contact for that account. Set values for following field in account - name, account number, revenue, phone. Set values of following fields in contact - Salutation, first name, last name, phone, email, birthdate, LeadSource. Set all the values from class variables.


//6. Create a method which returns all the Inactive Accounts which have at least a Closed Won opportunity with amount more than 5000 tagged to them.

public static list<Account> inactiveAccWithClosedWonOpp(){  //(String activeType){
    List<Account> listAcc= [Select name, Active__c, (select stageName, Amount from Opportunities)from Account where Active__c ='No'];
List<Account> newAcc = new List<Account>();

for (account eachAcc : listAcc) {
    for (Opportunity eachOpp : eachAcc.opportunities) {

        if(eachOpp.StageName == 'Closed Won' && eachOpp.Amount>5000){
            newAcc.add(eachAcc);

        }
        
    }
    
}
system.debug(newAcc);
return newAcc;

}

//7. Write a parametrized method which just creates a contact for a particular account. Given that the parameter can of type List<Account> or only Account. Contact LastName should be populated with Account Name.

public static void createContact(List<Account> listAcc) {   //string FirstName) {
List<Contact> listContact = new List<Contact>();
for (Account eachAcc : listAcc) {
    Contact cnt = new Contact();
    cnt.AccountId= eachAcc.Id; //API ady Id
    cnt.LastName = eachAcc.Name; //Api ady Name
    //cnt.FirstName = fName;
    listContact.add(cnt);
    
}
insert listContact;
system.debug(listContact);
    
}

//8. Using methods creating in question 6 and question 7, try to create contacts for all the accounts returned by the method created for question 7.

public static void createContactInactiveAcc(List<Account> listAcc) {
    List<Account> accList = inactiveAccWithClosedWonOpp();

    createContact(accList);
    
}




    
}