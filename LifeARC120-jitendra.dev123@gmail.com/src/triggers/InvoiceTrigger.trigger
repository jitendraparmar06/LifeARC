trigger InvoiceTrigger on Reservation__c (after insert) {
    List<Invoice__c> newInList = new List<Invoice__c>();
    for(Reservation__c rev:trigger.new){
        Invoice__c freshInvoice = new Invoice__c();
        freshInvoice.Account__c=rev.Account__c;
        freshInvoice.Reservation__c= rev.Id;
        freshInvoice.Amount__c = rev.Total_Amount__c;
        newInList.add(freshInvoice);
       
    }
    insert newInList;
    
   
}