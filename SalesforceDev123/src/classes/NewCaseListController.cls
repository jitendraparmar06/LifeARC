public class NewCaseListController {

         List<Case> cList ;
	public List<Case> getNewCases(){

     cList = [SELECT Id,CaseNumber FROM Case WHERE Status='New'];
     return cList;
	}

}