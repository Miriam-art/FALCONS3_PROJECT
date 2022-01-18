public  class TechEventsHandler {
    public static void deleteTechEvents(List<Event_Pro__c> listEvents){
        if(!listEvents.isEmpty()){
            delete(listEvents);
        }
    }
}
