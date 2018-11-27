trigger AccountTrigger3 on Account (before delete) {
    for(Account ac: trigger.old){
        ac.adderror('existing record is not deleted');
    }

}