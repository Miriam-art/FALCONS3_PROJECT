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
list<string> listCandidatesG3 = new list<string>{'Emir','Erhan','Ceyhun','Elvira','Nuriya'};

//creating map of string, list<string>
map<string, list<string>> mapGroupsCandidate = new map<string, list<string>>();
mapGroupsCandidate.put('Group1', listCandidatesG1); //right????????
mapGroupsCandidate.put('Group2', listCandidatesG2);
mapGroupsCandidate.put('Group3', listCandidatesG3);


for(string eachGroupName : mapGroupsCandidate.keySet()){
    list<string> eachListOfCandidate = mapGroupsCandidate.get(eachGroupName);
    for(string eachFalconNameValue : eachListOfCandidate){
        system.debug(eachFalconNameValue + ' is in '+ eachGroupName);

    }

}