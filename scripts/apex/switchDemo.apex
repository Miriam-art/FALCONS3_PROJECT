integer rank;
string results = '';
rank = 5;
//OPTION 2 
switch on rank{
    when 1{
        results = 'Gold';
    }
    when 2{
        results = 'Silver';
    }
    when 3{
        results = 'Bronze';
    }
    when else{
        if(rank <= 10)
            results = 'Top Ten';
        else
            results = 'nooo Rank';
    }
}
system.debug('results = ' + results);