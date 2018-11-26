@isTest
public class InputfieldDemoController_Test {
    public static testmethod void validateSomemethod(){
        
        InputfieldDemoController objInputfieldDemoController = new InputfieldDemoController ();
        objInputfieldDemoController.valuefromJS = 'Test';
        objInputfieldDemoController.someMethod();
    }
}