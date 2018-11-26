public class AccountContactHtmlClass {
   
    public List<Account> accounts {get; private set;}
    
    public AccountContactHtmlClass(){
        this.accounts = [Select Id, Name, (Select Id, FirstName, LastName, MailingCity, MailingState from Contacts) From Account LIMIT 20];
	}


}