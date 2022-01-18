//1. Create a Map named zipCodeToCityMap which should contain the Zip code to City Name mapping.
map<integer,string> zipCodeToCityMap = new map<integer,string>();

//2. Add multiple mappings of your choice in the zipCodeToCityMap Map.
zipCodeToCityMap.put(73908,'Cary');
zipCodeToCityMap.put(48593,'Charlonton');

//3.Check if the above map contains mapping for 204101.
boolean contains204101 = zipCodeToCityMap.containsKey(204101);
system.debug('204101 contains? '+ contains204101);

//4. Print all the Zip Codes present in the zipCodeToCityMap
set<integer>zipCodeKeys = zipCodeToCityMap.keySet();
system.debug('The zip codes are '+ zipCodeKeys);

//5. Print all the City names present in the zipCodeToCityMap.
list<string> CityNames = zipCodeKeys.values();
system.debug('The city names '+ CityNames);

//6. Print the size of the zipCodeToCityMap.
system.debug('Map size is '+zipCodeToCityMap.size());

//7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap.
set<integer> uniqueZipCodeSet = zipCodeToCityMap.keySet();
system.debug('The uniqueZipCodeSet '+uniqueZipCodeSet);

//8. Create a List as cityNameList and populate it with all the city names from zipCodeToCityMap
list<string> cityNamesList =  new list<string>();
cityNamesList.addAll(cityNamesList);

//9. Check if the zipCodeToCityMap is Empty.
boolean emptyMap = zipCodeToCityMap.isEmpty();
system.debug('Is Map empty '+ emptyMap);

//10. Store the curreny exchange rate values for any 5 countries (USA, India, Canada, UK and along with the respective currency ISO codes in a Map.
map<string,decimal> countriesISOCode = new map<string,decimal>();
countriesISOCode.put('Try',8.8);
countriesISOCode.put('USD',89.2);
countriesISOCode.put('INR',45.2);
countriesISOCode.put('UK',45.2);
countriesISOCode.put('CAD',69.2);
system.debug('countriesISOCode '+ countriesISOCode);

//11. Fetch the currency conversion rate for any one country and print it.
decimal currencyConversion = countriesISOCode.get('INR');
system.debug('the currency of India is ' + currencyConversion);

//12. Check if the above Map have conversion rate for South Africa.
boolean containAfrica = countriesISOCode.containsKey('SA');
system.debug('is south Africa '+containAfrica );

//13. Create another Map which will have all the activities you are planning to do in each part of the day(all activites in Evening, in Night, in Morning, in afternoon etc)

list<string> morningActivities = new list<string>();
morningActivities.add('drinking turkish coffee');
morningActivities.add('chatting with my friends');

map<string,list<string>> myActivities = map<string,list<string>>();
myActivities.put('Morning', morningActivities);
myActivities.put('afternoon',morningActivities);
myActivities.put('evening ','drinking turkish tea');
myActivities.put('night','drinking water');
myActivities.put('evening','reading book');

//14. Check how many activities you have planned for evening
intger eveningActivities = MyActivities.size('evening');
system.debug('how many activities for evening '+eveningActivities)

//15
system.debug('if you have plan any activity for morning? '+ MorningActivities.isEmpty());
//16
list<string> MondayActivities = new list<string>{'Study', 'Grocery', 'Sport'};
list<string> TuesdayActivities = new list<string>{'Piknik', 'Cleaning', 'Work'};
list<string> WednesdayActivities = new list<string>{'Piknik', 'Swimming', 'Reading'};
list<string> ThursdayActivities = new list<string>{'Yoga', 'Cleaning', 'Work'};
list<string> FridayActivities = new list<string>{'Piknik', 'Salon', 'Work'};
list<string> SaturdaActivities = new list<string>{'Piknik', 'Cleaning', 'Work'};
list<string> SundayActivities = new list<string>{'Pray', 'Cooking', 'Work'};
map<string, list<string>> DaylyActivities = new map<string, list<string>>();
DaylyActivities.put('Monday', MondayActivities);
DaylyActivities.put('Tuesday', TuesdayActivities);
DaylyActivities.put('Wednesday',WednesdayActivities);
DaylyActivities.put('Thursday', ThursdayActivities);
DaylyActivities.put('Friday', FridayActivities);
DaylyActivities.put('Saturday', SaturdaActivities);
DaylyActivities.put('Sunday', SundayActivities);
system.debug('Day by day activities '+ DaylyActivities);
//17
system.debug('Activities for Tuesday' + DaylyActivities.get('Tuesday'));








