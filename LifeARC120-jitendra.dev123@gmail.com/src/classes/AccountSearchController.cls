public with sharing class AccountSearchController {    
    //this function returns all Accounts records to lightning component
    @AuraEnabled
    public static List<Account> getAllAccounts(){
        //If 'All Type' selected on UI, below code will execute to get all cars
        return [SELECT Id, Name,Industry FROM Account LIMIT 10];
    }
}