public class ExceptionClass {
    

   public static void mainProcessing() {
       try {
           insertContact();
       } catch(ContactException me) {
           System.debug('Message: ' + me.getMessage());    
           System.debug('Cause: ' + me.getCause());    
           System.debug('Line number: ' + me.getLineNumber());    
           System.debug('Stack trace: ' + me.getStackTraceString());    
       }
   }
   
   public static void insertContact() {
       try {
           // Insert Contact without required fields
           Contact m = new Contact();
           insert m;
       } catch(DmlException e) {
           // Something happened that prevents the insertion
           // of Contact objects, so throw a more
           // specific exception.
           throw new ContactException(
               'Contact could not be inserted.', e);
       }
   }
}