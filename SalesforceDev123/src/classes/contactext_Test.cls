@isTest
public class contactext_Test {
    public static testMethod void contactMethod(){
        Contact c = new Contact(LastName='jjsdhsj');
        //insert c;
        ApexPages.StandardController s = new ApexPages.StandardController(c);
        contactext objcontactext = new contactext(s);
        objcontactext.savedata(); 
               
    }
    public static testMethod void contactMethod1(){
        Contact c = new Contact(LastName='jjsdhsj');
        insert c;
        ApexPages.StandardController s = new ApexPages.StandardController(c);
        contactext objcontactext = new contactext(s);
        objcontactext.savedata();       
    }
}