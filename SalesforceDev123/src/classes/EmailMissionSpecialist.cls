public class EmailMissionSpecialist {
    
    public void sendMail(String address,String subject,String body){
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[]{address};
            mail.setToAddresses(toAddresses);
            mail.setSubject(subject);
            mail.setPlainTextBody(body);
        
        Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
                                                                  
               inspectResults(results);
       /** for(String b : bo){
            System.debug('Result of '+(b+1) +'Email'+bo[b]);
        } **/
    }
        
    
    private static Boolean inspectResults(Messaging.SendEmailResult[] result){
        
        Boolean sendResult = true;
        
        for(Messaging.SendEmailResult res : result){
            if(res.isSuccess()){
                System.debug('Email sent successfully');
                
            }
            else{
                sendResult =false;
                
                System.debug('the dollowing errors occured: '+res.getErrors());
                
            }
        }
        return sendResult;
    }  
        
}