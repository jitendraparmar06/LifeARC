trigger AccountTriggerNew12 on Account (before delete) {
    
    RecordType donorRecType = [SELECT ID FROM RecordType WHERE sObjectType = 'Account' AND DeveloperName = 'Account_Customer'];
    
    if(Trigger.isDelete && Trigger.isBefore){
        for(Account ac : trigger.old){
            if(ac.RecordTypeId==donorRecType.Id){
                ac.addError('this record can not be deleted');
            }
        }
    }
}