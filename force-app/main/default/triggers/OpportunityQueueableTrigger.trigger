trigger OpportunityQueueableTrigger on Opportunity (after insert,after update,after delete, after undelete) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            OpportunityQueueableTriggerHandler.afterInsert_Delete_UndeleteOpp(Trigger.new);
        }
        if(Trigger.isDelete){
            OpportunityQueueableTriggerHandler.afterInsert_Delete_UndeleteOpp(Trigger.Old);
        }
        if(Trigger.isUndelete){
            OpportunityQueueableTriggerHandler.afterInsert_Delete_UndeleteOpp(Trigger.new);
        }
        if(Trigger.isUpdate){
            OpportunityQueueableTriggerHandler.afterUpdate(Trigger.newMap,Trigger.oldMap);
        }
    }
}