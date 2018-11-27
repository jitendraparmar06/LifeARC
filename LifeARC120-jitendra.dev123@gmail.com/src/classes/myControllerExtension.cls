public class myControllerExtension {

    public List<Account> accountList {get;set;}
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    public myControllerExtension(ApexPages.StandardController stdController) {
        accountList = [SELECT Id, Name, Industry FROM Account WHERE Name = 'Account Test' AND Industry = 'Agriculture' LIMIT 1];
        if(accountList.size()>0){
        Contact objContact = new Contact();
        objContact.LastName = 'Test Contact';
        objContact.AccountId =   accountList[0].Id;
            
        Insert objContact;
        }
    }
}