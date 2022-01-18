//Group 1 list of candidates
list<string> listCandidatesG1 = new list<string>();
listCandidatesG1.add('Babur');
listCandidatesG1.add('Zhannat');
listCandidatesG1.add('DovraN');

//group 2 list of candidates
list<string> listCandidatesG2 = new list<string>();
listCandidatesG2.add('Sadi');
listCandidatesG2.add('Betul');
listCandidatesG2.add('Dovlet');

//cretaing map of string list<string>
map<string,list<string>> mapGroupCandidate = new map<string, list<string>>();
mapGroupCandidate.put('Group1',listCandidatesG1);
mapGroupCandidate.put('Group2',listCandidatesG2);

system.debug('map of group name and its canditades '+mapGroupCandidate);

//get value of Gropus
list<string>group2Value =  mapGroupCandidate.get('Group2');
system.debug('group 2 candidates '+ group2Value);

//key set of map
set<string> setOfGroupNames = mapGroupCandidate.keySet();

//values of map
list<list<string>>listOfCandidateNameList = mapGroupCandidate.values();
system.debug('group name set '+ setOfGroupNames);
//system.debug();