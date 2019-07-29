package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.AdminService;
import meeting.xin.vo.EMP;

/**
 * Servlet implementation class ShowCheckingEmpServlet
 */
@WebServlet("/ShowCheckingEmpServlet")
public class ShowCheckingEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowCheckingEmpServlet() {
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
		AdminService as = new AdminService();
		ArrayList<EMP> checkingEmpList=null;
		if(as.checkingEmp()!=null){
			checkingEmpList = as.checkingEmp();
			 request.setAttribute("checkingEmpList", checkingEmpList);
			 //request.setAttribute("msg", "show checkingemp is success");
			 request.getRequestDispatcher("EmpChecking.jsp").forward(request, response);
		}else{
			 //request.setAttribute("msg", "show checkingemp is false");
			 request.getRequestDispatcher("EmpChecking.jsp").forward(request, response);
		}
	}

}
