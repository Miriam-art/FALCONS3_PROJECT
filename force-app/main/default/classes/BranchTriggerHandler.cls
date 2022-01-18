public with sharing class BranchTriggerHandler{

//update description in future method.....

@future
public static void updateBranchDescriptionFuture(Set<Id> setBrId){
  System.debug('Future method called ');

  List<Branch__c> lstBr = [select id, name, Description__c from Branch__c where id in : setBrId];

  //update description in for each loop
for(Branch__c eachbr: lstBr){
  eachbr.Description__c = eachbr.Description__c + '- Future method called';

}
update lstBr;
 }


 /*Q-If we call this future Method --> updateBranchDescriptionFuture 
 from AfterUpdate it will failed. Why? Because you cannot call the Future method
 from the future method. How to resolve the ERROR*/











 

  public static void createDefaultBranch(List<Branch__c> branchTriggerNew){
    //create one empty List of Student
    List<Student__c> newStudentList = new List<Student__c>();

    //for each branch create new Student
    for (Branch__c eachBranch : branchTriggerNew){

      //create new instance
      Student__c students = new Student__c();
      students.Phone__c = '324739434';
      students.Name__c = eachBranch.Name;
      students.Branch_Parent_ID__c = eachBranch.id; //M/D relationship field ---> Branch_Parent_ID__c
      newStudentList.add(students);

    }
    insert newStudentList;
  }




  public static void validateBranchCompletion(List<Branch__c> brTriggerNew, Map<id, Branch__c> brTriggerNewMap, Map<id, Branch__c> brTriggerOldMap){

    //Find All Branch witch are Completed
    set<id> setCompletedBranchid = new set<Id>();
    /* B1 - Updated Name --But here the status is already completd
      B2 - Made status to completed-->
      B3 - Made staus to in-progress
    */
    //Identify whether the status has been changed or not and if its is changes new value is completed or not
    for (Branch__c eachBranch : brTriggerNew){
      if (brTriggerOldMap.get(eachBranch.Id).Status__c != brTriggerNewMap.get(eachBranch.Id).Status__c && eachBranch.Status__c == 'Completed'){
        setCompletedBranchid.add(eachBranch.Id);
      }
      /*if(eachBranch.Status__c == 'Completed' && brTriggerOldMap.get(eachBranch.Id).Status__c != 'Completed'){

      }*/

    }

    List<Student__c> studentList = [select id, name, Status__c, Branch_Parent_ID__c
                                from Student__c
                                where Branch_Parent_ID__c in :setCompletedBranchid and Status__c != 'Completed'];

    for (Student__c eachStudent : studentList){
      if (setCompletedBranchid.contains(eachStudent.Branch_Parent_ID__c)){ //relationship fields


        Branch__c brch = brTriggerNewMap.get(eachStudent.Branch_Parent_ID__c);
        brch.addError('Cannot Complete branch because all its Students are not completed.');
      }

    }
  }
}