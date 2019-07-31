package springtest;

public class Body {
	private String name;
	private Dog dog;
	public Body(){

	}
	public Body(String name,Dog dog){
		this.name=name;
		this.dog=dog;
	}
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
	public void hello(){
		System.out.println("body=================");
	}
	public void myDog(){
		System.out.println(name+"我有一只"+dog.getType()+"的狗");
//		dog.run();
	}

}
