package transaction.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import transaction.service.EmpsService;

public class Test {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("transaction/dao/applicationContext.xml");
		EmpsService empsService = (EmpsService)ac.getBean("emps");
		empsService.addGroup();
	}
}
