Integer x = 10;
Integer y = 20;
Integer z = x++; //z = 10; x gives the value here then get incremented by one -->11
System.debug('z '+z);
//At this point x is holding 11
system.debug('x ' + x);
Integer a = ++x; //a = 12; x gets incremented and then gives the value --> 12 
System.debug('a '+a);
System.debug('x = ' + x);
//At this point x is holding 12
//Integer b = x++ + ++x; 

integer x1 = 12;

Integer z1 = x1++; //z1 = 12. And x1 = 13.
Integer a1 = ++x1; //x1 = 14. And a = 14.

Integer b = z1 + a1;

//first x gives the value as 12 and then gets incremented -->13. 
//Second x before giving the value gets incremented by one so x --> 14 and then gives the value 
System.debug('b '+b);// 12 + 14 = 26