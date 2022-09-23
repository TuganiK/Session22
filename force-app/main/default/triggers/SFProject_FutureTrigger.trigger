trigger SFProject_FutureTrigger on Salesforce_Project__c (after insert, after update) {
    
    if(trigger.isAfter){
        if(trigger.isInsert){
            //newMap - <ID,Object>
            SFProject_FutureTriggerHandler.updateProjDescription(Trigger.newMap.keySet());  
        }
        if(trigger.isUpdate){
            SFProject_FutureTriggerHandler.prepProjIds(Trigger.new,Trigger.oldMap);
        }
        
    }
}