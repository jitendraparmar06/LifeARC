@isTest
private class ConTest_Test
{
    static testMethod void TestAccount()
    { 
       Account acc = new Account();
	   acc.Name ='Test';
	   insert acc;
	   
	   acc.Name = 'Test Acc';
	   update acc;
    }
}