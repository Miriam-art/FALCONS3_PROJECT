Trigger CaseTrigger on Case(Before Insert, Before Update){

    
if(Trigger.isBefore){
    CaseTriggerHandle.UpdateOrCreateHighPriority(Trigger.new);
    if(trigger.isUpdate){
    CaseTriggerHandle.caseUpdateValidation2(Trigger.new, Trigger.oldMap);
  }
}






























//     System.debug('We are in the triggers');

//     if (Trigger.isBefore){
//         System.debug('We are in the Before triggers');
//         /////
//         for (case eachCase : trigger.new ){
//             system.debug('case id = ' + eachcase.id + ', last modified date = ' + eachcase.LastModifiedDate);
//         }

//     }
//     if (Trigger.isInsert){
//         System.debug('We are in the Before Inser triggers');
//         /////
//         for (case eachCase : trigger.new ){
//             system.debug('case id = ' + eachcase.id + ', last modified date = ' + eachcase.LastModifiedDate);
//         }


//     } else if (Trigger.isUpdate){
//         System.debug('We are in the Before Update triggers');
//     }


//     if (Trigger.isAfter){
//         System.debug('We are in the After triggers');
//         /////
//         for (case eachCase : trigger.new ){
//             system.debug('case id = ' + eachcase.id + ', last modified date = ' + eachcase.LastModifiedDate);
//         }


//     }
//     if (Trigger.isInsert){
//         System.debug('We are in the After Insert triggers');

//     } else if (Trigger.isUpdate){
//         System.debug('We are in the After update triggers ');
//         ////
//         for (case eachCase : trigger.new ){
//             system.debug('case id = ' + eachcase.id + ', last modified date = ' + eachcase.LastModifiedDate);
//         }

//     }
//     /////
//     for (case eachCase : trigger.new ){
//         system.debug('case id = ' + eachcase.id + ', last modified date = ' + eachcase.LastModifiedDate);
//     }
}