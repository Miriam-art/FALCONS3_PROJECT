//1. Take values of length and breadth of a rectangle and check if it is square or not If it is a square then print the area of it and else print the perimeter and print it.
integer length = 5;
integer width = 5;
if (length == width){
    system.debug('Area of the square is ' + length * width);
}

 else{
    system.debug('Perimeter of rectangle is ' + (length + width));
}

/*2. Take two integer values in two different variables and print
 greatest among them. If both are equal then print the message
 saying that both the given values are equal */
integer x = 3;
integer y = 4;
if (x > y){
    system.debug('X greater than Y ' + y);
}

 else if (y > x){
    system.debug('Y greater than X ' + x);
}

 else{
    system.debug('Both the given values are equal');
}

/*3. A shop gives discount of 10% if the cost of purchased quantity
 is more than 1000.
 Store the quantity in a variable.
 Suppose, one unit costs 100.
 Judge and print total cost for the purchased quantity */
integer quantity = 900;
integer unitCost = 100;
integer totalPrice = quantity * unitCost;
if (totalPrice > 1000){
    system.debug('totalPrice for purchase items is $ ' + (totalPrice * 0.90));
}

 else{
    system.debug('totalPrice for purchase items is $ ' + totalPrice);
}


//5. A school has following rules for grading system:
/* a. Below 25 - F
 b. 25 to 45 - E
 c. 45 to 50 - D
 d. 50 to 60 - C
 e. 60 to 80 - B
 f. Above 80 - A
 print the corresponding grade for the scored marks.*/
integer grade = 90;
if (grade < 25){
    system.debug('grade-F ' + grade);
}

 else if (grade > 25 && grade < 45){
    system.debug('grade-E ' + grade);
}

 else if (grade > 45 && grade < 50){
    system.debug('grade-D ' + grade);
}

 else if (grade > 50 && grade < 60){
    system.debug('grade-C ' + grade);
}

 else if (grade > 60 && grade < 80){
    system.debug('grade-B ' + grade);
}

 else if (grade > 80){
    system.debug('grade-A ' + grade);
}

//6. Store the age of 3 people and determine oldest and youngest among them.
integer age1 = 25;
integer age2 = 45;
integer age3 = 65;
if (age1 <=age2 && age1<=age3){
    system.debug('the youngest is age1 '+ age1);
}
else if(age2<=age1 && age2<=age3){
    system.debug('the youngest is age2 '+ age1);     
}
else{
    system.debug('the youngest is age3 '+age3);
}

if(age1>= age2 && age1>=age3){
system.debug('the oldest is age1' + age1);
}
else if(age2>=age1 && age2>=age3){
    system.debug('the oldest is age2 '+ age2);
}
else{
    system.debug('the oldest is age3 '+age3);
}
/*
10. Write a program to check if a year is leap year or not.
Helpful Info : If a year is divisible by 4 then it is leap year but if the year is 
century year like 2000, 1900, 2100 then it must be divisible by 400.
 */

integer year = 2009;
if(Math.mod(year,4)==0){
    system.debug('its a leap year ');
}else{
    system.debug('its not a leap year ');
}
// if(Math.mod(year,400)==0){
//    system.debug('its a leap year ');
// }else{
//     system.debug('its not a leap year ');
// }

/*
11. Store age, sex ( M or F ), marital status ( Y or N ) and then using 
following rules print their place of service.
if employee is female, then she will work only in urban areas.
if employee is a male and age is in between 20 to 40 then he may work in 
anywhere
if employee is male and age is in between 40 to 60 then he will work in 
urban areas only.
And any other input of age should print "ERROR". */

integer age = 50;
string gender = 'F';
string MaritalSt = 'Y';

if (gender.equals('M')){
    system.debug('She will work only in urban areas ');
}else{
    system.debug('she cannot work in urban areas ');
}
if (gender.equals('F') && (20<age && age<=40)){
system.debug('He may work in anywhere ');

}else{
    system.debug('you cannot work yet');
}
if (gender.equals('F') && (40<age && age<60)){
system.debug('He will work in urban areas only.');

}else{
    system.debug(' ERROR');
}

/*7. A student will not be allowed to sit in exam if his/her attendance is less 
than 75%.
Consider the following parameters:
Total number of classes held
Total number of classes attended by a student.
And print percentage of class attended
Print if the student is allowed to sit in exam or not.
*/

integer totalNumClassHeld = 40;
integer totalNumAttended = 40;
double printPercentage = totalNumClassHeld/totalNumAttended*100;

if(printPercentage<75.0){
    system.debug('student is Not allowed to sit in exam ');
}else{
    system.debug('student is allowed to sit in exam ');
}

/*8. Modify the above question to allow student to sit if he/she has medical 
cause. if he/she has medical cause or not ( 'Y' or 'N' ) and print accordingly
 */
string medicalCause = 'Y';
string medicalCause2 = 'N';

if(medicalCause=='Y' || medicalCause2=='N'){
    system.debug('student can sit in exam ');
}else{
    system.debug('student cannot sit in exam ');
}

//9
// integer x = 2;
// integer y = 5;
// integer z = 0;

// system.debug('The result of expression x==2 is ' + (x==2));
// system.debug('The result of expression x!=5 is ' + (x!=5));
// system.debug('The result of expression x!=5 && y>=5 is ' + (x!=5 && y>=5 ));
// system.debug('The result of expression z!=0 || x==2 ' + (z!=0 || x==2));
// system.debug('The result of expression !(y<10) is ' + (!(y<10)));









