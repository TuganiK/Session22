public with sharing class OpportunityCtrl {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getTopOpp(){
        return [SELECT Name, Type, StageName, Amount
                FROM Opportunity
                WHERE Name != null 
                AND Type != null
                AND StageName != null
                AND Amount != null
                WITH SECURITY_ENFORCED
                LIMIT 10];
       }

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOppsByStage(String stage) {
        return [SELECT Name, Type, StageName, Amount
                FROM Opportunity
                WHERE StageName = :stage
                WITH SECURITY_ENFORCED
                LIMIT 10];
    }
}