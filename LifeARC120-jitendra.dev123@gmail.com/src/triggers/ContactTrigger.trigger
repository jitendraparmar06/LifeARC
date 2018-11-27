trigger ContactTrigger on Contact (after insert, after delete,after update ,after Undelete) {
    if(Trigger.isAfter){
        if(Trigger.isInsert||Trigger.isUndelete){
            ContactTriggerHandler.calculateCountOfContactOnInsert(Trigger.New);
        }
        if(Trigger.isDelete){
            ContactTriggerHandler.calculateCountOfContactOnDelete(Trigger.old);
        } 
        if(Trigger.isUpdate){
            ContactTriggerHandler.calculateCountOfContactOnInsert(Trigger.New);
            ContactTriggerHandler.calculateCountOfContactOnDelete(Trigger.old); 
        }
    }
}