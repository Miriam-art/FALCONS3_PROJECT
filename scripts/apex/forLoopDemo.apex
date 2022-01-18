//print 1 to 100
//traditional for loop
string iStr = '';
list<integer> iList = new list<integer>();

 for(integer i=0; i<=100; i++){
     system.debug('i = '+i);
     iStr = iStr + string.valueOf(i)+ ' , ';
 }
 system.debug(iStr);
 system.debug(iList);
 system.debug('size of list = '+ iList.size());

 //print 1 to 100
//traditional for loop
// string iStr = '';
// for(integer i = 0; i <=100; i++){
//     system.debug('i = ' + i);
//     iStr = iStr + string.valueOf(i) +  ', ' ;
// }
// system.debug(iStr);

system.debug('Print every element in the list using fro loop ');
for(integer j = 0; j<iList.size(); j++){
    system.debug(iList.get(j));
}