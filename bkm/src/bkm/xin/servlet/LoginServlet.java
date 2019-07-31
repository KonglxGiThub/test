package bkm.xin.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bkm.xin.service.BMKService;
import bkm.xin.service.UserService;
import bkm.xin.vo.BKM;
import bkm.xin.vo.User;

/**
 * Servlet implementation class LonginServlet
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
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserService ls = new  UserService();
		BMKService bs = new BMKService();
		ArrayList<BKM> list = bs.showBook();
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		int status = ls.login(new User(name,pass));
		if(status ==0){
			request.setAttribute("msg","user is checking");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else if (status ==1){
			request.setAttribute("msg","user check pass ");
			request.setAttribute("list",list);
			request.getRequestDispatcher("admin/showbook.jsp").forward(request, response);
		}
		else if (status ==2){
			request.setAttribute("msg","user check not pass ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else{
				request.setAttribute("msg","user or pass is false!!!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
