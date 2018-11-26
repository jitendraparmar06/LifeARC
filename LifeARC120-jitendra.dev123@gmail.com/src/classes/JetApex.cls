public class JetApex {
    @AuraEnabled
    public static Jet__c jetAll(Id jetId){
        Jet__c j = new Jet__c();
        j = [SELECT Id, Name,Location__Latitude__s,Location__Longitude__s FROM Jet__c WHERE Id=:jetId];
        return j;
    }

}