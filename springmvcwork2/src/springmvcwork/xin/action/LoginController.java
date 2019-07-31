package springmvcwork.xin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import springmvcwork.xin.service.IServiceUser;
import springmvcwork.xin.service.ServiceUserImpl;
import springmvcwork.xin.vo.MVCUSER;

public class LoginController extends AbstractController {

	private IServiceUser serviceUserImpl;
	
	public IServiceUser getServiceUserImpl() {
		return serviceUserImpl;
	}

	public void setServiceUserImpl(IServiceUser serviceUserImpl) {
		this.serviceUserImpl = serviceUserImpl;
	}

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		//System.out.println("=====================================");
	ModelAndView m = new ModelAndView();
	/*	String name = arg0.getParameter("name");
		String age = arg0.getParameter("age");
		String pass = arg0.getParameter("pass");
		String loc = arg0.getParameter("loc");*/
//		ApplicationContext ac = new ClassPathXmlApplicationContext("springmvc-servlet.xml");
//		ServiceUserImpl a = (ServiceUserImpl)ac.getBean("serviceUserImpl");
//		serviceUserImpl.add(new MVCUSER(Integer.parseInt(pass),name,Integer.parseInt(age),loc));
		m.addObject("login");
		
		return m;
	}

}
