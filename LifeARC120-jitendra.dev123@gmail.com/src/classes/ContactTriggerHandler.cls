public class ContactTriggerHandler{
    public static void calculateCountOfContactOnInsert(List<Contact> contactList){
        contactCountCalculation(contactList);
    }
    public static void calculateCountOfContactOnDelete(List<Contact> contactList){
        contactCountCalculation(contactList);
    }  
    public static void contactCountCalculation(List<Contact> contactList){
        Set<String> accountIdSet = new Set<String>();
        List<Account> accountToUpdateList = new List<Account>();
        for(Contact objContact : contactList){
            accountIdSet.add(objContact.AccountId);
        }
        for(Account objAccount : [SELECT Id, ContactsCount__c, (SELECT Id FROM Contacts) FROM Account WHERE Id IN : accountIdSet]){
            objAccount.ContactsCount__c = objAccount.contacts.size();
            accountToUpdateList.add(objAccount);
        }
        if(accountToUpdateList.size()>0){
            update accountToUpdateList;
        }    
    }  
}