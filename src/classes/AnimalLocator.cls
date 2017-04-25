public class AnimalLocator {
	
    public static String getAnimalNameById (Integer i){
        
       	Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+i);
		request.setMethod('GET');
		HttpResponse response = http.send(request);
		// If the request is successful, parse the JSON response.
		
        String s = '';
		system.debug(response.getStatusCode());
        system.debug(response.getBody());
        if (response.getStatusCode() == 200) 
        {
    	// Deserialize the JSON string into collections of primitive data types.
    	Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    	
        // Cast the values in the 'animals' key as a list
    	Map<String, Object> animals = (Map<String, Object>) results.get('animals');
    	System.debug('Received the following animals:'+ animals);
    	s = string.valueof(animals.get('name'));
        System.debug(s);
		}
        return s;
    }
}