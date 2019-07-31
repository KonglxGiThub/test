package springtest;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestXml {
	//单元宿舍
	//导入junit4
	//用junit4运行不会运行主方法，运行主方法不会运行junit4的hi（）方法
	@Test
	public void hi(){
		//获得容器,对应xml里的springtest包名后面加xml文件的名，用/隔开
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("springtest/applicationContext.xml");
		//使用容器获得相关对象,dog是xml里的id
		Dog d1 = (Dog)applicationContext.getBean("dog");
		d1.run();
		System.out.println(d1.getType());
		
	Body b = (Body)applicationContext.getBean("body");
		b.hello();
	b.getDog();
		b.myDog();
		
	}//@Ignore不会运行后面的方法
	@Ignore
	@Test
	public void h(){
		//获得容器,对应xml里的springtest包名后面加applicationContext.xml，用/隔开
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("springtest/applicationContext.xml");
		//使用容器获得相关对象,dog是xml里的id
		Dog d1 = (Dog)applicationContext.getBean("dog");
		d1.run();
		Body b = (Body)applicationContext.getBean("body");
		b.hello();
		
		
	}
	public static void main(String[] args) {
		System.out.println("xxxxxxxxxxxxx");
	}
}
