package struts2_0104_helloworld;

public class TestAction {
	//固定的方法名
	public String execute(){
		return "suc1";
	} 
	public String execute1(){
		System.out.println("exe1");
		return "suc";
	}

	public String del(){
		System.out.println("del");
		return "suc1";
	}
	public String add(){
		System.out.println("add");
		return "suc1";
	}
}
