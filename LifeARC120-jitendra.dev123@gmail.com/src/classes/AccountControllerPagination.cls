public class AccountControllerPagination {
    @AuraEnabled
    public static List<Account> getLimitedAccounts(){
        List<Account> accounts = [SELECT
               Id, Name, Email__c, Industry FROM Account ORDER BY CreatedDate LIMIT 2000];
        return accounts;
    }
}