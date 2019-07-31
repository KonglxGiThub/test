package struts2_0104_helloworld;

public class EmpAction {
	
	private Emp emp;
	
	public String execute(){
		System.out.println(emp);
		return "suc";
	}

	public Emp getEmp() {
		return emp;
	}

	public void setEmp(Emp emp) {
		this.emp = emp;
	}
}
