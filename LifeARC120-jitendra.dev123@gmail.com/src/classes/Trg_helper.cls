public class Trg_helper {
    public static void before_insert(List<Account> accList){
        for(Account acc : accList){
            if(acc.Site == null){
                acc.Site = 'California';
            }
        }
        
    }
    public static void before_update(List<Account> accList ){
        for(Account acc : accList){
            if(acc.Site == null){
                acc.Site = 'India';
            }
        }
        
    }
}