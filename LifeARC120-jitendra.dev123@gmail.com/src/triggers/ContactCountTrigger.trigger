trigger ContactCountTrigger on Contact (after insert, after Delete) {
    Set<Id> accIds = new Set<Id>();
    List<Account> UpdatedAcc = new List<Account>();
    if(Trigger.isAfter){
        if(Trigger.isdelete){
            for(Contact c : trigger.old){
                accIds.add(c.AccountId);
                
            }
        }
        if(Trigger.isInsert){
            for(Contact c : trigger.new){
                accIds.add(c.AccountId);
                
            }
        }
    }
    system.debug('accIds'+accIds);
    List<Account> accList = [SELECT Id,Name,(SELECT Id,AccountId FROM Contacts) FROM Account WHERE Id IN:accIds];
     system.debug('accList'+accList);
    for(Account ac: accList){
        ac.ContactsCount__c = ac.Contacts.size();
        UpdatedAcc.add(ac);   
    }
    update UpdatedAcc;
    
}