package com.xin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xin.service.LoginService;
import com.xin.vo.User;

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
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("user");
		String pass = request.getParameter("pass");
		LoginService service = new LoginService();
		int loginFlag = service.login(name, pass);
		List<User>list = service.showAll();
		if(loginFlag==0){
			//加入提示信息
			request.setAttribute("msg", "您的账号正在审核");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else if(loginFlag==1){
			//加入提示信息
			request.setAttribute("msg", "您的账号审核ok");
			request.setAttribute("list",list);
			request.getRequestDispatcher("success.jsp").forward(request, response);
			
		}
		else if(loginFlag==2){
			//加入提示信息
			request.setAttribute("msg", "您的账号审核未通过");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		else{
			//加入提示信息
			request.setAttribute("msg", "您的账号错误");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
	}

}
