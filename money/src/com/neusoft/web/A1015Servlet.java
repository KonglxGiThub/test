package com.neusoft.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.neusoft.services.A1010Services;
import com.neusoft.system.tools.Tools;

@WebServlet("/a1015")
public class A1015Servlet extends HttpServlet 
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		try 
		{
			request.setAttribute("ocaab004",Tools.getOptions("AAB004"));
			
			String aab001=request.getParameter("parsVal");
			A1010Services services=new A1010Services();
			String msg=services.delete(aab001)?"…æ≥˝≥…π¶!":"…æ≥˝ ß∞‹!";
			request.setAttribute("msg", msg);
			
			String aab004=request.
			getParameter("qaab004");
			String aab002=request.getParameter("qaab002");
			String baab003=request.getParameter("baab003");
			String eaab003=request.getParameter("eaab003");
			String baab005=request.getParameter("baab005");
			String eaab005=request.getParameter("eaab005");
			String val[]={aab004,aab002,baab003,eaab003,baab005,eaab005};


			List rows=services.query(val);
			if(rows.size()>0)
			{
				request.setAttribute("rows", rows);
			}
		} 
		catch (Exception e) 
		{
			request.setAttribute("msg", "Õ¯¬Áπ ’œ!");
			e.printStackTrace();
		}
		request.getRequestDispatcher("/A1010.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		this.doGet(request, response);
	}

}
