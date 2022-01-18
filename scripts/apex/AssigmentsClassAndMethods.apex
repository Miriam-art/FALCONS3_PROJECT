
/* #3 Create a class named 'Student' with String variable 'name' and 
integer variable 'roll_no'. Assign the value of roll_no as '2' and that of 
name as "John" by creating an object of the class Student.*/

// Student myStudent = new Student();
// myStudent.name = 'John';
// myStudent.roll_no = 2;

// Student sdt = new Student();
// string name = sdt.studentName('John');
// System.debug(' the name of student:  ' + name);

// integer rollNo = sdt.studentRollNo(2);
// System.debug(' roll number of the student: '+rollNo);

// // #4

// string nam1 = sdt.studentName(' Sam ');
// integer rollNo1 = sdt.studentRollNo(4);
// long phoneNo1 = sdt.phoneNumber(7328905577L);
// string address1 = sdt.addressInfo(' 3 Gerrald Road, Somerset, NJ 08876 ');
// System.debug(' Name:  '+nam1+' roll Number is: '+rollNo1+' phone: '+phoneNo1+' & address: '+address1);

// string nam2 = sdt.studentName('John');
// integer rollNo2 = sdt.studentRollNo(6);
// long phoneNo2 = sdt.phoneNumber(7328904444L);
// string address2 = sdt.addressInfo(' 24 Forrest Street, Franklin, NJ 08875 ');
// System.debug(' Name:  '+nam2+' roll Number is: '+rollNo2+' phone: '+phoneNo2+' & address: '+address2);

// //triangle.apex
// Triangle tri = new Triangle(3,4,5)
// Rectangle rec1 = new Rectangle(4,5);
// integer areRec1 = rec1.Area();
// System.debug(' area of the first rectangle:  '+ areRec1);
// Rectangle rec2 = new Rectangle(5,8);
// integer areRec2 = rec2.Area();
// System.debug(' area of the second rectangle: '+areRec2);






//========================Mehri's Solutions=================================================

// Question 1 (Topic - Apex Classes)
CalculatorAssig s = new CalculatorAssig();
// decimal addNumber = s.addition(0.5,0.1);
// system.debug('addition method -> ' + addNumber);
decimal subtNumber =s.subtraction(0.5,0.1);
system.debug('subtraction method --> '+subtNumber);
decimal multNumber =s.multiplication(0.5,0.1);
system.debug('multiplication method -->'  +multNumber);
decimal divNumber =s.division(0.5,0.1);
system.debug('division method -->  ' +divNumber);
decimal listNumber = s.addition(new list<decimal>{2.0, 3.0,5.0,4.1 });
system.debug('list method -->'  +listNumber);


// ==========================================
// Question 2 (Topic - Apex Classes)
Area myArea = new Area();
myArea.setDim(4, 5);
System.System.debug('The area of the rectangle is ' + myArea.getArea());


// ==========================================
// Question 3 (Topic - Apex Classes)
Student myStudent = new Student();
myStudent.name = 'John';
myStudent.roll_no = 2;


// ==========================================
// Question 4 (Topic - Apex Classes)
Student myStudent1 = new Student();
myStudent1.name = 'John';
myStudent1.roll_no = 2;
myStudent1.address = '123 N Main st, Main Town, Best State, 78555';
myStudent1.phoneNumber = '405 123 4567';
Student myStudent2 = new Student();
myStudent2.name = 'Sam';
myStudent2.roll_no = 3;
myStudent2.address = '456 N Wain st, Wain Town, Test State, 78555';
myStudent2.phoneNumber = '504 456 1234';
System.debug(myStudent1.name + '\'s phone is ' + myStudent1.phoneNumber);
System.debug(myStudent1.name + '\'s address is ' + myStudent1.address);
System.debug(myStudent2.name + '\'s phone is ' + myStudent2.phoneNumber);
System.debug(myStudent2.name + '\'s address is ' + myStudent2.address);

// ==========================================
// Question 5 (Triangle - Apex Classes)
Triangle tri = new Triangle(3,4,5);
// system.debug('area of triangle --> '+areaTriangle);


// ==========================================
// Question 6 (Rectangle - Apex Classes)
  Rectangle rec1 = new Rectangle(4,5);
  integer areRec1 = rec1.Area();
  System.debug('Area of the first rectangle: ' + areRec1);
  Rectangle rec2 = new Rectangle(5,8);
  integer areRec2 = rec2.Area();
  System.debug(' area of the second rectangle: '+areRec2);
// ==========================================