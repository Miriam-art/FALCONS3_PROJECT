public with sharing class Spponacular{

    public static final String url = 'https://api.spoonacular.com';
    private static final String apiKey='f4c6c78b6ace4aa28f3da74e2ddd0fe7';



    public static void getRandomRecipes(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url +'/recipes/random?apiKey='+ apiKey);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200){
        System.debug('Response:'+response.getBody());
            
        }else{
            System.debug('Response:'+response.getStatusCode());
        }
    }

 public static void getRecipeInformation(String recipeId){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url+'/recipes/'+recipeId+'/information?apiKey=');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200){
        System.debug('Response:'+response.getBody());
            
        }else{
            System.debug('Response:'+response.getStatusCode());
        }
    }

    public static void searchRecipesByIngredients(String ingredients){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url + '/recipes/findByIngredients?apiKey='  +apiKey +'&ingredients=' +ingredients);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200){
        System.debug('Response:'+response.getBody());
            
        }else{
            System.debug('Response:'+response.getStatusCode());
        }
    }
}