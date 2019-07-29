package meeting.xin.servlet.DeptServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.dao.DeptDao;
import meeting.xin.service.DeptService;
import meeting.xin.vo.Dept;

/**
 * Servlet implementation class DeleteDeptServlet
 */
@WebServlet("/AddDeptServlet")
public class AddDeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDeptServlet() {
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
		DeptDao adao = new DeptDao();
//		DeptService ds =new DeptService();
//		ArrayList<Dept> showAllDept=ds.showAllDept();
		String addName = request.getParameter("departmentname");
		boolean falg = adao.addDept(addName);
		if(falg){
			 request.setAttribute("msg", "add dept is success");
			request.getRequestDispatcher("ShowAllDeptServlet").forward(request, response);
		}
		else{
			 request.setAttribute("msg", "add detp is false");
			request.getRequestDispatcher("ShowAllDeptServlet").forward(request, response);
		}
	}

}
