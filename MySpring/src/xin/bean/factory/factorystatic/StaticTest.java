package xin.bean.factory.factorystatic;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class StaticTest {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/factory/factorystatic/applicationContext2.xml");
		Product p = (Product)ac.getBean("product");
		p.show();
	}

}
