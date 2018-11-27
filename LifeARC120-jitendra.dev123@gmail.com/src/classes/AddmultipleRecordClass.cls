public class AddmultipleRecordClass {
    
    public Account delAccount;
    public List < Account > addAccountList {get;set;}
    public List < Account > delAccountList {get;set;}
    public List < Account > accountList {get;set;}
    public Integer rowIndex {get;set;}
    
    public AddmultipleRecordClass()
    {
        accountList=new list<Account>();
        Account acc = new Account();
        accountList.add(acc);
    }
    
    Public void addRow()
    {
        Account acc = new Account();
        accountList.add(acc);
    }
    public void saveAccount() {
        for(Integer i=0; i<accountList.size(); i++)
        {
            upsert accountList;
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Info,'Record Saved Successfully.');
            ApexPages.addMessage(myMsg); 
            
        }
        
    }
    public void deleteRow() {
        rowIndex = Integer.valueOf(ApexPages.currentPage().getParameters().get('rowIndex'));
        delAccount = accountList.remove(rowIndex);
        // List<Account> delAccountList = new List<Account>();
        // delAccountList.add(delAccount);
    }  
    public pageReference cancel(){
        
        Schema.DescribeSObjectResult result = Account.SObjectType.getDescribe(); 
        PageReference pageRef = new PageReference('/' + result.getKeyPrefix()); 
        pageRef.setRedirect(true); 
        return pageRef; 
        
    }
  
}