public class AccountApexClass {
    public String accVar {set;get;}
    public Account acc{set;get;}
    public List<Account> accList{set;get;}
    public AccountApexClass(){
        
    }
    public void searchAccount(){
        if(accVar!=null){
            accList = [SELECT Name FROM Account WHERE Name=:accVar];
            if(accList.size() == 0){
                acc = new Account(Name=accVar);
                insert acc;
                
            }else{
                System.debug('Account Record Already Exists');
                apexpages.addmessage(new apexpages.message(apexpages.severity.Error,'Record Already Exist'));
                
            }
            
        }
        
    }
}