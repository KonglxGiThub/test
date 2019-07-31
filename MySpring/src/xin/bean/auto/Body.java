package xin.bean.auto;

public class Body {
	private Dog dog;

	public Dog getDog() {
		return dog;
	}

	public void setDog(Dog dog) {
		this.dog = dog;
	}
	public void getMyDog(){
		System.out.println(dog.getName());
	}
}
