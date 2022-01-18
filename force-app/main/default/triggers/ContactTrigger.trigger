trigger ContactTrigger on Contact (before insert, before update){

if(TriggerSwitch.isAllTriggerOn() && TriggerSwitch.isContactTriggerOn()){ //or do this way--> if(!TriggerSwitch.isAllTriggerOn() || !Trigger.isContactTriggerOn(){return;--> if any of them false then return it.It will go back} 
    
    if (Trigger.isBefore && Trigger.isUpdate){
         
        ContactTriggerHandler.contactUpdateValidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

       
    }







/* //this should print on insert
 if (trigger.isInsert){ //true when record is being inserted
 system.debug('Before insert trigger called.');
 }
 //this only print on update
 if (trigger.isUpdate){
 System.debug('After updaye trigger called. ');
 }*/
}
}