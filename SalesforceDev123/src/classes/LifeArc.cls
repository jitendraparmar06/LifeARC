public class LifeArc {
 public static List<Account> getAccount(){
 	List<Account> accList= new List<Account>();
 	accList = [SELECT Id, Name FROM Account LIMIT 10];
 	System.debug('this is a good team ');
 	return accList;
 }
}