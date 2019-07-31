package aopWork.zhujie;

import org.springframework.stereotype.Component;

@Component
public class Target {
	public void show(){
		System.out.println("切入点上面的show方法");
	try {
		System.out.println(1/0);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	System.out.println("切入点下面的show方法");
		
	}
}
