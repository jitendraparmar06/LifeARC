@isTest
public class wrapperClassController_Test {
    
    public static testMethod void wrapperMethod(){
        //List<Contact> conList= new List<Contact>();
        //for(Integer i=0;i<10;i++){
            Contact c = new Contact(LastName='Demo');
        Insert c;
            //conList.add(c);
        //}
        //insert conList;
        wrapperClassController objwrapperClassController = new wrapperClassController();
        objwrapperClassController.getContacts(); 
        
        List< wrapperClassController.cContact> wrapperList = new list<wrapperClassController.cContact>();
        wrapperClassController.cContact objcContact= new wrapperClassController.cContact(c);
        objcContact.selected = true;
        wrapperList.add(objcContact);
        objwrapperClassController.contactList = wrapperList;
        objwrapperClassController.processSelected();
        //for(Contact w:conList){
        //}
    }
    
}