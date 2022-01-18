for (integer i = 1; i <= 10; i++){
    system.debug(i);
}

list<integer> oddInteger = new list<integer>();
for (integer i = 1; oddInteger.size() <= 20; i++){
    system.debug('i = '+i);
    if (math.mod(i, 2) == 1){
        oddInteger.add(i);
        system.debug('adding odd integer in the list--> '+i);
    }
}
system.debug('oddInteger = '+ oddInteger);