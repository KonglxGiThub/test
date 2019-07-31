package com.chinasofti.web1026.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.doPost(request, response);
		//System.out.println("get");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//		
		//获得请求中的参数，姓名和密码,get的是input的name的属性
		String name = request.getParameter("user");
		String pass = request.getParameter("pass");
		String[] arr = request.getParameterValues("hoppy");
		String[] com = request.getParameterValues("com");
		if("tom".equals(name)&&"123".equals(pass)){
			System.out.println(name+" "+pass);
			response.sendRedirect("new.jsp");
		}
		else{
			System.out.println("login false");
			response.sendRedirect("login.jsp");
		}
		if(arr!=null&&arr.equals("")&&com!=null&&com.equals("")){
		for(String c:com){
			System.out.print(c);
		}
		for(String str:arr){
			System.out.print(str);
		}}
		System.out.println();
		
	}

}
