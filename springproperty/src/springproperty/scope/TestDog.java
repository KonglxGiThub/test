package springproperty.scope;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class TestDog {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("springproperty/scope/applicationContext.xml");
//		Dog d1 = (Dog)ac.getBean("dog");
//		Dog d2 = (Dog)ac.getBean("dog1");
//		ac.close();
		Body b=(Body)ac.getBean("body");
		b.myDog();
		
		
	}
}
