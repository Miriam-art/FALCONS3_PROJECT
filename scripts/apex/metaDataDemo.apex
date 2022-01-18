map<string, Email_domain__mdt> mapEd = Email_domain__mdt.getAll();
system.debug('mdt = ' + mapEd);
List<Email_domain__mdt> listED = mapEd.values();
for(Email_domain__mdt eachEdm: listED){
    system.debug('domain is = ' + eachEdm.Domain__c);
}