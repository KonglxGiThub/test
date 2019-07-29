package meeting.xin.servlet.DeptServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.DeptService;
import meeting.xin.vo.Dept;

/**
 * Servlet implementation class ShowAllDeptServlet
 */
@WebServlet("/ShowAllDeptServlet")
public class ShowAllDeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAllDeptServlet() {
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
//		String did = request.getParameter("did");
//		String dname = request.getParameter("dname");
		DeptService ds =new DeptService();
		 ArrayList<Dept> showAllDept =null;
		 if(ds.showAllDept()!=null){
			 showAllDept = ds.showAllDept();
			 request.setAttribute("deptList", showAllDept);
			 request.setAttribute("msg", "show detp is success");
			 request.getRequestDispatcher("departments.jsp").forward(request, response);
		 }
		 else{
			 request.setAttribute("msg", "show detp is false");
			 request.getRequestDispatcher("departments.jsp").forward(request, response);
		 }
	}

}
