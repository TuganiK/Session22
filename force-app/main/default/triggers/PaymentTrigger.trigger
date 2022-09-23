trigger PaymentTrigger on Payment__c (before insert,before update) {
     
     if(Trigger.isInsert && Trigger.isBefore){
          PaymentTriggerHandler.beforeInsert(Trigger.New);
     }
   
     if(Trigger.isBefore && Trigger.isUpdate){
         PaymentTriggerHandler.beforeUpdate(Trigger.New,Trigger.OldMap);
     }
}