public class LeadConversionClass {
   
    public static void LeadConversionMethod(List<Lead> leadList){
        for(Lead a :leadList){
        
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(a.Id);
        
        LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        System.assert(lcr.isSuccess());
        
        }
    }
}