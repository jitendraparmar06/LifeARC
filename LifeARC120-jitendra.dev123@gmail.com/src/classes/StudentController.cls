public class StudentController {
    @AuraEnabled
    public static void createRecord (Student__c student){
        
        try{
            
            if(student != null){
                insert student;
            }
            
        } catch (Exception ex){
            
        }
        
    }    

    
    @AuraEnabled
    public static List<Student__C> getAllStudents(){
        return [select Id, Name, DOB__c, Department__C from Student__c order by Id desc limit 10];
    }
}