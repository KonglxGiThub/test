package springproperty.mvc.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMvc {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("springproperty/mvc/controller/applicationContext.xml");
		Controoller c = (Controoller)ac.getBean("controoller");
		c.demoAdd();
	}

}
