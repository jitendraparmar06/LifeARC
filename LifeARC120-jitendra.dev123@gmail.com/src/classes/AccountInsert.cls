public class AccountInsert {
   
    public Account Account{set;get;}
    public Id ids {set;get;}
       public AccountInsert(){
           ids=Apexpages.currentPage().getParameters().get('Id');
           Account = (ids==null)? new Account() : [SELECT Name, BillingCity,BillingState,Ownerid FROM Account WHERE Id =:ids];
                }
    
   public PageReference save(){
        insert Account;
        PageReference page = new ApexPages.StandardController(Account).view();
        page.setRedirect(true);
        return page;
    }
    public PageReference cancel(){
        PageReference page1 =  ApexPages.currentPage(); 
        page1.setRedirect(true);
        return page1;
    }
}