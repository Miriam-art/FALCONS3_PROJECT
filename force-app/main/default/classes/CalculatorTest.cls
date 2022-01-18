@isTest
public with sharing class CalculatorTest{
    @isTest
    static void calcMethodTest(){
        Calculator calc = new Calculator();

        test.startTest();
        Integer i1 = calc.add(2,3);

        test.stopTest();
        system.assert(i1 == 5);
    }

    @isTest
    static void calcMethodTest1(){
        Calculator calc = new Calculator();
        test.startTest();
        integer i2 = calc.add(3, 5, 6);
        test.stopTest();
        system.assert(i2 == 14);
    }

    @isTest
    static void calcMethodTest2(){
        Calculator calc = new Calculator();
        test.startTest();
        integer i3 = calc.multiply(3, 5);
        test.stopTest();
        system.assert(i3 != null);
    }

    @isTest
    static void calcMethodTest3(){
       Calculator calc = new Calculator();
        list<integer> int1 = new list<integer>();
        int1.add(2);
        int1.add(5);
        int1.add(7);
        test.startTest();
        integer i4 = calc.addAll(int1);
        test.stopTest();
        system.assert(i4 == 14);
    }
}