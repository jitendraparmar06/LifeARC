public class CustomSettingClass {
    public String selectedItem{set;get;}
    public List<SelectOption> picklist{
        get{
        List<SelectOption> optionList = new List<SelectOption>();
            for(ISO_Countries__c code: ISO_Countries__c.getAll().Values()){
                optionlist.add(new SelectOption(code.ISO_Code__c,code.Name+'-'+code.ISO_Code__c));
            }
            return optionlist;
        }
        set;
    }
    public void method1(){
        
      
    }

}