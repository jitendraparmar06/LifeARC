global class  ScheduleMail implements Schedulable {
   
    global void execute(SchedulableContext sc) 
    {
         SeendReminderEmail b = new  SeendReminderEmail(); 
        database.executebatch(b);
    }
}