public class OpportunityAmountToatal {
    public Decimal total_Amount=0.0;
    public List<Opportunity> opp = [SELECT Amount FROM Opportunity];
    public OpportunityAmountToatal(){
        for(Opportunity o :opp){
            if(o.Amount != null){
                total_Amount += o.Amount;
            }       
        }
        System.debug('Total amount :'+total_Amount);
    }
}