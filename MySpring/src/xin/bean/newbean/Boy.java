package xin.bean.newbean;

public class Boy {
	private String  name;
	private Dog dog;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Dog getDog() {
		return dog;
	}
	public void setDog(Dog dog) {
		this.dog = dog;
	}
	public Boy (String name,Dog dog){
		this.name=name;
		this.dog=dog;
		System.out.println("boy==有参数构造器");
	}
	public Boy (){
		System.out.println("boy==无参数构造器");
	}
	public void myDog(){
		System.out.println(name+"的狗宝宝叫"+dog.getName());
	}
}
