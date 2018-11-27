public class LeadRecord{
   
   @InvocableMethod
   public static void lead(){
    Lead leadRecord;
    leadRecord = new Lead(LastName='Jitendra',Industry='TCS');
    insert leadRecord;
   }
   
}