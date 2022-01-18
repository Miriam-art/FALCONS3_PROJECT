//1st one; Save all the integers from the range of -1000 to 1000 in a list.
list<integer> intList = new list<integer>();
for (integer i = 0; i <= 10; i++){
    intList.add(i);
}

system.debug('whole list : ' + intList);

//2nd one;Prepare another list which consist of all the even integers from the list created in question 1.
list<integer> evenList = new list<integer>();
for (integer each : intList){
    if (math.mod(each, 2) == 0){
        evenList.add(each);
    }
}

system.debug('evenList : ' + evenList);

// 3rd one;Prepare another list which consist of all the odd integers from the list created in question 1.
list<integer> oddList = new list<integer>();
for (integer each : intList){
    if (math.mod(each, 2) != 0){
        oddList.add(each);
    }
}

system.debug('oddList : ' + oddList);

// 4rd one;Find the sum of all the even integers with the help of list created in question 2.
integer sum = 0;
for (integer each : evenList){
    sum = sum + each;
}

system.debug('sum of even: ' + sum);

//5th one; Find the sum of all the odd integers with the help of list created in question 3.
integer sum2 = 0;
for (integer each : oddList){
    sum2 = sum2 + each;
}

system.debug('sum of odd: ' + sum2);

//6th one; Find the difference between the average sum of list created in question 2 and question 3.
integer averageEven = sum / evenList.size();

system.debug('averageEven ' + averageEven);
integer arerageOdd = sum2 / oddList.size();

system.debug('arerageOdd ' + arerageOdd);
// 7th one;Find all the leap years which are going to come in next thousand years and collect them in a list. Please try to solve it with out hard coding the current year in this.
list<integer> leapYearList = new list<integer>();
for (integer i = 2021; i <= 3021; i++){
    if (Date.isLeapYear(i)){
        leapYearList.add(i);
    }
}

system.debug('leapYearList: ' + leapYearList);

//Write a logic to print 0 and 1 alternatively like 01010101 for any
//given number of times.
integer printAlter = 10;
for (integer each1 = 1; each1 <= 10; each1++){
    if (math.mod(each1, 2) == 0){
        system.debug('0');
    } else{
        system.debug('1');
    }
}

// 9. Factorial of any number n is represented by n! and is equal to 1*2*3*....*(n-1)*n. E.g.- 4! = 1*2*3*4 = 24. Print the factorial of any given number and make sure it prints an error message if a negative number is provided.
integer anyNumbers = 5;
integer factorial = 1;
if (anyNumbers < 0){
    system.debug('No negative numbers');
}

 else{

    for (integer a = 1; a <= anyNumbers; a++){
        factorial = factorial * a;

    }
    system.debug('Factorial of  ' + anyNumbers + 'is' + factorial);
}

//10 Find the greatest number from a list of Integers. Logic should print an error message if no values in the list are provided.

List<integer> samplevalues = new List<integer>();
samplevalues.add(55);
samplevalues.add(75);
samplevalues.add(40);
samplevalues.add(100);
integer maxvalue = samplevalues.get(0);
//max value is 55
        For (integer i =0;i<samplevalues.size();i++)
        {
       if( samplevalues.get(i) > maxvalue)
                maxvalue = samplevalues.get(i);            
        }    
system.debug('the max value is'+maxvalue);

