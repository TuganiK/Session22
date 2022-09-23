trigger AccountTrigger2 on Account (after update) {
    
    if(Trigger.isUpdate && Trigger.isAfter){
        
        AccountTrigger2Handler.updateCasePriority(Trigger.New, Trigger.oldMap);
    }
    
}