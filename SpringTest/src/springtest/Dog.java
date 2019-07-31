package springtest;

public class Dog {
	private String type;
	
	public String getType() {
		return type;
	}
	public Dog(){
		
	}

	public Dog(String type){
		this.type=type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public void run(){
		System.out.println(" dog run!!!");
	}
	
}
