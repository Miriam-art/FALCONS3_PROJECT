public with sharing class SampleSoql4 {
    List<Account> accountWithOppList = new List<Account>();
    accountWithOppList [Select Name AnnualRevenue (Select name,Amount from Opportunities where StageName = '')from Account where Type = 'Customer - Direct'];
}
