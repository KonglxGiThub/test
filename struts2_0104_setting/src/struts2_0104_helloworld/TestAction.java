package struts2_0104_helloworld;

public class TestAction {
	
	private String user;
	private String msg;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	
	//固定的方法名
	public String execute(){
		return "suc1";
	} 
	public String execute1(){
		System.out.println("exe1");
		this.msg = "消息";
		return "suc"; 
	} 
	public String login(){
		System.out.println("名字为"+user);
		return "welcome";
	}
	

}
