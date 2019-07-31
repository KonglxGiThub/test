package xin.bean.auto;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/auto/applicationConetext.xml");
		Body body = (Body)ac.getBean("body");
		body.getMyDog();
	}

}
