trigger AccountTrigger on Account (before insert, after insert, before update, after update){


//boolean check.
    boolean allTrigger = TriggerSwitch.isAllTriggerOn();//True
    boolean accountTrigger = TriggerSwitch.isAccountTriggerOn();//False
    System.debug('alltrigger switch = ' + allTrigger);
    System.debug('accountTrigger switch = ' + accountTrigger);
    
    if(allTrigger && accountTrigger){
    }

    







if(Trigger.isBefore){
    AccountTriggerHandler.updateAccountDiscription(Trigger.new);


}
if(Trigger.isBefore){
    AccountTriggerHandler.updateAccountOwnership(Trigger.new);

}

//4-> Create a new checkbox field "IsActive" on Acccount and on Contact object.Create a trigger which will update the "IsActive" to true on related Contact records whenever "IsActive" is set to true on realted Account.
if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate)){
 AccountTriggerHandler.updateContactActive(trigger.new, trigger.newMap, trigger.oldMap);

}

/*5-> When ever a Account phone number is modified ,update all the contacts of the Account
        a. Contacts otherPhone as Old phone no of account
        b. Contacts mobilePhone as New phone no of Account.*/

      if(trigger.isAfter &&  trigger.isUpdate){
 AccountTriggerHandler.updateContactPhone(Trigger.new, Trigger.newMap, Trigger.oldMap);


      }

      //Erhan hocanin kodu
       if(trigger.isAfter && trigger.isUpdate){
      //AccountTriggerHandler.updateAccContactPhone(trigger.new, trigger.oldMap, trigger.newMap);
   }
  

 






























    //Erhan hocanin sorulari
// 1.When Acc is created if Rating is Hot then Acc Type is Required.

// if(trigger.isInsert && trigger.isBefore){
//     AccountTriggerHandler.validateAccountBeforeInsert(trigger.new);
//    }




//2.When Acc is Created then create contact under it with acc name.
//(Note it: it is Possible with Process Builder)


/*3.Create Task on Opportunity whenever Opp is over  $100,000.
Trigger name:GiftBoxPromo
Subject:Gift Box Promo
Description: Send Gift Box next Day
Priority : High */


// 4.Create an Opp under Acc whenever Acc 'Rating' changed to 'Hot';
















    // if (Trigger.isBefore){
    //     System.debug('Before trigger on Account Onject');
    //     for (Account eachAcc : Trigger.new ){
    //         if (eachAcc.Active__c == 'Yes'){
    //             eachAcc.Description = 'is Active';

    //         } else{
    //             eachAcc.Description = '';
    //         }

    //     }
    //     System.debug('Changed Trigger.new---> ' + Trigger.new );
    // }


    /* if (Trigger.isAfter){
     System.debug('AFTER trigger on Account Object ');
     if (Trigger.isInsert){
     System.debug('====================AFTER INSERT=====================');
     if (Trigger.isUpdate){
     System.debug('=================AFTER UPDATE=====================');


     //get map if inserted/update record's SF ID vs Account record
     map<id, account> newMap = trigger.newMap;
     //use keyset method to get SET of IDS(keys)
     Set<id> accIdSet = newMap.keySet();
     system.debug('accid set = ' + accIdSet);

     //System.debug('accid set = ' + Trigger.newMap.keySet());

     }

     }

     }
     */

    /*  //new map/oldmap code snippet

     map<id, account> trgNewMap = trigger.newMap;
     map<id, account> trgOldMap = trigger.oldMap;

     if (trigger.isBefore && trigger.isInsert) {
     system.debug('=======BEFORE INSERT======');
     system.debug('Before insert OLD MAP = ' + trgOldMap);
     system.debug('Before inert NEW MAP = ' + trgNewMap);
     }
     if (trigger.isAfter && trigger.isInsert) {
     system.debug('=======AFTER INSERT======');
     system.debug('AFTER insert OLD MAP = ' + trgOldMap);
     system.debug('AFTER inert NEW MAP = ' + trgNewMap);
     }

     if (trigger.isBefore && trigger.isUpdate) {
     system.debug('=======BEFORE UPDATE======');
     system.debug('Before UPDATE OLD MAP = ' + trgOldMap);
     system.debug('Before UPDATE NEW MAP = ' + trgNewMap);
     }
     if (trigger.isAfter && trigger.isUpdate) {
     system.debug('=======AFTER UPDATE======');
     system.debug('AFTER UPDATE OLD MAP = ' + trgOldMap);
     system.debug('AFTER UPDATE NEW MAP = ' + trgNewMap);
     }
     */


    /////////////////////////////////////////uncomment below code ////////////////////////////////////////////////


    /*    //only print when before insert trigger execute
     if (Trigger.isBefore){
     System.debug('Before insert trigger of Account Object. ');
     //  System.debug('Trigger.new in before trigger = '+Trigger.new);
     }

     //only on after insert
     if (Trigger.isAfter){
     System.debug('After insert Trigger for Account Object. ');
     //System.debug('Trigger.new in after trigger = '+Trigger.new);
     }
     if (Trigger.isAfter && Trigger.isInsert){
     // List <Account> newAccounts = Trigger.new;

     //print how many accounts are inserted
     // System.debug('# of accounts inserted = '+ newAccounts.size());
     // for(Account acc : newAccounts){
     //     System.debug('Acc Id is '+ acc.Id+ ', acc name is '+ acc.Name);
     // }

     }
     if (Trigger.isAfter && Trigger.isInsert){
     List<Account> newAccount = Trigger.new;
     List<Account> oldAccount = Trigger.old;

     System.debug('After insert newAccount = ' + newAccount);
     System.debug('After insert oldAccount = ' + oldAccount);


     }
     if (Trigger.isBefore && Trigger.isUpdate){
     //print old Account Name
     for (Account oldAcc : Trigger.old){
     System.debug('BEFORE Old ID = ' + oldAcc.Id + ', Old Acc Name ' + oldAcc.Name);
     }
     //print new Account Name
     for (Account newAcc : Trigger.new ){
     System.debug('BEFORE New ID = ' + newAcc.Id + ', New Acc Name ' + newAcc.Name);
     }

     }


     if (Trigger.isAfter && Trigger.isUpdate){
     //print old Account Name
     for (Account oldAcc : Trigger.old){
     System.debug('AFTER Old ID = ' + oldAcc.Id + ', Old Acc Name ' + oldAcc.Name);
     }
     //print new Account Name
     for (Account newAcc : Trigger.new ){
     System.debug('AFTER New ID = ' + newAcc.Id + ', New Acc Name ' + newAcc.Name);
     }

     }


     //get set of ID in after trigger
     if (trigger.isAfter){
     system.debug('AFTER trigger on Account Object.');
     if (trigger.isInsert)
     system.debug('==========AFTER INSERT===========');
     if (trigger.isUpdate)
     system.debug('==========AFTER UPDATE===========');
     Set<id> accIdSet = new set<id>();
     for (account acc : trigger.new ){
     accIdSet.add(acc.id);
     }
     system.debug('accid set = ' + accIdSet);
     }
     }
     */

}