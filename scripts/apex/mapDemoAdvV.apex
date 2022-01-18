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


//creating map of string, list<string>
map<string, list<string>> mapGroupsCandidate = new map<string, list<string>>();
mapGroupsCandidate.put('Group1', listCandidatesG1); //right????????
mapGroupsCandidate.put('Group2', listCandidatesG2);

system.debug('map of group name and its candidates ' + mapGroupsCandidate);

//get value of Group2. 
list<string> group2Value = mapGroupsCandidate.get('Group2');
system.debug('group 2 candidates  ' + group2Value );

//key set of map
set<string> setOfGroupNames = mapGroupsCandidate.keySet();

//values of map
list<list<string>> listOfCandidateNameList = mapGroupsCandidate.values();
system.debug('group names set ' + setOfGroupNames);
system.debug('listOfCandidateNameList = ' + listOfCandidateNameList);