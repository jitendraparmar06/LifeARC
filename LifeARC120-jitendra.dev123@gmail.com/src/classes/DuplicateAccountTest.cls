@isTest
public with sharing class DuplicateAccountTest {
	public static testmethod void DuplicateAccountTest() {
		Account ac= new Account(Name='sachin');
		insert ac;
		Test.startTest();
		Account a1 = new Account(Name='Sachin');
		try{
		insert a1;
	}
		catch(Exception e){
			System.debug(e.getMessage());
		}
		Test.stopTest();
	}
}