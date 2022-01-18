public inherited sharing class CreateContactController{
    @AuraEnabled
    public static id createContact(String firstName, String phone, String lastName){

        Contact con = new Contact();
        con.FirstName = firstName;
        con.LastName = lastName;
        con.Phone = phone;
        insert con;
        return con.Id;
    }
}

//In SAlesforce ==> Id and String are interchangeable.for example con.Id='AWD1000098900'<== this what interchangeable