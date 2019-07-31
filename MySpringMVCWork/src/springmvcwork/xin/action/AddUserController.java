package springmvcwork.xin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import springmvcwork.xin.service.IServiceUser;
import springmvcwork.xin.vo.MVCUSER;

public class AddUserController {

	private IServiceUser serviceUserImpl;
	
	public IServiceUser getServiceUserImpl() {
		return serviceUserImpl;
	}

	public void setServiceUserImpl(IServiceUser serviceUserImpl) {
		this.serviceUserImpl = serviceUserImpl;
	}
	
	public String updateUser(HttpServletRequest arg0, HttpServletResponse arg1){
		//System.out.println("=====================================");
		String name = arg0.getParameter("name");
	String age = arg0.getParameter("age");
		String id = arg0.getParameter("id");
		String loc = arg0.getParameter("loc");
		//System.out.println(name+"+=======================");
		MVCUSER u=new MVCUSER(Integer.parseInt(id),name,Integer.parseInt(age),loc);
		serviceUserImpl.updeateUser(u);				
		return "forward:selAllUser.action";
	}
	public String update(HttpServletRequest arg0, HttpServletResponse arg1){

		return "updateUser";
	}
	public String addUser(HttpServletRequest arg0, HttpServletResponse arg1){
		//System.out.println("=====================================");
		String name = arg0.getParameter("name");
		String age = arg0.getParameter("age");
		String pass = arg0.getParameter("pass");
		String loc = arg0.getParameter("loc");
		MVCUSER u=new MVCUSER(Integer.parseInt(pass),name,Integer.parseInt(age),loc);
		serviceUserImpl.add(u);					
		return "forward:selAllUser.action";
	}
	public String delUser(HttpServletRequest arg0, HttpServletResponse arg1){
		String id=arg0.getParameter("id");
		serviceUserImpl.deleteUser(new MVCUSER(Integer.parseInt(id)));
		return "forward:selAllUser.action";
	}
	public ModelAndView selAllUser(HttpServletRequest arg0, HttpServletResponse arg1){	
		List<MVCUSER> list=serviceUserImpl.selAllUser();
		//System.out.println(list.size()+"=============");
		ModelAndView m = new ModelAndView();
		m.addObject("list",list);
		m.setViewName("showAllUser");
		return m;
	}
	
//	public ModelAndView index(HttpServletRequest arg0, HttpServletResponse arg1)
//			throws Exception {	
//		ModelAndView m = new ModelAndView();
//		m.setViewName("login");
//		return m;
//	}

}
