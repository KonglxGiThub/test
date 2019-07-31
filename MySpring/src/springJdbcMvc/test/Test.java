package springJdbcMvc.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import springJdbcMvc.controller.ControllerImpl;
import springJdbcMvc.vo.MVCUSER;

public class Test {
public static void main(String[] args) {
	ApplicationContext  applicationContext=new ClassPathXmlApplicationContext("springJdbcMvc/test/applicationContext.xml");
	ControllerImpl controllerImpl = (ControllerImpl)applicationContext.getBean("controllerImpl");
	//boolean f = controllerImpl.insertUser(new MVCUSER(3,"xx",22,"oo"));
	//boolean f = controllerImpl.delUser(new MVCUSER(1,"xx",22,"oo"));
	//boolean f = controllerImpl.updateUser(new MVCUSER("xddx",23,"oddo",1));
	//System.out.println(controllerImpl.listUser().size());
	System.out.println(controllerImpl.user(new MVCUSER(1,"xx",22,"oo")).getName());
//	if(f){
//		System.out.println("add ok");
//	}else{
//		System.out.println("add false");
//	}
	
	
}
}
