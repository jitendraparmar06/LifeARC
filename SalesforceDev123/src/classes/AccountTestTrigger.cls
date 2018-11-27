@isTest
public class AccountTestTrigger {
    public static testMethod void test1(){
        Account ac = new Account(Name='Mahesh Proventeq');
        insert ac;
        Test.startTest();
        delete ac;
        Test.stopTest();
    }

}