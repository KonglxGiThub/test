package Struts2_0104.action;

public class TestAction {
	private String user;
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	//现在不能改方法名,
	public String execute(){
		return "welcome";
	}
	
	public String welcome(){
		
		
		return "welcome";
	}
	public String success(){
		
		if(user.equals("tom")){
			return "success";
		}
		return "error";
	}


	
}
