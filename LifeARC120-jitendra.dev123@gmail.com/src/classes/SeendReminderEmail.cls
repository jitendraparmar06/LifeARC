global class SeendReminderEmail implements Database.batchable<sObject>{
    String query;
    String subject;
    String body;
    global void SeendReminderEmail(){
     query = 'SELECT First_Name__c, Last_Name__c, Email__c FROM Speaker__c WHERE Email__c != null';
     subject='Final Reminder';
     body ='The conference starts next Monday';
    
    }
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);

    }
    global void execute(Database.BatchableContext bc ,List<Speaker__c> scope){

        for(Speaker__c speaker : scope){

            EmailManager.sendMail(speaker.Email__c,this.subject,this.body);
        }
    }
     global void finish(Database.BatchableContext bc) {

    }


}