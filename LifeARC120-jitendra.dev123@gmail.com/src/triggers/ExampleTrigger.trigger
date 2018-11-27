trigger ExampleTrigger on Contact (after insert, after delete) {
    if(Trigger.isInsert){
        Integer recordCount = Trigger.New.Size();
         EmailMissionSpecialist e = new  EmailMissionSpecialist();
        e.sendMail('vns.jitendra@gmail.com','Trailhead Trigger Tutorial',
                             recordCount +'contact(s) were inserted');
 }else if(Trigger.isDelete){
        
  }
}