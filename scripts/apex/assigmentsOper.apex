//No-1 uncomment to see result
// integer i = 0;
// integer j = i++ + ++i;
// system.debug( j );


//No-2  uncomment to see result
// integer i = 0;
// integer j = ++i + i++;
// system.debug( j );

//No3 uncomment to see result
integer i = 100;
integer j = 10;
system.debug( i/j );

//No4 uncomment to see result
//(Optional)
 Boolean i = false;
 Boolean j = true;
 if(!i && j)
system.debug('1');
else
system.debug('2');

//No-5 uncomment to see result
boolean b1 = true, 
b2 = false, 
b3 = true;
system.debug( b1&&b2&&!b3 );

//No-6 uncomment to see result
// integer i = 10,
//  j = 12, 
//  k = 1;
//  k += i++ - --j;
//  //   10  -   11 =-1   k=1 = -1=0
// system.debug(k)

//No-7
// integer i = 10;
//    I++;  i++;  ++i;
// // 10    11   13
// integer j = i++;
// system.debug(j);

// //No-8
// integer i = 19;
// integer j = -5;
// system.debug( i/j );

//No-9
// integer i = -21;
// integer j = 4;
// system.debug( i/j ); //-21/4 = -5...=5

//No10
String temp = 'Nice';
String temp1 = ' Work';
system.debug( temp+temp1 );


//What is the difference between “=” and “==” operator?

//= assigment
//==equals
