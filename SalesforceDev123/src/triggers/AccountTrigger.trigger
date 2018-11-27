trigger AccountTrigger on Account (before insert,before update,after insert,after update,before delete,after delete, after undelete) {
          if(trigger.isBefore && trigger.isInsert){
          AccountTriggerHandler.CreateAccounts(trigger.new);
    }
}