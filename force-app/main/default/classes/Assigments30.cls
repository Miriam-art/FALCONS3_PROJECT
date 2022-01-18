public with sharing class Assigments30 {

 public static void assignment(string accType) {
        list<account> ListAccount = [select id,name from account where type =: accType];
        system.debug(ListAccount);
    }
    //2.Print all the opportunities with Stage as ‘Closed Won’ and make it dynamic
    public static void assignment2(string oppStage){
        list<opportunity> ListOpp = [select id, name from opportunity where stageName =: oppStage];
        system.debug(ListOpp);
    }
        //3.Find all the opportunities which has Lead Source as ‘Web’ and Stage as ‘Closed Lost’.
        public static void assignment3(string leadSource, string ClosedStage){
        list<opportunity> ListOpp2 =[select id, name from opportunity where stageName =: ClosedStage and LeadSource =: leadSource];
        system.debug(ListOpp2);
        }
        //4.Write the logic to fetch all the accounts along with the respective contacts.
        public static void assignment4(){
            List<account> listAcc = [select id, name from Account];
            List<id> listAccID = new list<id>();
        for (account eachAcc : listAcc) {
            listAccId.add(eachAcc.Id);
        }
        List<Contact> listContact = [select firstname, lastname from contact where account.id in :listAccID];
        for (contact eachCnt : listcontact) {
            system.debug(eachCnt);
        }
        }
        //5.Prepare a method which will return all the Accounts for which at least a contact is present.
        //same as Q4
        //6. Prepare a method which will return all the Accounts for which at least a closed Won Opportunity is present.
        public static void assignment6(string StageWon){
            list<account> ListAccountWithOpp = [select id, name from account];
            List<opportunity> ListOppClosedWon = [select id from opportunity where account.id in :ListAccountWithOpp];
            system.debug(ListOppClosedWon);
        }

    
}