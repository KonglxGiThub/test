package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.AdminService;
import meeting.xin.service.DeptService;
import meeting.xin.vo.Dept;
import meeting.xin.vo.EMP;

/**
 * Servlet implementation class RegisterEmpServlet
 */
@WebServlet("/RegisterEmpServlet")
public class ShowRegisterEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowRegisterEmpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 
	ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				DeptService ds =new DeptService();
				 ArrayList<Dept> showAllDept = ds.showAllDept();
				 request.setAttribute("deptList", showAllDept);
				 request.setAttribute("msg", "register is start");
				 request.getRequestDispatcher("register.jsp").forward(request, response);	
	

		 }
	}


