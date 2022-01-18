public with sharing class SoslDemo1{
    public static void sosl1(){
        list<list<sObject>> soslList = [Find'oil or sforce'IN ALL fields returning account(id, name, phone), contact(id, name, phone)];
        list<account> listAccount = (list<account>)soslList.get(0);
        list<sObject> s1 = soslList.get(1);
        list<contact> listContact = (list<contact>)soslList.get(1);

        object ob = 45;
        integer ib = (integer) ob;
        system.debug(listAccount);
        system.debug(listContact);
    }
}