/*4. A company decided to give bonus of 5% to employee if his/her year of
 service is more than 5 years.
 Based on the employees current salary and year of service and print the
 net bonus amount*/
//Couldn't Do it
//I need solution


//Mehrinin kodu:
//1
// integer l=10;
// integer b = 8;
// integer asquare=l*l;
// integer perimeterSquare=4*l;
// if(l==b){
// system.debug('The shape is square ');
// }
// else {system.debug('The perimeter of square ');
// }
// if(l==b){
//     system.debug('asquare then print area' + asquare);
// }
// else{
//     system.debug(perimeterSquare);
// }
// //2
// integer var1 = 15;
// integer var2 = 20;
// if(var1>var2){
//     system.debug(Var1 + ' is greater than ' + var2);
// }
// else if(var1<var2) {
//     system.debug(Var2 + ' is greater than ' + var1);
// }
// else {
//     system.debug(Var2 + ' is equal to ' + var1);
//     }
// //3
// integer Quantity = 12;
// integer unitPrice = 100;
// decimal discount= (Quantity*unitPrice)*0.1;
// if (Quantity*unitPrice > 1000){
//     system.debug('You got %10 discount. Discounted price is ' + ((Quantity*unitPrice) -discount) );
// }
// else{
//     system.debug('You got no discount. Total price is ' + Quantity*unitPrice );
// }
// //4
// integer yearService= 6;
// integer Salary = 100000;
// if ( yearService>5) {
//     system.debug('You got 5% bonus ' + Salary*1.05);}
//     else{
//         system.debug('You got no bonus. Your Salary '+ Salary);
//     }
//     //5
//  integer grade;
//  string result='';
//  grade= 85;
//  if(0 < grade && grade <= 25){
//      result ='F';
//  }
//  else if (25 < grade && grade <= 45){
//      result ='E';
//  }
//  else if (45 < grade && grade <=50){
//      result='D';
//  }
// else if ( 50< grade && grade <=60 ){
//      result ='C';
//  }
//  else if (60 < grade && grade <=80){
//      result='B';
//  }
// else if (grade >80 && grade <= 100){
//     result='A';
// }
// else {
//     result='Not exist';
// }
// system.debug('The result is: ' +result);
// //6
// integer age1=25;
// integer age2= 40;
// integer age3= 18;
// integer youngest = age1;
// integer oldest = age1;
// string youngestName = 'age1';
// String oldestName = 'age1';
// if (age2 > age1) {
//     oldestName  = 'age2';
//     if (age2 > age3) {
//     oldestName = 'age2';    
//     }
//     else oldestName = 'age3';
// }
// else {
//     youngestName = 'age2';
//     if (age2 < age3) {
//     youngestName = 'age2';    
//     }
//     else youngestName = 'age3';}
// system.debug('The youngest age is ' + youngestName);
// system.debug('The oldest age is ' + oldestName);
// //7
// integer intClassHeld = 100;
// integer intClassAttended = 60;
// integer intAttendance = 100*intClassAttended/intClassHeld;
// if (intAttendance < 75){
//     system.debug('Your attendance percentage is %' + intAttendance + '. You can not sit in exam.');
// }else {
//     system.debug('Your attendance percentage is %' + intAttendance + '. You can sit in exam.');
// }
// //8
// integer intClassHeldUPD = 100;
// integer intClassAttendedUPD = 60;
// boolean blnIsMedicalCause = false;
// integer intAttendanceUPD = 100*intClassAttendedUPD/intClassHeldUPD;
// if (intAttendance > 75){
//     system.debug('Your attendance percentage is %' + intAttendanceUPD + '. You can sit in exam.');    
// }else if(blnIsMedicalCause){
//     system.debug('Your attendance percentage is %' + intAttendanceUPD + ', but you have a medical cause. So, you can sit in exam.');
// }else {
//     system.debug('Your attendance percentage is %' + intAttendanceUPD + ' and you do not have a medical cause. You can not sit in exam.');
// }
// // 9
// integer x = 2;
// integer y = 5;
// integer z = 0;
// system.debug('The result of expression x==2 is ' + (x==2));
// system.debug('The result of expression x!=5 is ' + (x!=5));
// system.debug('The result of expression x!=5 && y>=5 is ' + (x!=5 && y>=5 ));
// system.debug('The result of expression z!=0 || x==2 ' + (z!=0 || x==2));
// system.debug('The result of expression !(y<10) is ' + (!(y<10)));
// //10
// integer year = 2009;
// if(Math.mod(year,4)==0){
//     system.debug('its a leap year ');
// }else{
//     system.debug('its not a leap year ');
// }
// //11
// integer age =50;
// string geneder='F';
// string MaritalSt = 'Y';
// if(gender.equals('M')){
//     system.debug('She will work only in urban areas ');
// }else{
//     system.debug('She cannot work in urban area');
// }
// if(gender.equals('F') &&(20<age && age<=40)){
//     system.debug('He may work  anywhere');
// }else{
//     system.debug('You cannot work yet');{
//     }
//     if (gender.equals('F') && (age <=40 && age<=60)){
//         system.debug('He will work in urban area only.');
//     }else{
//         system.debug('ERROR');
//     }