public class ActionFunctionController {
    public String accName{set;get;}
    public void createAccount(){
        system.debug('accName'+accName);
        Account acc = new Account(Name = accName);
        insert acc;
    }
}