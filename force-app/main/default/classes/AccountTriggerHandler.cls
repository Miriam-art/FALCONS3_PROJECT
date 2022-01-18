public with sharing class AccountTriggerHandler{
    public static void updateAccountDiscription(List<Account> accList){
        try{
            System.debug('BEFORE trigger on Account Object');
            System.debug('ORIGINAL trigger,new----> ' + accList);
            for (Account eachAcc : accList){
                if (eachAcc.Active__c == 'Yes')
                    eachAcc.Description = 'is Active';
                else{
                    eachAcc.Description = '';
                }

            }
            System.debug('CHANGED Trigger.new ' + accList);
        } catch (Exception ex){
            System.debug('ex = ' + ex.getMessage());
            throw ex;
        }
    }
/**********************************************************************************/
    public static void updateContactVipField(List<account> accTriggerNew, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        //create a list<id>
        //which has all account id for which VIP field is changed
        list<id> updatedAccId = new list<id>();
        //fill up the list of acc id using for each loop
        for (account acc : accTriggerNew){
            //get new account from NewMap
            Account newAcc = accTriggerNewMap.get(acc.id);
            //get old account from Oldmap
            Account oldAcc = accTriggerOldMap.get(acc.id);
            //condition to check if VIP is changed
            if (newAcc.VIP__c != oldAcc.VIP__c){
                updatedAccId.add(acc.id);
            }
        }
        //get list of contacts for all the accounts in which VIP was updated.
        //also get account's vip field in soql.
        list<contact> lstContact = [Select name, account.id, account.vip__c
                                    from Contact
                                    where account.id in :updatedAccId];
        if (!lstContact.isEmpty()){
            for (contact cnt : lstContact){
                //set contact's vip equal to Accounts VIP field
                cnt.VIP__c = cnt.account.VIP__c;
            }
            //update list of contact
            update lstContact;
        }
    }

/**********************************************************************************/

    //1-> When ever a new Account is created  with Indsutry as Banking then set ownership as public.
    public static void updateAccountOwnership(List<Account> accTriggerNew){

        for (Account acc : accTriggerNew)
            if (acc.industry == 'Banking'){
                acc.Ownership = 'Public';
        }
    }

    /**********************************************************************************/

    //4-> Create a new checkbox field "IsActive" on Acccount and on Contact object.Create a trigger which will update the "IsActive" to true on related Contact records whenever "IsActive" is set to true on realted Account.
    public static void updateContactActive(List<account> accTriggerNew, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){

        list<id> updatedAccList = new list<id>();

        for (Account acc : accTriggerNew){
            if (accTriggerOldMap.get(acc.id).isActive__c != accTriggerNewMap.get(acc.id).isActive__c){
                updatedAccList.add(acc.id);
            }
        }
        //get list of contacts for all the accounts in which VIP was updated.
        //also get account's vip field in soql.
        list<contact> ContactList = [Select name, account.id, account.isActive__c
                                     from Contact
                                     where account.id in :updatedAccList];
        if (!ContactList.isEmpty()){
            for (Contact cnt : ContactList){

                cnt.isActive__c = cnt.account.isActive__c;
            }
            //update list of contact
            update ContactList;
        }
    }


    /**********************************************************************************/

    /*5-> When ever a Account phone number is modified ,update all the contacts of the Account
     a. Contacts otherPhone as Old phone no of account
     b. Contacts mobilePhone as New phone no of Account.*/
    public static void updateContactPhone(list<account> accTriggerNew, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        List<id> updatedAccList = new list<id>();
        for (Account acc : accTriggerNew){
            if (accTriggerOldMap.get(acc.id).phone != accTriggerNewMap.get(acc.id).phone){
                updatedAccList.add(acc.id);
            }
        }
        list<contact> contactList = [select lastname, phone, otherPhone, mobilePhone, account.id, account.phone
                                     from contact
                                     where account.id in :updatedAccList];
        if (!contactList.isEmpty()){
            for (Contact cnt : contactList){
                cnt.otherPhone = accTriggerOldMap.get(cnt.account.id).phone;
                cnt.mobilePhone = cnt.Account.phone;
            }
            update contactList;
        }
    }

    /**********************************************************************************/

    //Erhan hocanin kodu
    //Whenever an Account phone number is modified ,update all the contacts of the Account
    // a. Contacts otherPhone as Old phone no of account
    // b. Contacts mobilePhone as New phone no of Account.
    public static void updateAccContactPhone(List<Account> accList, map<id, Account> newMap, map<id, Account> oldMap){
        set<id> updatedAccId = new set<id>();
        for (Account each : accList){

            if (newMap.get(each.id).Phone != oldMap.get(each.id).Phone)
                updatedAccId.add(each.id);
        }
        List<Contact> contactList = [select name, Account.id, Account.Phone
                                     from Contact
                                     where account.id in :updatedAccId];
        for (Account eachAc : accList){
            if (!contactList.isEmpty()){
                for (contact each : contactList){
                    each.OtherPhone = oldMap.get(eachAc.id).Phone;
                    each.MobilePhone = newMap.get(eachAc.id).Phone;
                }
            }
        }
        update contactList;


        //   public static void validateAccountBeforeInsert(List<Account>accList) {
        //         for(Account eachAcc : accList){
        //             if(eachAcc.rating == 'Hot' && eachAcc.Type == null){
        //               eachAcc.addError('Account Type is Required');
        //             }
        //         }
        //     }
    }
}