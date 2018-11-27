public class SaveRecordController{
    public integer sumOf{get;set;}
    public Contact con{set;get;}
    public void saveRecord(){
        Contact con = new Contact();
        con.LastName='sumer';
        con.Loan_Amount__c= sumOf;
        insert con;
       
    }
    
}