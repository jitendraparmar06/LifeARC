public class AccountHandler{

   public static Account insertNewAccount(String accountName){
   
    
 try{
  
         Account acctName = new Account(Name=accountName);
          
         insert acctName;
         return acctName;
         
 } catch(DMLException e){
   
           System.Debug('Error ->'+e.getMessage());
           System.debug('Stack Trace ->'+e.getStackTraceString());
           return null;
           
 } finally {
            System.debug('finally block is executed');
           }

 }


}