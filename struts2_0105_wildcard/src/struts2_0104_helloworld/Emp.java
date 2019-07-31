package struts2_0104_helloworld;

public class Emp {
	private String name;
	private Integer number;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String toString(){
		return "名字为："+name+",编号为："+number;
	}
}
