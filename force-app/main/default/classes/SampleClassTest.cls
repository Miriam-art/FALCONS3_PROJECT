@isTest
public class SampleClassTest{
    @istest
    static void sampleMethod(){
        SampleClass sc = new SampleClass();
        sc.sampleMethod();
        System.assert(sc.sampleStr != null);
    }
    @isTest
    static void  testMethod2(){
        SampleClass sc = new SampleClass('Paramterized Contructor');
        sc.printIt('Print String');
    }

    @isTest static void testMethod3(){
        SampleClass.SampleInnerClass sic = new  SampleClass.SampleInnerClass();
        sic.method3();
    }
}