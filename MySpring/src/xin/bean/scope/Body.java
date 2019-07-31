package xin.bean.scope;

import java.util.List;

public class Body {
	private Dog dog;
	private String name;
	private List<Girl> GiirlFriends;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Body(){}
	public Dog getDog() {
		return dog;
	}

	public void setDog(Dog dog) {
		this.dog = dog;
	}
	public void myDog(){
		System.out.println(name+"和"+dog.getName());
	}
}
