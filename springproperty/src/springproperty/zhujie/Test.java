package springproperty.zhujie;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("springproperty/zhujie/applicationContext.xml");
		Body d = (Body)ac.getBean("b");
		d.myDog();
		ac.close();
	}

}
