@isTest
public class AccountApexUpdate_Test {
    public static testMethod void methodAccount1(){
        AccountApexUpdate objAccountApexUpdate = new AccountApexUpdate();
        objAccountApexUpdate.accVar = 'Test';
        objAccountApexUpdate.searchAccount();     
    }
    public static testMethod void methodAccount2(){
        Account a = new Account(Name='Test');
        insert a;
        AccountApexUpdate objAccountApexUpdate = new AccountApexUpdate();
        objAccountApexUpdate.accVar = 'Test';
        objAccountApexUpdate.searchAccount();     
    }
    
}