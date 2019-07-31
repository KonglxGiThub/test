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
 * Servlet implementation class GetByIdShowServlet
 */
@WebServlet("/GetByIdShowServlet")
public class GetByIdShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetByIdShowServlet() {
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
		LoginService sl = new LoginService();
		String id = request.getParameter("sid");
		List<User> list = null;
		if (!request.getParameter("sid").equals("")) {
			list = sl.findUserById(Integer.parseInt(id));
			request.setAttribute("list", list);
			request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		else {
			//查询全部
			request.getRequestDispatcher("GetAllUserServlet").forward(request, response);
		}
		
	}

}
