public with sharing class LeadClass {


    //This methond returns the list of all Leads in the Salesforce Org.
      @AuraEnabled(cacheable=true)
    public static List<Lead> fetchLeads(){
        List<Lead> leads = [
            SELECT Email, Phone, Name, AnnualRevenue
            FROM Lead
        ];
        return leads;
    }
}
