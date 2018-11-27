public class RenderedContorller {
    public boolean flag{set;get;}
    public Account acc{set;get;}
    public RenderedContorller(){
        
        acc= [select id ,Name,AccountNumber from Account limit 1];
        flag=false;
    }
    public void showButton(){
        flag=true;
    }
}