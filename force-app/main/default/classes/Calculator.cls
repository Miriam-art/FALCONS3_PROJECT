public with sharing class Calculator{
    //Create a method which two integers and returns the sum of those two integers.
    public Integer add(Integer int1, Integer int2){ //it was static method
        integer sum = int1 + int2;
        return sum;
    }

    

    //add 3 integers we can two methods with same name, but the parameter should be different.
    public integer add(Integer int1, Integer int2, Integer int3){
        return int1 + int2 + int3;
    }

    //Multiplication
    public Integer multiply(Integer int1, Integer int2){
        return int1 * int2;
    }

    //create a method which takes list of integer and return addition of all the elements
    public  integer addAll(list<Integer> intList){  //it was static method
        Integer sum = 0;
        //Use here for each loop
        for(Integer eachInt : intList){
          sum = sum + eachInt; //sum+=eachList; <--short version

        }
        return sum; 
    }
}