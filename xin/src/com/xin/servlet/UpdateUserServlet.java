package com.xin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xin.service.LoginService;
import com.xin.vo.User;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("uid");
		String name = request.getParameter("uname");
		String pass = request.getParameter("upass");
		LoginService us = new LoginService();
		User user = new User(Integer.parseInt(idStr),name,pass);
		boolean flag = us.updateUser(user);
		if(flag){
			request.setAttribute("msg", "更新success");
			request.getRequestDispatcher("GetAllUserServlet").forward(request, response);
		}
		else{
			request.setAttribute("msg", "更新失败");
			request.getRequestDispatcher("updateUser.jsp").forward(request, response);
		}
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					this.doGet(request, response);
	}

}
