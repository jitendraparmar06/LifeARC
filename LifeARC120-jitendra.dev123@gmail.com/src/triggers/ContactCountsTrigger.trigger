trigger ContactCountsTrigger on Contact (after delete,after insert,after undelete,after update) {
    List<Account> UpdateAccList= new List<Account>();
    List<Contact> UpdatedConList = new List<Contact>();
    List<Account> accList = new List<Account>();
    Set<String> Ids= new Set<String>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for(Contact c: trigger.new){
                if(c.AccountId!=null){
                    Ids.add(c.AccountId);
                    accList = [SELECT Id,Name,ContactsCount__c,(SELECT Id,Name FROM Contacts) FROM Account WHERE Id IN:Ids];
                    for(Account a:accList){
                        for(Contact con:a.Contacts){
                            UpdatedConList.add(con);
                        }
                        a.ContactsCount__c= UpdatedConList.size();
                        UpdateAccList.add(a);
                    }
                }
            }
            update UpdateAccList;
        }
        if(trigger.isDelete){
            for(Contact cn:trigger.old){
                if(cn.AccountId !=null){
                    Ids.add(cn.AccountId);
                    accList= [SELECT Id,Name,ContactsCount__c,(SELECT Id,Name FROM Contacts) FROM Account WHERE Id IN:Ids];
                    for(Account ac :accList){
                        for(Contact c :ac.Contacts){
                            UpdatedConList.add(c);
                        }
                        ac.ContactsCount__c= UpdatedConList.size();
                        UpdateAccList.add(ac);
                    }   
                }
            }
            update  UpdateAccList;
        }
    }    
}