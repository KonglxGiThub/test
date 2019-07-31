package aopWork.zhujie;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class TargetAop {
	@Before("bean(target)")
	public void add(){
		System.out.println("前置通知===切面的add方法");	
	}
	@AfterReturning("bean(target)")
	public void del(){
		System.out.println("后置通知===切面的del方法");
	}
	@AfterThrowing("bean(target)")
	public void update(){
		System.out.println("异常通知===切面的update方法");
	}
	@After("bean(target)")
	public void sel(){
		System.out.println("最终通知===切面的sel方法");
	}
}
