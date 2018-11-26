trigger AccountUpdateTrigger on Account (before insert){

  if(AccountUpdateClass.isFirstTime){
    AccountUpdateClass.isFirstTime=false;
    for(Account ac : Trigger.New){
        if(ac.Industry== 'Agriculture')
        {
            ac.Industry_Status__c=1;
        }
        if(ac.Industry== 'Banking')
        {
            ac.Industry_Status__c=2;
        }
        if(ac.Industry== 'Engineering')
        {
            ac.Industry_Status__c=3;
        }
        else{
          ac.Industry_Status__c=10;
        }
        insert ac;
     }

}
}