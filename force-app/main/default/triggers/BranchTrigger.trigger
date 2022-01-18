trigger BranchTrigger on Branch__c ( before insert,after insert, before update,after update) { 


//update description in future method.....
if(Trigger.isInsert && Trigger.isAfter){
    map<id, Branch__c> newMap = Trigger.newMap;
    set<id> setIds = newMap.keySet();
        //call method
    BranchTriggerHandler.updateBranchDescriptionFuture(setIds);
   

}








if(trigger.isInsert && Trigger.isAfter){
    //call handler method from here
    BranchTriggerHandler.createDefaultBranch(Trigger.new);


}

if(Trigger.isUpdate && Trigger.isBefore){  

    //call handler method from here
    BranchTriggerHandler.validateBranchCompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);

}




}