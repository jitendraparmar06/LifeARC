public class ContactControllerSpinner {
    @AuraEnabled
    public static list <contact> fetchContact() {
        // create a list of Contact 
        List<contact> returnListOfContact = new List<contact>();
        // query 100 records from contact object.
        List <contact> lstOfcon = [Select id,FirstName,LastName from contact];
        // play a for loop on lstOfcon
        for(contact cc : lstOfcon){
            if(cc != null){
                returnListOfContact.add(cc);
            }
        }   
        // return contact list    
        return returnListOfContact ;
    }
    
    
}