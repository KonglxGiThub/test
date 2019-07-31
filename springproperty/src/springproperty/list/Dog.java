package springproperty.list;

public class Dog {
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Dog(){
		System.out.println("dog function");
	}
	public void begin(){
		System.out.println("begin====");
	}
	public void over(){
		System.out.println("over=======");
	}
}
