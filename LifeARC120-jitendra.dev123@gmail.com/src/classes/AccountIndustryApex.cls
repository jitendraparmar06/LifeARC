public class AccountIndustryApex {
    public String accIndustry{set;get;}
    public List<Account> accList{set;get;}
    public Boolean selected{set;get;}
    
    public AccountIndustryApex(){
        selected = false;
        accIndustry = '';
    }
    
    public void selectedMethod(){
        
        accList = [SELECT Name,Industry From Account WHERE Industry=:accIndustry];
        if(!accList.isEmpty()){
            selected = true;
        }else{
            selected = false;
        }
        
    }
    public List<SelectOption> getMySelectOptions() {

    // do a field describe of the picklist field
    Schema.DescribeFieldResult describeResult = Account.Industry.getDescribe();

    // get the picklist values from this describe result
    List<Schema.PicklistEntry> entries = describeResult.getPicklistValues();

    // list of options to be returned to the VF page
    List<SelectOption> optionsToReturn = new List<SelectOption>();
         optionsToReturn.add(new SelectOption('--None--', '--None--'));

    for (Schema.PicklistEntry pEntry : entries) {
        if (pEntry.isActive()) {
            optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
        }
    }

    return optionsToReturn;
}
}