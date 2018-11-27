public class OpportunityAmount {
    public List<Account> accList{set;get;}
    public List<Opportunity> oppList {set;get;}
    public Id ids{set;get;}
    public Decimal total_Amount{set;get;}
    public OpportunityAmount(){
		total_Amount = 0.0;        
        accList = [SELECT Id, Name,(SELECT Amount FROM Opportunities) From Account LIMIT 10];
        totalAmount();
        
    }
    public void totalAmount(){
        for(Account a :accList){
            ids=a.Id;
            oppList= a.Opportunities;
            for(Opportunity p :oppList){
                total_Amount = total_Amount+p.Amount;
                System.debug('total Opportunity Amount of'+a.Name+'Account'+total_Amount);
            }
            
        }
    }
}