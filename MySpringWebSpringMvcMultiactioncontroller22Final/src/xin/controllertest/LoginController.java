package xin.controllertest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class LoginController extends MultiActionController {

	
	public ModelAndView login(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		
			//获得前台输入数据
			String name = arg0.getParameter("name");
			String pass = arg0.getParameter("pass");
			//定义modelandview
			ModelAndView mav = new ModelAndView();
			//为modelandview赋页面的名字
			mav.setViewName("success");
			//为modelandview赋属性
			mav.addObject("xxx",name);
			mav.addObject("ooo",pass);
			
			return mav;
		
	}
	public ModelAndView index(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {

		//定义modelandview
		ModelAndView mav = new ModelAndView();
		//为modelandview赋页面的名字
		mav.setViewName("welcome");
		return mav;
	
}
	

}
