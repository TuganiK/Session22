public with sharing class TalebeCtrl {

    @AuraEnabled
    public static List<Talebe_Name__c> searchStudentsByPostalCode(String postalCode){
        postalCode = '%' +postalCode+ '%';
        return [SELECT ID, Student_Name__c, Class__c, Mobile__c, Email__c, Postal_Code__c
                FROM Talebe_Name__c
                WHERE Postal_Code__c LIKE :postalCode
                WITH SECURITY_ENFORCED
                ];
    }
}