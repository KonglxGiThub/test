package xin.bean.mvctwo.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMvc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/mvctwo/controller/applicationContext.xml");
		DemoController c = (DemoController)ac.getBean("demoController");
		c.demoAdd();
	}

}
