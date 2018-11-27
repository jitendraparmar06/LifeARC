public class AccountApexController {
    public Account acc{set;get;}
    public String accName{set;get;}
    public String accIndustry{set;get;}
    public String accType{set;get;}
    public string industry {get;set;}
    public AccountApexController(){
         acc  = new Account();
         industry = '';
    }
    public pageReference save(){
        
        acc.Name = accName;
        acc.Industry = industry;
        acc.Type = accType;
        insert acc;
        PageReference page = new PageReference('/'+acc.Id);
        page.setRedirect(true);
        return page;
    }
    public pageReference cancel(){
        pageReference page = new ApexPages.StandardController(acc).view();
        page.setRedirect(true);
        return page;   
    }
    public List<SelectOption> getMySelectOptions() {

    // do a field describe of the picklist field
    Schema.DescribeFieldResult describeResult = Account.Industry.getDescribe();

    // get the picklist values from this describe result
    List<Schema.PicklistEntry> entries = describeResult.getPicklistValues();

    // list of options to be returned to the VF page
    List<SelectOption> optionsToReturn = new List<SelectOption>();

    for (Schema.PicklistEntry pEntry : entries) {
        if (pEntry.isActive()) {
            optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
        }
    }

    return optionsToReturn;
}
}