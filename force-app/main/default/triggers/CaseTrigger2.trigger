trigger CaseTrigger2 on Case (before insert, before Update){

    for (Case caseRecord : Trigger.new ){
        if (String.isBlank(caseRecord.Reason)){
            caseRecord.addError('Case Reason should not be blank');
        }

    }
}