package com.neusoft.web;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neusoft.services.A1010Services;
import com.neusoft.system.tools.Tools;

@WebServlet("/a1012")
public class A1012Servlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		try 
		{
			//初始化下拉列表
			List<Map<String,String>> ocaab004=Tools.getOptions("AAB004");
			request.setAttribute("ocaab004", ocaab004);
			
			String aab004=request.getParameter("qaab004");
			String aab002=request.getParameter("qaab002");
			String baab003=request.getParameter("baab003");
			String eaab003=request.getParameter("eaab003");
			String baab005=request.getParameter("baab005");
			String eaab005=request.getParameter("eaab005");
			String val[]={aab004,aab002,baab003,eaab003,baab005,eaab005};
			
			A1010Services services=new A1010Services();
			List<Map> rows=services.query(val);
			if(rows.size()>0)
			{
				request.setAttribute("rows", rows);
			}
			else
			{
				request.setAttribute("msg", "没有符合条件的数据!");
			}	
		} 
		catch (Exception e) 
		{
			request.setAttribute("msg", "网络故障!");
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
