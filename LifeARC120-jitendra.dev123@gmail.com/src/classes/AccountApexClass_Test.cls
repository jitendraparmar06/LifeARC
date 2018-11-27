@isTest
public class AccountApexClass_Test {
    public static testMethod void Method1(){
       
        AccountApexClass objAccountApexClass = new AccountApexClass();
       
       
         objAccountApexClass.accVar = 'sathya';
        objAccountApexClass.searchAccount();
    }
    public static testMethod void method2(){
         Account acc = new Account(Name='Sathya');
        insert acc;
        
        AccountApexClass objAccountApexClass = new AccountApexClass();
       
       
         objAccountApexClass.accVar = 'sathya';
        objAccountApexClass.searchAccount();
    }

}