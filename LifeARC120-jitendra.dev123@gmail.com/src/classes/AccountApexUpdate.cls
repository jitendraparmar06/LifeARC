public class AccountApexUpdate {
    public String accVar{set;get;}
    public Account acc{set;get;}
    public List<Account> accList{set;get;}
    public void searchAccount(){
        accList = new List<Account>();
        accList=[SELECT Name FROM Account WHERE Name=:accVar];
        if(accLIst.size() > 0){
            for(Account a:accList){
                a.Name= a.Name+'_123';               
            }
            update accList;
            apexpages.addmessage(new apexpages.message(apexpages.severity.INFO,'Record is Updated'));
        }
        else{
            acc = new Account(Name=accVar);
            insert acc;
            apexpages.addmessage(new apexpages.message(apexpages.severity.INFO,'New Record is Inserted'));
        }
        
        
        
    }
}