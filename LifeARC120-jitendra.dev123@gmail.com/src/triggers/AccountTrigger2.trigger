trigger AccountTrigger2 on Account (before insert,before update) {
    for(Account ac : trigger.new){
        if(ac.Rating == null){
            ac.adderror('Industry field is mandatory');
        }
    }

}