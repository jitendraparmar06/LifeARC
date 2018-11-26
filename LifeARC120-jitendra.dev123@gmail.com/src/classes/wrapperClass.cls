public class wrapperClass {
    
    public list<account>accs = new list<account>();
    public list<accountwrapper>accwrap{get; set;}
    public list<account>selectedaccount{get; set;}
    public account anacc{get; set;}    
    
    public void Changetype(){
        if(selectedaccount.size() == 0){
            system.debug('If');
             apexpages.addmessage(new apexpages.message(apexpages.severity.error,'Please Select one Record'));
        }else{
            for(account ac:selectedaccount){
                 system.debug('anacc'+anacc.type);
                ac.type=anacc.type;
            }
        }
        if(anacc.AnnualRevenue < 400){
            update selectedaccount;
        }else{
            apexpages.addmessage(new apexpages.message(apexpages.severity.error,'This is only applicable for Price less than 400…..'));
        }
    }
    public wrapperClass(){
        accwrap = new list<accountwrapper>();
        selectedaccount = new List<Account>();
        anacc= new account();
        accs= [select name, Ownerid, Website, Type,AnnualRevenue from account where website != null order by createdDate desc limit 100];
        accountWrapperObject();
    }
    public void accountWrapperObject(){
        for(account a:accs){
            accountwrapper aw = new accountwrapper(a);
            accwrap.add(aw);
        }
    }
    public void getselected(){
        selectedaccount = new list<account>();
        selectedaccount.clear();
        for(accountwrapper awrap : accwrap)
            if(awrap.selected==true){
                selectedaccount.add(awrap.acc);
            }
        
    }
    public class accountwrapper{
        public account acc{get; set;}
        public boolean selected{get; set;}
        public accountWrapper(account a){
            acc=a;
            selected= false;
        }
    }
}