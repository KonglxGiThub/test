package bkm.xin.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bkm.xin.service.BMKService;
import bkm.xin.vo.BKM;

/**
 * Servlet implementation class ShowBookServlet
 */
@WebServlet("/ShowBookServlet")
public class ShowBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowBookServlet() {
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
		BMKService bs = new BMKService();
		ArrayList<BKM> list = bs.showBook();
		String name = request.getParameter("bname");
		boolean falg = bs.borrowBook(name);
		if(falg){
			request.setAttribute("msg","borrow success");
			request.setAttribute("list",list);
			request.getRequestDispatcher("admin/showbook.jsp").forward(request, response);
		}else{
			request.setAttribute("msg","网路故障");
			request.setAttribute("list",list);
			request.getRequestDispatcher("admin/showbook.jsp").forward(request, response);
		}
		
	}

}
