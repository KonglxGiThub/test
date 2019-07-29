package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.AdminService;

/**
 * Servlet implementation class CheckEmpPassServlet
 */
@WebServlet("/CheckEmpPassServlet")
public class CheckEmpPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckEmpPassServlet() {
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
		String eid=null;
		String estatus = null;
		if(request.getParameter("eid")!=null&&request.getParameter("estatus")!=null){
			eid =request.getParameter("eid");
			estatus=request.getParameter("estatus");
			System.out.println(eid+estatus);
			boolean falg = as.updateStatusEmp(Integer.parseInt(eid),Integer.parseInt(estatus));
			if(falg){
			request.setAttribute("msg", "update check is success");
			request.getRequestDispatcher("ShowCheckingEmpServlet").forward(request, response);
			}else{
				request.setAttribute("msg", "update check is false");
				request.getRequestDispatcher("ShowCheckingEmpServlet").forward(request, response);
			}
		}else{
			request.setAttribute("msg", "update check is false");
			request.getRequestDispatcher("ShowCheckingEmpServlet").forward(request, response);
		}
	}

}
