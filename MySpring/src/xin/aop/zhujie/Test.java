package xin.aop.zhujie;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("xin/aop/zhujie/application.xml");
		Target t = (Target)ac.getBean("target");
		t.add();
	}
}
