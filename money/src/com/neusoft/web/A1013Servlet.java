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

@WebServlet("/a1013")
public class A1013Servlet extends HttpServlet 
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		try 
		{
			request.setAttribute("ocaab004", Tools.getOptions("AAB004"));
			
			String aab001=request.getParameter("aab001");
			A1010Services services=new A1010Services();
			Map data=services.findById(aab001);
			
			request.setAttribute("data", data);
		}
		catch (Exception e) 
		{
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
