public class httpClass {
   // public static HttpResponse makeGetCallout() {
@future(callout=true)
    public static void makeGetCallout(){ 
    Http http = new Http();
        HttpRequest request = new HttpRequest();
        //endpoint is a url that u placed in the sales remote site
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        //http request Get is used in here to set the method
        request.setMethod('GET');
       
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Received the following animals:');
            for (Object animal: animals) {
                System.debug(animal);
            }
        }
        //return response;
    }
    
    public static HttpResponse makePostCallout() {
       
 Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"mighty moose"}');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        }
        return response;
    }

    

}