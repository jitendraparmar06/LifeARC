trigger AccTrigger on Account (after delete) {
    Set<String> accIds = new Set<String>();
    for(Account objAccount : Trigger.old){
      accIds.add(objAccount.Id);
    }
  List<Contact> conList = [SELECT Id ,AccountId FROM Contact WHERE AccountId IN :accIds];
    delete conList;
}