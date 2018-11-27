public class AccountTriggerHandler {
     public static void CreateAccounts(List<Account> acct){
       
        for(Account a: acct){
            if(a.ShippingState!=a.BillingState){
              a.ShippingState = a.BillingState;
              
            } 
         }
       
      }

}