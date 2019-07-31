package com.xin.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.xin.dao.Xin_CountDao;

public class UserCountListener implements ServletContextListener {
	Xin_CountDao dao = new  Xin_CountDao();
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("========close==========");
		// TODO Auto-generated method stub
		//获得上下文对象
		ServletContext sc = arg0.getServletContext();
		int count = (Integer)sc.getAttribute("personCount");
		dao.upDateCount(count);
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("========start==========");
		//获得数据库的计数
		int count = dao.getCount();
		//获得上下文对象
		ServletContext sc = arg0.getServletContext();
		sc.setAttribute("personCount",count);
		
	}

}
