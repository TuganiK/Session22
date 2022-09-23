@RestResource(urlMapping='/Opportunities/*')
global with sharing class OpportunityManager {

    global class CustomException extends Exception{}
   
    @HttpGet
    global static Opportunity getOpp(){
        RestRequest request = RestContext.request;
        String requestURL = request.requestURI;
        String oppId = requestURL.substring(requestURL.lastIndexOf('/')+1);
        List<Opportunity> oppList = [Select Name,StageName,CloseDate from Opportunity where Id =: oppId];
        if(!oppList.isEmpty()){
            return oppList[0];
        }else{
            throw new CustomException('Opportunity for the given Id not present in Org');
        }        
    }
    @HttpPost
    global static Id createOpp(String NameReq, String StageNameReq, Date CloseDateReq){
        //Date - If you receive input as a string, convert to date as per the respective format
        //if(isBlank(NameReq))
        if((NameReq == '' || NameReq== NULL) ||
            (StageNameReq == '' || StageNameReq==NULL) ||
            (CloseDateReq==NULL)){
                throw new CustomException('Mandatory fields missing!');
        }else{
            Opportunity opp = new Opportunity();
            opp.Name = NameReq;
            opp.StageName = StageNameReq;
            opp.CloseDate = CloseDateReq; //Date.valueOf(CloseDateReq); 
            insert opp;
            return opp.id;
        }
        
       
    }
    @HttpPatch
    global static Opportunity updateOpp(){
        RestRequest request = RestContext.request;
        String requestURL = request.requestURI;
        String oppId = requestURL.substring(requestURL.lastIndexOf('/')+1);
        Opportunity opp = [Select Id,Name,StageName,CloseDate,ExpectedRevenue from Opportunity where Id =: oppId];
        String jsonString = request.requestBody.toString();
        //Deserialize the request
        Map<String,Object> oppValues = (Map<String,Object>)JSON.deserializeUntyped(jsonString);
        for(String fieldName : oppValues.keySet()){
            opp.put(fieldName, oppValues.get(fieldName));
        }
        update opp;
        return opp;
    }
}