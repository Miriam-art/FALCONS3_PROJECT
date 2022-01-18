public with sharing class ContactTriggerHandler{
    //1.Don't allow user to update contact is Lead Sourse is Partner Reference
    public static void contactUpdateValidation(List<Contact> cntTriggerNew, List<Contact> cntTriggerOld, Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){

        for (contact eachContact : cntTriggerNew){
            if (eachContact.LeadSource == System.label.LeadSourceValidation){ //here created CUSTOM LABEL
                eachContact.addError('Connot update ' +System.label.LeadSourceValidation+ ' Contact');
            }
        }
    }

    //2. Do not Allow user to update Lead Sourse if Lead Sourse is not BLank for any CONTACT!
    public static void contactUpdateValidation1(List<Contact> cntTriggerNew, List<Contact> cntTriggerOld, Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){


        Map<id, Contact> oldMap = cntTriggerOldMap;
        for (contact eachContact : cntTriggerNew){
            contact oldContactValue = oldMap.get(eachContact.id);
            if (oldContactValue.LeadSource != null
             && eachContact.LeadSource != oldContactValue.LeadSource)
                eachContact.LeadSource.addError('CANNOT UPDATE LEAD SOURSE! PLEASE USER.');
        }
    }
}