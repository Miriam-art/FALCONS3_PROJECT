//map2
map<string, string> countryAndCapitalMap = new map<string, string>();
string indiaCapital = 'Delhi';
countryAndCapitalMap.put('USA', 'DC');
countryAndCapitalMap.put('India', indiaCapital);
countryAndCapitalMap.put('Turkey', 'Ankara');
countryAndCapitalMap.put('Turkmenistan', 'Ashgabat');
countryAndCapitalMap.put('Thailand', 'Bangkok');
countryAndCapitalMap.put('USA', 'Washington DC');

//1.get set of key using .keySet()
set<string> countryKeySet = countryAndCapitalMap.keySet();
for(string eachCountry : countryKeySet){
    //2.get each value using .get(key)
    string eachCapital = countryAndCapitalMap.get(eachCountry);
    system.debug('Country is ' + eachCountry + ' and its capital is ' + eachCapital.toUpperCase());
}