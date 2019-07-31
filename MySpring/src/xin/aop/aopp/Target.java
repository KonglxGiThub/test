package xin.aop.aopp;

public class Target {
	public String ex(String name){
		System.out.println("ex fangfa ");
		try {
			System.out.println(1/0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}
}
