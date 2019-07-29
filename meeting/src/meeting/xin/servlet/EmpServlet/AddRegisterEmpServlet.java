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
 * Servlet implementation class AddRegisterEmpServlet
 */
@WebServlet("/AddRegisterEmpServlet")
public class AddRegisterEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRegisterEmpServlet() {
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
		String sename = request.getParameter("sename");
		String selname = request.getParameter("selname");
		String sepass = request.getParameter("sepass");
		String sepass1 = request.getParameter("sepass1");
		String sephone = request.getParameter("sephone");
		String semail = request.getParameter("semail");
		String deptname = request.getParameter("deptname");
		AdminService as =new AdminService();
		DeptService ds =new DeptService();
		 ArrayList<Dept> showAllDept = ds.showAllDept();
//		if(!as.elnameCheck(selname)){
//			 request.setAttribute("deptList", showAllDept);	
//			 request.setAttribute("msg", "register selname is a lot");
//			 request.getRequestDispatcher("register.jsp").forward(request, response);
//			
//		}else{
		//判断密码一致性
		if(sepass.equals(sepass1)){
			boolean falg = as.register(new EMP(sename,selname,sepass,sephone,semail,Integer.parseInt(deptname)));
			if(falg){
				 request.setAttribute("msg", "register is success");
				 request.getRequestDispatcher("login.jsp").forward(request, response);	
			}
			else{

				 request.setAttribute("deptList", showAllDept);	
				 request.setAttribute("msg", "register is false");
				 request.getRequestDispatcher("register.jsp").forward(request, response);	
			}
		}

		else{

			 request.setAttribute("deptList", showAllDept);	
			 request.setAttribute("msg", "pass is false");
			 request.getRequestDispatcher("register.jsp").forward(request, response);
			
		}}}
		


//}
