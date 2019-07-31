package springmvcwork.xin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import springmvcwork.xin.service.ServiceUserImpl;
import springmvcwork.xin.vo.MVCUSER;

public class AddUserAction extends AbstractController {

//	public static void main(String[] args) {
//	//	System.out.println("=====================================");
//		ApplicationContext ac = new ClassPathXmlApplicationContext("springmvc-servlet.xml");
//		ServiceUserImpl a = (ServiceUserImpl)ac.getBean("serviceUserImpl");
//		a.add(new MVCUSER(11111,"h",11,"h"));
//		
//	}
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		//System.out.println("=====================================");
		ModelAndView m = new ModelAndView();
		String name = arg0.getParameter("name");
		String age = arg0.getParameter("age");
		String pass = arg0.getParameter("pass");
		String loc = arg0.getParameter("loc");
		ApplicationContext ac = new ClassPathXmlApplicationContext("springmvc-servlet.xml");
		ServiceUserImpl a = (ServiceUserImpl)ac.getBean("serviceUserImpl");
		a.add(new MVCUSER(Integer.parseInt(pass),name,Integer.parseInt(age),loc));
		m.addObject("success");
		
		return m;
	}

}
