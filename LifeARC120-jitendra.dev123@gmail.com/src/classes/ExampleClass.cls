public class ExampleClass{
     String uName;
     private String state = 'no';
     public String getuserName(){
      	 return uName;
     }
     public PageReference sayHello(){
      	uname = UserInfo.getName();
		return null;
	}
	public void setState(String n){
		state = n;
	}
	public String getState() {
		return state;
	}
	public PageReference methodOne(){
		return null;
	}
	
}