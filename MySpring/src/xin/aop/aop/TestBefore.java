package xin.aop.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class TestBefore {
	//前置通知，取参数的值
	public void test(JoinPoint jp){
		//获得切入点程序方法的第一个参数，传递的参数的名
		System.out.println("参数为"+jp.getArgs()[0]);
		//获得切入点程序的名字，类名
		System.out.println("获得切入点程序的名字"+jp.getTarget().getClass().getName());
		//获得获得反射对象，方法名
		System.out.println("获得反射对象"+jp.getSignature());
		
		System.out.println("前置通知==切面中的test方法");
	}
	//hou置通知,取返回值
	public void show(JoinPoint jp,Object ee){
		System.out.println("后置切入点的方法的返回值"+ee);
		System.out.println("hou置通知==切面中的show方法");
	}
	//异常通知
	public void ex(JoinPoint jp,Throwable th){
		System.out.println("异常信息"+th.getMessage());
		System.out.println("异常通知==切面中的ex方法");
	}
	//最终通知
	public void after(){
		//System.out.println("切入点的方法的返回值"+re);
		System.out.println("最终通知==切面中的ex方法");
	}
	
	//环绕通知
	public void around(ProceedingJoinPoint pjp){
		//在这写应该在前置方法里的内容
		System.out.println("前置通知5555555");
		try {
			//执行目标方法
			pjp.proceed();
			System.out.println("后置通知555555555");
		} catch (Throwable e) {
			// TODO: handle exception
			System.out.println("异常通知555555555");
		}
		System.out.println("最终通知555555555555");
	}
}
