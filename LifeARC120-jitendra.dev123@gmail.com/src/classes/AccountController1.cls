public class AccountController1 {
    public List<Account> accountList{set;get;}
    public AccountController1(){
        List<Account> accountlist= new List<Account>();
        accountlist= [SELECT Id,Name,Industry FROM Account LIMIT 10];
       
    }
}