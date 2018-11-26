trigger AccountTrigger4 on Account (before insert,before update) {
    for(Account ac: trigger.new){
        List<Account> accList = [SELECT Id,Name FROM Account WHERE Name=:ac.Name];
        if(accList.size()>0){
            ac.adderror('Duplicate record is not allowed');
        }
    }

}