trigger OpportunityTrigger on Opportunity (before insert) {

if(trigger.isBefore && trigger.isUpdate){
  OpportunityTriggerHandler.OpportunityStageUpdateValidation(trigger.new,trigger.oldMap);
}

if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
  OpportunityTriggerHandler.OpportunityTypePopulated(trigger.new);
}

if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
  OpportunityTriggerHandler.OppDiscountAmountCalculate(trigger.new);
}
if(Trigger.isBefore){
  OpportunityTriggerHandler.updateOpportunityCLoseDate(Trigger.New);
}



}