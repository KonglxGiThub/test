package springJdbcMvc2.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import springJdbcMvc2.controller.ControllerImpl2;
import springJdbcMvc2.vo.MVCUSER;
public class Test {
public static void main(String[] args) {
	ApplicationContext  applicationContext=new ClassPathXmlApplicationContext("springJdbcMvc2/test/applicationContext.xml");
	ControllerImpl2 controllerImpl = (ControllerImpl2)applicationContext.getBean("controllerImpl2");
	//boolean f = controllerImpl.insertUser(new MVCUSER(32,"gg",22,"gg"));
	
	boolean f = controllerImpl.delUser(new MVCUSER(32,"xx",22,"oo"));
	//boolean f = controllerImpl.updateUser(new MVCUSER("xddx",23,"oddo",1));
	//System.out.println(controllerImpl.listUser().size());
	//System.out.println(controllerImpl.user(new MVCUSER(1,"xx",22,"oo")).getName());
	if(f){
		System.out.println("add ok");
	}else{
		System.out.println("add false");
	}
	
	
}
}
