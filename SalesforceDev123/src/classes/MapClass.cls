public class MapClass {
 
    public Map<String,List<Contact>> conAccMap {set;get;}
    public Map<String,List<Contact>> conAccMap1 {set;get;}
    public List<Contact> conList {set;get;}
    public id ids{set;get;}
    
    public MapClass(){
        conAccMap = new Map<String,List<Contact>>();
        conAccMap1 = new Map<String,List<Contact>>();
        conList = [SELECT Id,Name,AccountId FROM Contact]; 
        doMap();
    }
    
    public void doMap(){
        for(Contact con :conList){                   
            if(conAccMap.containsKey(con.AccountId)){
                List<Contact> tempList = conAccMap.get(con.AccountId);
                tempList.add(con);
                conAccMap.put(con.AccountId, tempList);
            }else{
                conAccMap.put(con.AccountId, new List<Contact>{con});           
			}          
        } 
		System.debug('Account related Contact List :'+conAccMap);		
            
        for(Contact objcon :conList){                   
           
            if(!conAccMap1.containsKey(objcon.AccountId)){
                conAccMap1.put(objcon.AccountId, new List<Contact>{objcon});
            }
            ConAccMap1.get(objcon.AccountId).add(objcon);
        }
        System.debug('Account :'+conAccMap1);
    }       
}