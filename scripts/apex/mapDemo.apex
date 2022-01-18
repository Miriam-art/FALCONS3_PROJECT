map<string,integer>map1 = new map<string,integer>();
map1.put('Group 1 ', 5);
map1.put('Group 2 ', 6);
map1.put('Group 3' , 7);

integer g3 = map1.get('group 3 ');//this will return intger
system.debug('Map elements are '+map1);

//using set here to get set of mapp collection
set<string>map1Keys = map1.keySet();
system.debug('Map1 keys'+ map1Keys);
list<integer>map1Value = map1.values();
system.debug('map1 values list '+ map1Value);

map<string, string> countryAndCapitalMap = new map<string,string>();
countryAndCapitalMap.put('USA','DC');
countryAndCapitalMap.put('India','Delhi');
countryAndCapitalMap.put('Turkey','Ankara');
countryAndCapitalMap.put('Turkmenistan','Ashgabat');
countryAndCapitalMap.put('Thailand','Bangkok');
countryAndCapitalMap.put('USA','Washington DC');
system.debug('Country and its capital '+countryAndCapitalMap);

string country = 'USA';
string capitalOfCountry = countryAndCapitalMap.get(country);
system.debug('capitalOfCountry is ' + capitalOfCountry);

set<string>setOfCountries = countryAndCapitalMap.keySet();
list<string>setOfCapitals = countryAndCapitalMap.values();
system.debug('list of capitals '+ setOfCapitals);
system.debug('set of countries '+ setOfCountries);

map<integer,string> map3 = new map <integer , string>();
map3.put(10,'ten');
map3.put(9,'nine');
map3.put(11,'eleven');

set<integer>map3Keys = map3.keySet();
system.debug('map keys '+ map3Keys);

//getting value of key 7
string value7 = map3.get(7);
string value15 = map3.get(7);
system.debug('value 7 '+ value7);
system.debug('value 15 '+ value15);

boolean contains15 = map3.containsKey(15);//this will return false
boolean contains9 = map3.containsKey(9);
system.debug('contains 15 is ' + contains15);
system.debug('contains 9 is '+ contains9);