@isTest
public class MyControllerExtensionTest {
    public static testMethod void greetingsTest(){
        List<Account> accountList = new List<Account>();
        Account objAccount = new Account();
        objAccount.Name='Account Test';
        objAccount.Industry='Agriculture';
        insert objAccount;
               
        ApexPages.StandardController s = new ApexPages.StandardController(objAccount);
        myControllerExtension objmyControllerExtension = new myControllerExtension(s);        
    }
}