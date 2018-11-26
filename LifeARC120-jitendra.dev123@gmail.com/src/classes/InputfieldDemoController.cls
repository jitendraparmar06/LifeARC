public class InputfieldDemoController {

    //Variable under test
    public String valuefromJS {get; set;}
    
    public pagereference someMethod(){
       
        System.debug(valuefromJS);
        Account obj = new Account();
        obj.Name = valuefromJS ;
        Insert obj;
        
        return null;
    }
}