package com.xin.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xin.service.LoginService;
import com.xin.vo.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //UserDao dao = new UserDao();
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		int time=0;
		//如果不加判断，用 loginservlet跳转会出错，“”是判断空类型，null是判断空类型；
		if(request.getParameter("time")!=null){
			time=Integer.parseInt(request.getParameter("time"));
		}
	
			
	
		LoginService ls = new LoginService();
		int  status = ls.login(name, pass);
		if(status==0){
			request.setAttribute("msg", "user is checking");
			request.getRequestDispatcher("login.jsp").forward(request, response);	
		}
		else if(status==1){
			if(time>0){
				//1cooki对象免登陆
				Cookie userNam = new Cookie("userName",name);
				Cookie userPas= new Cookie("userPass",pass);
				userNam.setMaxAge(time*24*60*60);
				userPas.setMaxAge(time*24*60*60);
				response.addCookie(userNam);
				response.addCookie(userPas);
			}
			//2Session对象，登录后访问
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(30*60);
			session.setAttribute("name",name);

			//3获得上下文对象this代表servletconfig
			ServletContext sc = this.getServletContext();
			//获得上下文xml文件里的name是xx的参数的值
			//System.out.println(sc.getInitParameter("xx"));
			String scount = null;
			int count =0;
			if(sc.getAttribute("personCount")!=null){
				scount = sc.getAttribute("personCount").toString();
				count = Integer.parseInt(scount)+1;
			}
			else{
				count = 1;
			}
			sc.setAttribute("personCount", count);
			
			request.setAttribute("list",ls.showAllUser());
			request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		else if(status==2){
			request.setAttribute("msg","user check not over");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else{
			request.setAttribute("msg","user check false");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			//response.sendRedirect("login.jsp");
		}
		 
	}

}
