trigger AccountPracticeTrigger on Account (before insert, before update, after update, before delete,after delete) {
    
    // NO DML Before Triggers
    
    // Scenario 1
    if(Trigger.isBefore && Trigger.IsInsert){
        
        AccountPracticeTriggerHandler.fillShippingDetails(Trigger.New);
        
    }
    
     //Scenario 4
    if(Trigger.isAfter && Trigger.isUpdate){
        AccountPracticeTriggerHandler.matchMailingAddressContacts(Trigger.New, Trigger.OldMap);
    }
    
    // Scenario 5
    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        Boolean directFlag = Trigger.isInsert;
        AccountPracticeTriggerHandler.updateAccDescription(Trigger.New, Trigger.OldMap,directFlag);
    }
    
    //Practice
   if(Trigger.isAfter && Trigger.isUpdate){
        AccountPracticeTriggerHandler.matchMailingAddressContacts(Trigger.New, Trigger.OldMap);
        AccountPracticeTriggerHandler.contactVIPUpdate(Trigger.New,Trigger.NewMap,Trigger.OldMap);
    }
    
    // Scenario 6 
    if(trigger.isBefore && trigger.isDelete){
        AccountPracticeTriggerHandler.addErrorOnDelete(trigger.old);
    }
    
    // Scenario 7 
    if(Trigger.isAfter && Trigger.isDelete){
        AccountPracticeTriggerHandler.sendEmailOnDelete(Trigger.old);
    }
    
    //Scenario 8
      if(trigger.isAfter && Trigger.isUndelete){
        AccountPracticeTriggerHandler.sendEmailOnUndelete(Trigger.new);
    }
    //Queueable Call
    if(Trigger.isAfter && Trigger.isInsert  && !system.isQueueable()){        
        system.enqueueJob(new secondJobQueueable(Trigger.new));
    }
}