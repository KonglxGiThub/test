package xin.aop.zhujie;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class TestAop {
	//前置
//	@Before("within(xin.aop.zhujie.Target)")
//	@Before("execution(* xin.aop.zhujie.Target.add())")
	//@Before("bean(target)")
	@AfterReturning("bean(target)")

	//后置
	//@AfterReturning("bean(target)")

	//异常
	//@AfterThrowing("bean(target)")
	
	//最终
	//@After("bean(target)")
	
	//环绕
	@Around("bean(target)")
	
	public void testBefore(){
		System.out.println("切面的方法");
	}
	//@AfterReturning("bean(target)")
	
	public void testA(){
		System.out.println("切面的方法");
	}
}
