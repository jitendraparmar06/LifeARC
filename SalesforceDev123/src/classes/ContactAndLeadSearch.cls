public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String s2){
        List<List<SObject>> lc = [FIND :s2 IN NAME FIELDS RETURNING Lead(FirstName,LastName), 
                               Contact(FirstName,LastName)];
        return lc;
    } 
}