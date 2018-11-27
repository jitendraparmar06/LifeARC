public class InlineController {
Public contact ConRec{get;set;}

Public id accRecId;
Public account accRec{get;set;}
    public inlinecontroller(ApexPages.StandardController controller) {      
     conRec = [select id,accountid from contact where id = :ApexPages.currentPage().getParameters().get('id')];
        accRecId = conRec.accountId;
      if(accRecId != null)
         accRec = [select id,name,accountnumber,annualrevenue from account where id =:accRecId];
    }
}