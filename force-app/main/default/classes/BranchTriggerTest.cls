@isTest
public class BranchTriggerTest{
    @IsTest
    static void insertMethod(){
        Student__c br = new Student__c();
        br.Name__c = 'test branch';
        br.Status__c = 'New';

        test.startTest();
        insert br;
        test.stopTest();

        System.assert(br.Id != null);
        system.assertEquals('test project', br.Name__c);
    }


    @IsTest
    static void updateMethod1(){
        Student__c br = new Student__c();
        br.Name__c = 'test branch';
        br.Status__c = 'New';
        insert br;

        test.startTest();
        br.Status__c = 'In Progress';
        update br;
        test.stopTest();

        System.assert(br.Id != null);
        system.assertEquals('test project', br.Name__c);

    }
}