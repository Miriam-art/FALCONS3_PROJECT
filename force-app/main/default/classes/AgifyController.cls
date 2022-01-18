public with sharing class AgifyController{
    public static void guessAgeForLead(String leadId){
        try{
            Lead lead=[Select Id, LastName, Age__c FROM Lead WHERE Id =: leadId];

            String endPoint = 'https://api.agify.io/?name' + lead.LastName;
           

            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint(endPoint);
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            // If the request is successful, parse the JSON response.
             integer statusCode = response.getStatusCode();
            if (response.getStatusCode() == 200){
                // Deserialize the JSON string into collections of primitive data types.
                Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
                // Cast the values in the 'animals' key as a list
                System.debug('results:'+results);
                Integer age = (Integer)results.get('age');
                lead.Age__c = age;
                update lead;
            }else if(statusCode == 422){
                ErrorLogHelper.createErrorLog('Agify422',response.getBody());
            }

        } catch (Exception exc){
          System.debug('Exc:'+exc.getMessage());
          ErrorLogHelper.createErrorLog('guessAgeForLead',exc.getMessage());
        }
    }
}