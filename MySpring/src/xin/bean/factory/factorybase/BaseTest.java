package xin.bean.factory.factorybase;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BaseTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/factory/factorybase/applicationContext2.xml");
		Product p = (Product)ac.getBean("product");
		p.show();
	}

}
