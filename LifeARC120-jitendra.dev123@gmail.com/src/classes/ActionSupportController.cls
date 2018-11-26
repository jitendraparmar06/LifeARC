public class ActionSupportController {
         public String accName{set;get;}
   		 public List<Account> accList{set;get;}
    public PageReference doQuery(){
    List<Account> accList= new List<Account>();
    accList=[SELECT Id,Name FROM Account LIMIT 10];
        return null;
    }
}