trigger ContactTrigger123 on Contact (after update) {

    if(AccountUpdateClass.isFirstTime){
      AccountUpdateClass.isFirstTime=false;
      for(Contact con : Trigger.New){
          con.Phone= '9926416017';

          update con;
        }
       }

  }