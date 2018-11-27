@isTest
public class Industry_Test {
    public static testMethod void method3(){
        Account a = new Account(Name='test');
        insert a;
        AccountApexUpdate objAccountApexUpdate = new AccountApexUpdate();
        objAccountApexUpdate.accVar = 'test';
        objAccountApexUpdate.searchAccount();
    }
    public static testMethod void method4(){
         AccountApexUpdate objAccountApexUpdate = new AccountApexUpdate();
         objAccountApexUpdate.accVar = 'test';
         objAccountApexUpdate.searchAccount();
    }
}