public inherited sharing class AccountControllerForLWCWire {
   @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        List<Account> accounts = [
            SELECT Name, BillingState, Type, Phone
            FROM Account with SECURITY_ENFORCED
        ];
        return accounts;
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountByKeyword(
        String keyword
    ){
        if(String.isBlank(keyword)){
            //keyword == ''
            //keyword == null
            return new List<Account>();
        }
        String queryParameter = '%'+keyword+'%';
        List<Account> accounts = [
            SELECT Name, BillingState, Type, Phone
            FROM Account
            WHERE Name LIKE :queryParameter with SECURITY_ENFORCED
        ];
        //Integer i = 10/0;
        return accounts;
    }
    }



