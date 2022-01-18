public with sharing class NewClass {
   //I want to have a logic which will bring all the contacts(First Name, LastName, Deaprtment, Lead source, AccountId) 
//for a particular lead souce value.
    public static List<Contact> contactSearch(String ldSource){
        List<Contact> conList = [Select FirstName, LastName, Department, LeadSource, AccountId from Contact Where LeadSource = :ldSource];
        System.debug('conList   -->'+conList);
        return conList;        
    }


    public Static List<Account> listOfAccount(string industryType){
        list<Account> listAcc= [select id, name, industry from Account where industry = :industryType];
        return listAcc;
    }



    public Static List<Account> listOfAccountWithListParam(List<string> industryTypeList){
        list<Account> listAcc= [select id, name, industry from Account where industry = :industryTypeList];
        return listAcc;
    }


    public static List<Opportunity> listOfOpps(list<ID> accID){
        list<Opportunity> listOpp= [select id, Account.name from Opportunity where AccountId in :accID];
        //list<Opportunity> listOpp= [select id, Account.name from Opportunity where AccountId = :accID];
      
        system.debug('listOpp '+listOpp);
        
        return listOpp;
    }


    public static List<Opportunity> listOfOppswithListAccounts(list<Account> accList){

        list<Opportunity> listOpp= [select id, Account.name from Opportunity where AccountId in :accList];
      
        system.debug('listOpp '+listOpp);
        
        return listOpp;
    }
    /*Execute anonymous
    List<String> indList = new List<String>{'Banking', 'Apparel', 'Energy', 'Engineering'};
List<Account> accList = QnASessionClass.listOfAccountWithListParam(indList);
System.debug('accList   '+accList);
    */
}

//We are going pass List of Accounts and for these accounts we need list of opportunities.

/*Practice Questions:
1. Write a logic which will bring the List of Accounts for a particular Industry.

2. I want to have a logic which will bring all the contacts(First Name, LastName, Deaprtment, Lead source, AccountId) for a particular lead source value

3. Write a logic which will bring the List of Accounts for a particular Industry. It should work if i want to fetch accounts in a single list for multiple industries

4. Assume that we already have a list<Account> accountsList, then write a logic to fetch all the opportunities for the accounts which are there in accountsList.*/