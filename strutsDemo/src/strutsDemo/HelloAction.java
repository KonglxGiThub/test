package strutsDemo;

public class HelloAction {
	private String name;
	private String pass;
	private String msg;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String execute() {
		if(name.equals("tom")){
			msg="成功";
			return "success";
		}
		else{
			msg="失败";
			return "success";
		}
	}
	
	public String execute1() {
		return "error";
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}
