public with sharing class CaseConnectedAppCallout {
    public static Http http = new Http();
    public static HTTPResponse response;
    public static HttpRequest request;
 
    public class NewCaseRequestWrapper {
        public String subject {get; set;}
        public String status {get; set;}
        public String origin {get; set;}
        public string priority {get; set;}
    }
 
    public static void getCase(Id caseId) {
 
        request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('callout:ConnectedAppCredential/services/apexrest/Cases/' + caseId);
         request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Accept', 'application/json'); 
        response = http.send(request); 
        System.debug('Status' +response.getStatusCode());
        System.debug(response.getBody());
    }
 
    public static void addCase(NewCaseRequestWrapper newCase) {
 
        request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint('callout:ConnectedAppCredential/services/apexrest/Cases');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Accept', 'application/json');
        request.setBody(JSON.serialize(newCase));
 
        response = http.send(request); 
        System.debug('Status' +response.getStatusCode());
        System.debug(response.getBody());
    }
 
    public static void deleteCase(Id caseId) {
 
        request = new HttpRequest();
        request.setMethod('DELETE');
        request.setEndpoint('callout:ConnectedAppCredential/services/apexrest/Cases/' + caseId);
 
        response = http.send(request); 
 
        System.debug(response.getBody());
    }
}