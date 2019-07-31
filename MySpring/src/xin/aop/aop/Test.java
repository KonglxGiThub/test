package xin.aop.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("xin/aop/aop/application.xml");
		Target target = (Target)ac.getBean("target");
		//访问target的add方法前要先访问切面的testbefore的test方法
		//target.fin();
		target.late("too");
		System.out.println("============================================");
		target.add("ttt");
		
	}

}
