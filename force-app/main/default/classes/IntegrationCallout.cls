public with sharing class IntegrationCallout {

    private static final String SPOONACULAR_API = 'https://api.spoonacular.com'; 
    private static final String API_KEY  = '8ef4a49a72bd45249e6a030715930a14';

    public static void getRandomRecipe() {
        Http http = new http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(SPOONACULAR_API+'/recipes/random');
        request.setMethod('GET');
        request.setHeader('content-type', 'application/json');
        request.setHeader('x-api-key', API_KEY);

        HttpResponse response = http.send(request) ;
        System.debug('Response code : '+response.getStatusCode());

        if(response.getStatusCode() == 200) {
            System.debug('Response : '+response.getBody());
        }
    }

    public static void getRecipeInformation(Integer informationId) {
        Http http = new http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(SPOONACULAR_API+'/recipes/'+informationId+'/information');
        request.setMethod('GET');
        request.setHeader('content-type', 'application/json');
        request.setHeader('x-api-key', API_KEY);

        HttpResponse response = http.send(request) ;
        System.debug('Response code : '+response.getStatusCode());

        if(response.getStatusCode() == 200) {
            System.debug('Response : '+response.getBody());
        }
    }

    public static void getRecipeByIngredient(String ingredients) {
        Http http = new http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(SPOONACULAR_API+'/recipes/findByIngredients?ingredients='+ingredients);
        request.setMethod('GET');
        request.setHeader('content-type', 'application/json');
        request.setHeader('x-api-key', API_KEY);

        HttpResponse response = http.send(request) ;
        System.debug('Response code : '+response.getStatusCode());

        if(response.getStatusCode() == 200) {
            System.debug('Response : '+response.getBody());
        }
    }
}
