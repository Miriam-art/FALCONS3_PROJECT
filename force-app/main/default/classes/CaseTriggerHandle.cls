public with sharing class CaseTriggerHandle {

    //1-> If a High priority case is updated or created, Validate that the description field is not null. If it is null then show the error message

    public static void UpdateOrCreateHighPriority(List<Case> caseList) {
        for (Case eachCase : caseList){
            if (eachCase.Priority == 'High' && eachCase.Description==null){
                eachCase.addError('Description cannot be blank! Plaese fill out');
            }

    }
}
// 2-> For a High priority case do not allow the user to change the priority to something else. Error should be shown on the field.


 public static void caseUpdateValidation2(list<case> triggerNew, map<id, case> triggerOldMap) {
        for(Case eachCase : triggerNew){
            if(triggerOldMap.get(eachCase.id).Priority == 'High' && eachCase.priority != triggerOldMap.get(eachCase.id).Priority){
                eachCase.priority.addError('You can not change the priority if it is high');
            }
        }
    }

}