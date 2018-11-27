public class ContactSearch {
    

    public static List<Contact> searchForContacts(String s1, String s2){
        return [SELECT Id, Name FROM Contact WHERE LastName =: s1 AND MailingPostalCode =: s2];
    }
}