public class AccountUpsert {
    public List<Account>accList {set;get;}
    Integer i=1;
    public AccountUpsert(){
        accList = [SELECT Id,Name FROM Account LIMIT 0];
        if(accList.size()>0){
            for(Account a:accList){
                doUpsert(a);
                i++;
            }
        }else
        {
            Account ac = new Account(Name='mohan');
            doUpsert(ac);
        }
    }
    public void doUpsert(Account obj){
        
        if(obj.Id!=null){
            upsert obj;
            System.debug(i+'record has updated');
            
        }else
        {
            insert obj;
            System.debug(i+'Record has been inserted');
        }
        
        
    }
    
}