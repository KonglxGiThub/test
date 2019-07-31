package com.neusoft.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neusoft.services.A1010Services;
import com.neusoft.system.tools.Tools;

@WebServlet("/a1014")
public class A1014Servlet extends HttpServlet 
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		try
		{
			request.setAttribute("ocaab004",Tools.getOptions("AAB004"));
			
			String aab002=request.getParameter("aab002");
			String aab003=request.getParameter("aab003");
			String aab004=request.getParameter("aab004");
			String aab005=request.getParameter("aab005");
			String aab007=request.getParameter("aab007");
			String aab001=request.getParameter("aab001");
			String val[]={aab002,aab003,aab004,aab005,aab007,aab001};
			
			A1010Services services=new A1010Services();
			String msg=services.modify(val)?"修改成功!":"修改失败!";
			request.setAttribute("msg", msg);
			
			Map data=services.findById(aab001);
			request.setAttribute("data",data);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/A1012.jsp").forward(request, response);
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		this.doGet(request, response);
	}

}
