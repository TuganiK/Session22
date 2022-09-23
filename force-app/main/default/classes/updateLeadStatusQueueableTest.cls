@isTest
public with sharing class updateLeadStatusQueueableTest {
    
    @isTest 
    public static void testMethod1(){
        List<Lead> leadList = TestDataFactory.createLeads(50);
        updateLeadStatusQueueable leadQueue = new updateLeadStatusQueueable(leadList);
        //Execute the Queueable 
        test.startTest();
            system.enqueueJob(leadQueue);
        test.stopTest();
        List<Lead> leadToUpdate = [SELECT Status FROM Lead];
        
        System.assertEquals('Closed - Converted', leadToUpdate.get(0).Status,'Error Message');
    }
}