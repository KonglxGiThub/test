package xin.bean.zhujie;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/zhujie/applicationContext.xml");
		Body d = (Body)ac.getBean("b");
		d.myDog();
		ac.close();
	}

}
