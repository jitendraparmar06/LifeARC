public with sharing class ContactTableClass {
    
    public Contact c { get; set; }
    
    public List<Contact> samepage { get; set; }
    
    public ContactTableClass(){
        c=new Contact();
    }
    
    public PageReference save() {
        insert c;  
        samepage= [select id,FirstName,LastName,Email,Birthdate from Contact where id=:c.id];
        
        return null;
    }
    
    
}