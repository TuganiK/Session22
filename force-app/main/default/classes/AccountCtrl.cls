public with sharing class AccountCtrl {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts() {
        return [SELECT Name, Type, Industry, AnnualRevenue 
                FROM Account 
                WITH SECURITY_ENFORCED
                ORDER BY AnnualRevenue DESC 
                LIMIT 10 ];
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsByIndustry(String industry) {
        return [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE Industry = :industry
                ORDER BY Name
                LIMIT 10];
    }
    // imperativeApex3
    @AuraEnabled(cacheable=true)
    public static List<Account> getAllAccounts() {
       return [SELECT Id, Name 
               FROM Account 
               WITH SECURITY_ENFORCED 
               ORDER BY Name];
    }

    @AuraEnabled
    public static Integer countContacts(Id accId) {
       List<Contact> contacts = [SELECT Id 
                                 FROM Contact 
                                 WHERE AccountId = :accId 
                                 WITH SECURITY_ENFORCED];
       return contacts.size();
    }
    
     // Assigment3 UC1:
     @AuraEnabled(cacheable=true)
     public static list<Account> getAccounts(String search){
         return [SELECT Id,Name,Type,Industry,AnnualRevenue 
                 FROM Account Where Name 
                 LIKE :'%'+search+'%' 
                 WITH SECURITY_ENFORCED];
     }

    // Assigment3 UC2:
    @AuraEnabled(cacheable=true)
    public static Decimal getOppOfTotalAmount(Id accId){
        Decimal totalAmount = 0;
        List<Opportunity> opps = [SELECT Id, Amount 
                                 FROM Opportunity 
                                 WHERE AccountId = :accId];
        for (Opportunity each : opps) {
            totalAmount = totalAmount + each.Amount;
        }
        return totalAmount;
    }
}