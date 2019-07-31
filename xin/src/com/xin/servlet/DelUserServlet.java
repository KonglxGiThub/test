package com.xin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xin.service.LoginService;

/**
 * Servlet implementation class DelUserServlet
 */
@WebServlet("/DelUserServlet")
public class DelUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelUserServlet() {
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
		LoginService ds = new LoginService();
		String id =request.getParameter("id");
		boolean falg = ds.delUser(Integer.parseInt(id));
		if(falg){
			request.getRequestDispatcher("GetAllUserServlet").forward(request, response);
		}else{
			request.setAttribute("msg", " 删除失败");
			/*request.setAttribute("ulist", service.getAllUser());
			request.getRequestDispatcher("success.jsp").forward(request, response);*/
			request.getRequestDispatcher("GetAllUserServlet").forward(request, response);

		}
	}

}
