public class CreateCandidateRecord {
    @AuraEnabled
    public static void createRecord (Candidate__c candidate){
        
        try{
            
            if(candidate != null){
                insert candidate;
            }
            
        } catch (Exception ex){
            
        }
        
    }    


}