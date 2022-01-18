trigger ContactBeforeInsertTrigger on Contact (before insert, before update, after insert, after update){

    if(Trigger.isBefore && Trigger.isInsert)
    for (Contact contact : Trigger.new ){
        contact.Description = 'Contact created successfully by using ContactBeforeInsert trigger';
    }

if(Trigger.isBefore && Trigger.isUpdate)
    for (Contact contact : Trigger.new ){
        if(Trigger.newMap.get(contact.id).LastName != Trigger.oldMap.get(contact.id).LastName){
contact.Description = 'Contact updated successfully by '+ userInfo.getUserName() ;
        }
        
    }

}