public with sharing class OpportunityTriggerHandler{
    //3-> Create a validation with the help of trigger which doesnot allow to update the stage of an opportunity once it is closed/won or closed/lost.For closed/won user should get error message as “Stage can not be changed from Closed/won” and For closed/lost user should get error message as “Stage can not be changed from Closed/Lost”.
    public static void OpportunityStageUpdateValidation(List<Opportunity> newOpp, map<id, Opportunity> oldOppMap){
        for (Opportunity eachOpp : newOpp){
            if (oldOppMap.get(eachOpp.id).StageName == 'Closed Won' && eachOpp.StageName != oldOppMap.get(eachOpp.id).StageName){
                eachOpp.StageName.addError('Stage can not be changed from Closed/won');
            } else if (oldOppMap.get(eachOpp.id).StageName == 'Closed Lost' && eachOpp.StageName != oldOppMap.get(eachOpp.id).StageName){
                eachOpp.StageName.addError('Stage can not be changed from Closed/Lost');
            }
        }
    }

    // Don't allow an opportunity to be saved until and unless Type is populated. Do this with the help of trigger.
    public static void OpportunityTypePopulated(List<Opportunity> newOpp){
        for (Opportunity eachOpp : newOpp){
            if (eachOpp.Type == null){
                eachOpp.Type.addError('Type cannot be null');
            }

        }
    }

    /*5.Create two new fields in Opportunity object as below:
     a. Discount Percentage of type Percentage
     b. Discount Amount of type decimal
     Create a Trigger which Prints the Discount Amount and
     calculate Discount Amount as (Amount * Discount Percentage)/100 every time an opportunity is created or updated.*/
    public static void OppDiscountAmountCalculate(List<Opportunity> newOppList){
        for (Opportunity eachOpp : newOppList){
            if (eachOpp.Amount != null && eachOpp.Discount_Percentage__c != null){
                eachOpp.Discount_Amount__c = (eachOpp.Amount * eachOpp.Discount_Percentage__c) / 100;

            } else if (eachOpp.Amount == null){
                eachOpp.Discount_Amount__c = null;
                eachOpp.Discount_Percentage__c = null;

            }

        }
    }

    ////2-> When ever new Opportunity is created with stageName as closed won or closed lost, then set closeDate as  today otherwise set closed date as 15 days from today.
    public static void updateOpportunityCLoseDate(List<Opportunity> oppsTriggerNew){
        for (Opportunity opp : oppsTriggerNew)
        if (opp.stageName == 'CLosed Won' || opp.stageName == 'Closed Lost'){
                opp.closeDate = Date.today();
        } else{
            opp.closeDate = Date.today().addDays(15);
        }
    }
}