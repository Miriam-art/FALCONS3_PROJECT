public with sharing class SampleSoqlDemo1{
  public static void sampleSoql1(){
    List<account> listAccount = [select name, accountnumber, Active__c
                             from account
                             order by name];
    system.debug(listAccount);

    //Iterating over the list of Accounts
    for (account eachAcc : listAccount){

      //If Account is Active-->This Account is Active
      if (eachAcc.Active__c == 'Yes'){
        system.debug(eachAcc.Name + ' is Active');

        //if Account is not Active ---> This Account is not Active
      } else if (eachAcc.Active__c == 'No'){
        //If here because we can have null value as well in Active__c
        system.debug(eachAcc.Name + ' is Not Active');
      }


      system.debug(eachAcc);
      string name = eachAcc.Name;
      system.debug('name = ' + name.toUpperCase());
      string active = eachAcc.Active__c;
    }
  }

  public static void sampleSoql2(){
    //List<account> listAccount = [select name, accountnumber, Active__c from account order by name];

    List<account> listAccount = [select name, accountnumber, Active__c
                             from account
                             where Active__c = 'Yes'
                             order by name];//This is bring only Active=='Yes' Accounts recs -->11 records for me.We getting less numb er of records by using [where]
    system.debug(listAccount);
    system.debug('size --> ' + listAccount.size()); //here output is--> "List of size 21 size with, if condition

    //Iterating over the list of Accounts
    for (account eachAcc : listAccount){
      // if (eachAcc.Active__c == 'Yes'){
      system.debug(eachAcc.Name + ' is Active');

      // }
    }
  }

  //I want active accounts and non active accounts based on the input given by the user
  //Message can be --> Account name Active Failed value
  public static void sampleSoql3(String activeFilterValue){
    System.debug('User preference is    --> ' + activeFilterValue);
    //Syntax for using variable inside the where clause
    //Select somefields From ObjectName Where fieldName =: variableName

    List<account> listAccount = [select name, accountnumber, Active__c
                             from account
                             where Active__c = :activeFilterValue]; // here we did dynamic inside of soql query-->[where Active__c = :activeFilterValue]
    //If activeFilterValue --> Yes
    //In Runtime select name, accountnumber, Active__c from account Where Active__c = 'Yes'
    //If activeFilterValue --> No
    //In Runtime select name, accountnumber, Active__c from account Where Active__c = 'No'

    system.debug(listAccount);
    system.debug('size --> ' + listAccount.size());

    //Iterating over the list of Accounts
    for (account eachAcc : listAccount){
      system.debug(eachAcc.Name + ' ----> ' + eachAcc.Active__c);
    }
  }

  public static void sampleSoql4(String closedWonValue){
    System.debug('User preference is    --> ' + closedWonValue);


    List<opportunity> listOpportunity = [select StageName
                                     from opportunity
                                     where StageName = :closedWonValue];
    system.debug(listOpportunity);
    system.debug('size --> ' + listOpportunity.size());
    //Iterating over the list of Accounts
    for (opportunity eachOpp : listOpportunity){
      system.debug(eachOpp.StageName + ' ----> ' + eachOpp.StageName);
    }
  }






  //   public static void sampleSoql5(String leadSources, string StageName){
  
  //     List<opportunity> listOpportunity2 = [select LeadSource, ClosedLost
  //                                    from opportunity
  //                                    where LeadSource = : leadSources And  StageName = :StageName];
  //     for (opportunity eachOpp : listOpportunity2){
  //       system.debug(eachOpp.leadSource + ' ----> ' + eachOpp.StageName);
  //     }
  //   }
  // }
  //   //System.debug('User preference is    --> ' + web,+' '+closedLost);
  // //system.debug(listOpportunity);
  //     //system.debug('size --> ' + listOpportunity.size());
  //     //Iterating over the list of Accounts
}