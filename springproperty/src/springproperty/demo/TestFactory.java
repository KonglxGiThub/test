package springproperty.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestFactory {

	public static void main(String[] args) {
	/*	Product p = StaticFactory.createProduct();
		p.show();*/
	ApplicationContext ac= new ClassPathXmlApplicationContext("springproperty/demo/applicationContext.xml");
	////使用容器获得相关对象,product是xml里的id
	Product p = (Product)ac.getBean("product");
	p.show();

	}

}
