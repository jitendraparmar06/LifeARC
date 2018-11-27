public class SecondController {

    Account acct;

    public PageReference save() {
        update acct;
        PageReference objPR = new PageReference('/'+account.Id);
        return objPR;
    }

    public String getName() {
        return 'SecondController';
    }

    public Account getAccount() {
        if(acct == null) 
            acct = [select id, name, site from Account 
                       where id =: ApexPages.currentPage().getParameters().get('id')];
        return acct; 
    } 
}