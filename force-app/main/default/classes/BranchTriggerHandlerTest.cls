@isTest
public  class BranchTriggerHandlerTest {
    @isTest
    static void testProjectInsert(){
        Branch__c br = new Branch__c();
        br.Branch_Name__c = 'test branch';
        br.Status__c = 'New';
        insert br;

        List<Branch__c> brList = new List<Branch__c>();
        brList.add(br);
        test.startTest();

        //test insert ticket method
        BranchTriggerHandler.createDefaultBranch(brList);
        test.stopTest();

        Student__c insertStudent = [select id,Name__c,Phone__c from Student__c limit 1 ];
        system.assert(insertStudent!= null);
        System.assertEquals('324739434', insertStudent.Phone__c);

    }
    @isTest
    static void testProjectUpdateCheckError(){
        Branch__c br = new Branch__c();
        br.Branch_Name__c = 'test branch';
        br.Status__c = 'New';
        insert br;

        //insert branch name
        Student__c st = new Student__c();
        st.Name__c = 'Test';
        st.Branch_Parent_ID__c = br.id;
        insert st;

        //update project status
        Test.startTest();
        try{
            br.Status__c = 'Completed';
            update br;
        }catch(Exception ex){
            system.assert(ex.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
        }
        Test.stopTest();
    }

 @istest
    static void testProjectUpdateDescriptionFuture() {
       Branch__c sp = new Branch__c();
        sp.Branch_Name__c = 'test project';
        sp.Status__c = 'New';
        insert sp;
        

        //update project status
        Test.startTest();
       BranchTriggerHandler.updateBranchDescriptionFuture(new set<id>{sp.id});
        Test.stopTest();

        List<Branch__c> spList = [select id, name, description__c from Branch__c];
        System.assert(spList != null);
        system.assert(spList.get(0).Description__c.contains('Future'));
    }
}