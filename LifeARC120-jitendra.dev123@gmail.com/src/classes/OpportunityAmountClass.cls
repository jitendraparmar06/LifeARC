public class OpportunityAmountClass {
    public List<Account> accList{set;get;}
    public List<Opportunity> oppList {set;get;}
    public Id ids{set;get;}
    public Decimal total_Amount{set;get;}
    public OpportunityAmountClass(){
        total_Amount = 0.0;  
        oppList = new List<Opportunity>();
        accList = new List<Account>();
        accList = [SELECT Id, Name,(SELECT Amount FROM Opportunities) From Account ];
        
        System.debug('this is bhjbjndnfn'+accList);
        totalAmount(accList);
    }
    public void totalAmount(List<Account> accList1){
        for(Account a :accList1){
            ids=a.Id;
            oppList= a.Opportunities;
            for(Opportunity p :oppList){
                total_Amount = total_Amount+p.Amount;
                System.debug('total Opportunity Amount of'+a.Name+'Account'+total_Amount);
            }
            
        }
    }
}