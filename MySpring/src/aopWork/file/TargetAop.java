package aopWork.file;

public class TargetAop {
	public void add(){
		System.out.println("前置通知===切面的add方法");	
	}

	public void del(){
		System.out.println("后置通知===切面的del方法");
	}
	public void update(){
		System.out.println("异常通知===切面的update方法");
	}
	public void sel(){
		System.out.println("最终通知===切面的sel方法");
	}
}
