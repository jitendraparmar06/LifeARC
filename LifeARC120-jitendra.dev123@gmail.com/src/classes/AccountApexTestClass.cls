@isTest
public class AccountApexTestClass {
     Public Account ac;
    
    public static testMethod void saveTest(){
        
		AccountApexController objAccountApexController = new AccountApexController();
        objAccountApexController.accName = 'Test Account';
        objAccountApexController.accIndustry = 'Agriculture';
		objAccountApexController.save();  
        objAccountApexController.cancel();
        objAccountApexController.getMySelectOptions();
        
    }

}