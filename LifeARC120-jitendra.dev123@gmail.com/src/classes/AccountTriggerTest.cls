@isTest
private class AccountTriggerTest {
    @isTest static void updateAccounts(){
        
        List<Account> accts = new List<Account>();
        for(Integer i=0; i<200; i++){
            Account a = new Account(Name='account'+i,BillingState='CA',ShippingState='bhopal');
            accts.add(a);
        }
        
        Test.startTest();
        insert accts;
        Test.stopTest();
        Integer con =  [SELECT Count() FROM Account WHERE ShippingState = 'CA' ];
         System.assertEquals(200,con);

    }

}