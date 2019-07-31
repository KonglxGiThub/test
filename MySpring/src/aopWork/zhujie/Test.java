package aopWork.zhujie;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("aopWork/zhujie/application.xml");
		Target t = (Target)ac.getBean("target");
		t.show();
	}
}
