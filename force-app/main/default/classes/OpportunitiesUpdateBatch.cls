public  class OpportunitiesUpdateBatch implements DataBase.Batchable <SObject> {

 public List<Opportunity> start(Database.BatchableContext bc) {
            return [select stagename, id, point__c from opportunity];
        }
        public void execute (Database.BatchableContext bc, List<opportunity> scopeList) {
            map<string, OpportunityPointStage__c> oppMap = OpportunityPointStage__c.getAll();
            //key = name(string)
            //value = Sobject record
            system.debug('opp map : ' + OppMap);
            for(opportunity eachOpp : scopeList){
                //get one custom setting record
                if(OppMap.ContainsKey(eachOpp.stagename)){
                    OpportunityPointStage__c ops = OppMap.get(eachOpp.stagename);
                    eachOpp.Points__c = ops.Point__c;  //Opportubnity objc fields is Points__c, custom setting fields is ops.Point__c
                }
            }              
            update scopeList;
        }

        public void finish(Database.BatchableContext bc) {
            System.debug('Finish method called ');
        }
   

}