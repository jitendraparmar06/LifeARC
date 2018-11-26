public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numConts,String lName){
        List<Contact> conList = new List<Contact>();
        for(Integer i=0;i<numConts;i++){
            Contact a = new Contact(FirstName='Test'+i,LastName=lName);
            conList.add(a);
            
        }
       return conList;
    }

}