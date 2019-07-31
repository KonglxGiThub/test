package xin.bean.newbean;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class SpringTest {
	/*俩个一起不能执行，可以这样写，可以通过run按钮选择运行junit4还是java*/
	
	//单元测试
	//导入junit4
	//用junit4运行不会运行主方法，运行主方法不会运行junit4的hi（）方法
	@Test
	public void hi(){
		//获得容器,对应xml里的springtest包名后面加xml文件的名，用/隔开
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/newbean/applicationContext.xml");
		//使用容器获得相关对象,boy1是xml里的id
		Boy boy = (Boy)ac.getBean("boy1");
		boy.myDog();
		ac.close();	
	}
	
	//@Ignore不会运行后面的方法
	@Ignore
	@Test
	public void h(){
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/newbean/applicationContext.xml");
		Boy boy = (Boy)ac.getBean("boy2");
		boy.myDog();
		ac.close();
		
		
	}
	//通过主函数访问
	public static void main(String[] args) {
	/*	ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/newbean/applicationContext.xml");
		Boy boy = (Boy)ac.getBean("boy1");
		boy.myDog();
		ac.close();*/
		System.out.println("main");
	}


}
