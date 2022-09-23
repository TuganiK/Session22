public with sharing class UsersPOSTCallout {
   
        public static void createUsersPOST(){
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            HttpResponse response = new HttpResponse();
            //Response
            request.setEndpoint('https://gorest.co.in/public/v2/users');
            request.setMethod('POST');
            request.setHeader('Content-Type', 'application/json');
            request.setHeader('Accept', 'application/json');
            String token = '6449548999f35b700f0f65bdf49e8406cfc40b3d77270c1aca27770a35949f4b';
            request.setHeader('Authorization','Bearer ' + token);
            UsersPOSTWrapper wrapper1 = new UsersPOSTWrapper(1,'Tunti','book758@gmail.com','Male','Active');
            String jsonString = JSON.serialize(wrapper1);
            System.debug('request JSON: '+ jsonString);
            request.setBody(jsonString);

            response = http.send(request);
           System.debug('Response Code : ' +response.getStatusCode());
        }

}