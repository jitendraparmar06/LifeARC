public class AccountContacts {
    public Id accId;
    public AccountContacts(ApexPages.StandardController con){
        accId= con.getRecord().Id;
    }
    public List<Contact> getContacts(){
        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();
        accList= [SELECT Id, Name ,(SELECT Id ,FirstName,LastName FROM Contacts) FROM Account Where Id=:accId];
        for(Account a:accList){
            for(Contact c:a.Contacts){
                conList.add(c);
            }
        }
      return conList;
      }  
    }