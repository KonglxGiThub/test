package springtest;

public class Test {

	public static void main(String[] args) {
		Body b = new Body();
		b.setName("body");
		Dog d = new Dog();
		b.setDog(d);
		d.setType("liulang");
		b.myDog();
		d.run();
		
	}

}
