public class SobjectListController{
    @AuraEnabled
    public static List<String> getListItemMenu() {
        List<String> stdObjectNames = new List<String>();
        map<String, Schema.SObjectType> GlobalMap = Schema.getGlobalDescribe(); 
        for (Schema.SObjectType Obj : GlobalMap.values()) {
            Schema.DescribeSObjectResult ObjDesc = Obj.getDescribe();
             String CustomObject = ObjDesc.getName();
            if(CustomObject.contains('__c')){
             stdObjectNames.add(CustomObject);
            }
        }
       return stdObjectNames;
    }
}