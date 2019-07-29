package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.AdminService;

/**
 * Servlet implementation class DelEmpByIdServlet
 */
@WebServlet("/DelEmpByIdServlet")
public class DelEmpByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelEmpByIdServlet() {
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
		String eid=request.getParameter("eid");
			boolean falg = as.delEmpById(Integer.parseInt(eid));
			if(falg){
				request.setAttribute("msg","del success");
			request.getRequestDispatcher("ShowAllEmpServlet").forward(request, response);
			}else{
			request.getRequestDispatcher("ShowAllEmpServlet").forward(request, response);	
			}
		}

	

}
