/* Requirement 2
When ticket is ‘completed’ - check if all the ticket of project is  completed/cancelled, if yes, then automatically mark the Project  ‘complete’ */

public with sharing class SalesforceTicketTriggerHandler {
    public static void projMarkComplete(List<Salesforce_Ticket__c> tcktTriNew){
        //Seggregate the Ids marked as complete
        Set<ID> projIDS = new Set<ID>();
        for(Salesforce_Ticket__c tckt : tcktTriNew){
            if(tckt.Status__c == 'Completed'){                
                projIDS.add(tckt.Salesforce_Project__c);
            }
        }
      
        //SOQL for checking Child tickets
        List<Salesforce_Project__c> projWithClosedTckts = [Select ID,Status__c,(Select ID, Status__c FROM Salesforce_Tickets__r 
                                                           where Status__c != 'Completed' AND Status__c !='Cancelled') 
                                                           FROM Salesforce_Project__c where ID IN :projIDS];
        if(!projWithClosedTckts.isEmpty()){
            for(Salesforce_Project__c proj : projWithClosedTckts){
                if(proj.Salesforce_Tickets__r.isEmpty()){
                    proj.Status__c = 'Completed';
                }                
            }
            update projWithClosedTckts;
        }
    }
 /*  Requirement 1 
While updating Salesforce Project’s status = ‘Complete’.
It should not allow user to mark Salesforce Project as complete,  if any ticket of that project is not completed.*/
    public static void checkForOpenTickets(List<Salesforce_Project__c> projNew,Map<ID,Salesforce_Project__c> projNewMap){        
        //Add only the IDs if it is marked as Completed
        Set<Id> projIds = new Set<Id>();
        for (Salesforce_Project__c proj : projNew){
            if(proj.Status__c == 'Completed'){
                projIds.add(proj.id);
            }
        }
        //SOQL to fetch open tickets for the Project
        if(!projIds.isEmpty()){        
            List<Salesforce_Project__c> projWithTicketsOpen = [Select ID,Status__c,(Select ID,Status__c from Salesforce_Tickets__r where Status__c !='Completed') FROM Salesforce_Project__c where ID IN:projIds];
            for(Salesforce_Project__c proj : projWithTicketsOpen){
                if(proj.Salesforce_Tickets__r.size() > 0){
                    //AddError can be used only with Context variables
                    //proj.addError('test'); - See the error
                    projNewMap.get(proj.id).addError('Project cannot be completed with Open Tickets');
                }
            }
        }
    }
    
}