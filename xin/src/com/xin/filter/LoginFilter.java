package com.xin.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		System.out.println("filter destory");

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		//登录权限，session升级版，在web.xml控制需要权限的jsp页面
		//只在post里有效
		//arg0.setCharacterEncoding("utf-8");
		//arg0强转成HttpServletRequest
		HttpServletRequest request = (HttpServletRequest)arg0;
		//获得session,需要转成HttpServletRequest
		HttpSession session = request.getSession();
		 String sname = (String)session.getAttribute("name");
		 if(sname==null){
		     request.setAttribute("msg","该资源必须登录后访问");
		     request.getRequestDispatcher("../login.jsp").forward(arg0, arg1);
		 }
		 //往下一个资源访问
		 arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("filter init");

	}

}
