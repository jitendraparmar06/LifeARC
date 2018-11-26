public class OpportunityListClass {
    
   
    @AuraEnabled
    public static list<opportunity> getopplist(){
        
        list<opportunity> opps = new list<opportunity>([select Id,Name,AccountId,probability,stageName from opportunity]);
        return opps;
    }


}