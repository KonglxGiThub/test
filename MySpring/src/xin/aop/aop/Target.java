package xin.aop.aop;

public class Target {
	
	public String late(String name){
		System.out.println("late fang fa ");
		//如果try不会走异常通知,如果发生异常return不会执行；
		try {
			System.out.println(1/0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		//System.out.println(1/0);	
		return "xxx";		
	}
	public void add(){
		System.out.println("add");
	}
	public void add(String name){
		System.out.println("带参 add");
	}

	public String fin(){
		System.out.println("fin fangfa");
		//System.out.println(1/0);
		return "xxx";
	}
}
