package com.icss.springmvc_1201_helloworld.interceptor;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MyInterceptor implements HandlerInterceptor {
	DateFormat t;
	Date start;
	Date end;
	
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
//		System.out.println("aftercompletion");
//		DateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		
////		TimeZone f= t.getTimeZone()-time.getTimeZone();
//		String t = time.format(new java.util.Date());
//		System.out.println(t);
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("posthandle");
		end = new Date();
		System.out.println(start.getTime()-end.getTime()+"毫秒");
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method 
		//解决中文乱码问题，post方式
		arg0.setCharacterEncoding("utf-8");
		start = new Date();
		
		
//		System.out.println("prehandle");
////		Date date= new Date();
//		 t = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String tt = t.format(new java.util.Date());
//		System.out.println(tt);
		//如果是false不会执行上面的方法
		return true;
	}

}
