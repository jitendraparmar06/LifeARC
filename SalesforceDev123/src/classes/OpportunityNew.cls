public class OpportunityNew{
    @InvocableMethod
  public static void Opportunity(){
   Opportunity opp = new Opportunity(Name='New Opportunity',Amount =100000,StageName='progress',CloseDate=System.today()+90);
        
       insert opp;
  }

}