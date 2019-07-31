package xin.bean.newbean;

public class Dog {
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public Dog(String name){
		this.name=name;
		System.out.println("dog===有参数构造器");
	}
	public Dog(){
		System.out.println("dog===无参数构造器");
	}
	
}
