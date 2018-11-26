public class WrapperDemoClass{
    public List<Wrapper> wrapperList{set;get;}
    public List<Account> ac {set;get;}
    public WrapperDemoClass(ApexPages.StandardController controller){
        ac=[Select Id,Name FROM Account LIMIT 5];
    }
    public List<Wrapper> getwrapperObj(){
        wrapperList= new List<Wrapper>();
        for(Account a:ac){
            
            wrapperList.add(new Wrapper(a,false));
        }
        return wrapperList;
    }
    
    
    
    
    public class Wrapper{
        
        public Account acc{set;get;}
        public Boolean checkbox {set;get;}
        public Wrapper(Account a, Boolean c){
            acc=a;
            checkbox=c;
            
            
        }
        
            
        }
 }