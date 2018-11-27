public class ContactController1 {
    public List<Contact> contactlist{set;get;}
    public ContactController1(AccountController1 a){
         contactlist= new List<Contact>();
         contactlist= [SELECT Id,LastName,FirstName FROM Contact LIMIT 10];
         
    }
   
}