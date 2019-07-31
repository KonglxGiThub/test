package com.bs.zp.servlet;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import com.bs.zp.common.ViewCpy;
import com.bs.zp.common.ViewHerf;
import com.bs.zp.common.ViewJob;

public class ViewWork extends HttpServlet {  
  
	private static final long serialVersionUID = 1L;

	public ViewWork() {  
        super();  
    }  
  
    public void init() throws ServletException {
    	ServletContextEvent arg0 = null;
    	ServletContext sc = getServletContext();  
    	ViewJob wb = new ViewJob();
    	ViewCpy vc = new ViewCpy();
    	ViewHerf vf = new ViewHerf();
    	Map<String, List> map1 = wb.ViewJob();
    	Map<String, List> map2 = vc.ViewCpy();
    	List<ViewHerf> list = vf.ViewHerf();
    	sc.setAttribute("map", "1");
    	sc.setAttribute("map1", map1);
    	sc.setAttribute("map2", map2);
    	sc.setAttribute("list1", list);
    }
} 