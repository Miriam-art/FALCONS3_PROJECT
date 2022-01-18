//while loop demo for even integer, and printing list elements
//add even integer in a list
list<integer> evenIntegers = new list<integer>();
//first 20 even integers
integer i = 1;
while(evenIntegers.size() < 20){
    //check if i is even
    system.debug('i value is ' + i);
    if(math.mod(i,2) == 0){
        evenIntegers.add(i);
        system.debug('even integer added in list -> ' + i);
    }
    i++;
}
system.debug('size of evenInteger ' + evenIntegers.size());
system.debug('evenInteger =  ' + evenIntegers);

//print all the elements of evenInteger list using while loop.
//give me the logic. i will write the syntax

//initiate a integer
integer a = 0;
//if a < size of list
while( a < evenIntegers.size()){
    system.debug('a value is ' + a);
    //printing list element
    //using index of the list -> .get(index) -> .get(a)
    system.debug(evenIntegers.get(a));
    a++;
} 
integer x = 0;
while (x<evenIntegers.size()){
    system.debug('X value is'+ x );
    system.debug(evenIntegers.get(X));
    x++;
}