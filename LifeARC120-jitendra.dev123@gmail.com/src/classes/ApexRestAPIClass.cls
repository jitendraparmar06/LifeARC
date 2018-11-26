@RestResource(urlMapping='/RESTAccountAccess/*')
global class ApexRestAPIClass {
    @HttpGet
    global static Account doGetAccount() {
        Account acc = new Account();
        Map<String,String> paramMap = RestContext.request.params;
        String accountId= paramMap.get('id');
        acc=[SELECT Id,Name,Industry FROM Account WHERE Id=:accountId];
        return acc;
    }
    @HttpDelete
    global static String doDeleteAccount() {
        Account acc = new Account();
        Map<String,String> paramMap = RestContext.request.params;
        String accountId= paramMap.get('id');
        acc=[SELECT Id,Name,Industry FROM Account WHERE Id=:accountId];
        delete acc;
        return 'Account Deleted';
    }
    @HttpPost
    global static Account doPostAccount(String Name) {
        Account acc = new Account(Name=name);
        insert acc;
        return acc;
    }
    @HttpPut
    global static Account doPutAccount(String name) {
        Map<String,String> paramMap = RestContext.request.params;
        String accountId= paramMap.get('id');
        Account acc = new Account(Id= accountId,Name=name);
        update acc;
        return acc;
    }
    @HttpPatch
    global static Account doPatchAccount(String name) {
        List<Account> accList = new List<Account>();
        accList = [SELECT Id,Name FROM Account WHERE Name=:name];
        if(accList.size()>0){
            update accList;
            Account a= accList[0];
            return a;
        }
        else{
            Account acc = new Account(Name=name);
            insert acc;
            return acc;
        }
       
    }
    
    
}