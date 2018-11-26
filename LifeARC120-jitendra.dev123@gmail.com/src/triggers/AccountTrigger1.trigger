trigger AccountTrigger1 on Account (before insert,before update) {
    if(trigger.isbefore && trigger.isinsert){
        Trg_helper.before_insert(trigger.new);
       
    }
    if(trigger.isbefore && trigger.isupdate){
        Trg_helper.before_update(trigger.new);
      
    }
}