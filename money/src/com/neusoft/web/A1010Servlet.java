package com.neusoft.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import com.neusoft.system.tools.Tools;

@WebServlet("/a1010")
public class A1010Servlet extends HttpServlet 
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		String forward="A1010.jsp";
		try
		{
			String path=request.getParameter("path");
			System.out.println("path=="+path);
			if(path!=null && !path.equals(""))
			{
				forward=path;
			}
			//OptionCollection
			List<Map<String,String>> ocaab004=Tools.getOptions("AAB004");
			request.setAttribute("ocaab004", ocaab004);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		request.getRequestDispatcher("/"+forward).forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		this.doGet(request, response);
	}

}
