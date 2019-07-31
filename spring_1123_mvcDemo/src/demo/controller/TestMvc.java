package demo.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMvc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("demo/controller/applicationContext.xml");
		DemoController c = (DemoController)ac.getBean("demoController");
		c.demoAdd();
	}

}
