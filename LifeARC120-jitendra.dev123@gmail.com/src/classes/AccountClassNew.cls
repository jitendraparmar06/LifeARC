public class AccountClassNew {
    public Account objAccount;
    public AccountClassNew(){
        objAccount = new Account(Name='jitu');
    }
    public void doSave(){
        insert objAccount;
    }
}