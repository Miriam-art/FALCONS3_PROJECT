public  class ContactListAura {
    @AuraEnabled
    public static List<Contact> get10Contacts(){
        return [Select Id, NAME From Contact Limit 10];
    }
}
