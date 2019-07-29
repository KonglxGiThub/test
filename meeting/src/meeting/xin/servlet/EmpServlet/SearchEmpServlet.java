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
 * Servlet implementation class SearchEmpServlet
 */
@WebServlet("/SearchEmpServlet")
public class SearchEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchEmpServlet() {
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
		AdminService ss=new AdminService();
//		if(){
//			
//		}
		String sename = request.getParameter("sename");
		String selname = request.getParameter("selname");
		String sestatus = request.getParameter("sestatus");
		ArrayList<EMP> searchEmpList=null;
	if(sename.equals("")||sename==null){
		request.setAttribute("msg","start showall success");
		request.getRequestDispatcher("ShowAllEmpServlet").forward(request, response);
		}
	else{
		searchEmpList=ss.searchEmp(sename, selname, sestatus);
		request.setAttribute("msg","search success");
		request.setAttribute("searchEmpList",searchEmpList);
		System.out.println(ss.searchEmp(sename, selname, sestatus).size()+"=======");
		request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
			
		}

	}
}
