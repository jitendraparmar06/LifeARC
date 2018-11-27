public class CallVfPageClass {
    public PageReference vfMethod(){
        
        PageReference page = new PageReference('/apex'+'/AccountDetail');
        page.getParameters().put('id', [select id from account limit 1].id);
        page.setRedirect(true);
        return page;
    }

}