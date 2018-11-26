public class TaskUtil {
         
         public static String getTaskPriority(String leadState){
                               if(String.isBlank(leadState)||leadState.length()>2){
                                    return null;
                               }
         String taskPriority=null;
                               if(leadState=='CA'){
                                        taskPriority='High';
                                        return taskPriority;
                               }else{
                                     taskpriority= 'Normal';  
                                      return taskPriority;
                               }
             
         }
}