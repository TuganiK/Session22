public with sharing class InvocableFlowOppCallout {
    @InvocableMethod( label='Make Callout' description='Connected App Callout')
    public static void CreateOpp(List<NewOppRequestWrapper> inputs) {
        NewOppRequestWrapper wrap = inputs.get(0);
        String jsonInput = JSON.serialize(wrap);
        createOppCallout(jsonInput);        
    }

public class NewOppRequestWrapper {
    @InvocableVariable(label='Opportunity Name')
    public String Name;
    @InvocableVariable(label='Opportunity Stage Name')
    public String StageName;
    @InvocableVariable(label='Close Date')
    public Date CloseDate;      
}
    
    @future(callout=true)
    public static void createOppCallout(String jsonInput) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();            
        request.setMethod('POST');
        request.setEndpoint('callout:ConnectedAppCredential/services/apexrest/Opportunities/');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Accept', 'application/json');
        request.setBody(jsonInput);
 
        response = http.send(request); 
        System.debug('Status' +response.getStatusCode());
        System.debug(response.getBody());
    
    }
}