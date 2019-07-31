package hrms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class InterceptorUTF_8 implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("======after=======");
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("----postrHnadle------------------");
	}

	@Override
	public boolean preHandle(HttpServletRequest ret, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		ret.setCharacterEncoding("utf-8");
System.out.println("=====prehandle=============");
		return true;
	}

}
