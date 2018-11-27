public class AccountPdfClass {
    public Account acc{set;get;}
    public String startDate{set;get;}
    public String endDate{set;get;}
    public Date sDate;
    public Date eDate;
    public List<Account> accList{set;get;}
    public AccountPdfClass(){
        acc= new Account();
        accList = [SELECT Name,Industry,Type,AnnualRevenue,Active__c FROM Account LIMIT 10]; 
        //startDate = ApexPages.currentPage().getParameters().get('startDate');
        //endDate = ApexPages.currentPage().getParameters().get('endDate');
        //sDate = date.valueOf(startDate);
        //eDate = date.valueOf(endDate);
    }
    public PageReference acccountMethod(){
        
        //WHERE Start_Date__c>=:sDate AND End_Date__c<=:eDate];        
        //PageReference objPage = new PageReference ('/apex/AccountPdfVf?startDate='+acc.Start_Date__c+'&endDate='+acc.End_Date__c);
        PageReference objPage = new PageReference ('/apex/AccountPdfVf');
        objPage.setRedirect(true);
        return objPage;
    }

}