package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import meeting.xin.service.AdminService;
import meeting.xin.service.DeptService;
import meeting.xin.vo.Dept;
import meeting.xin.vo.EMP;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
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
		AdminService ls = new AdminService();
		EMP emp =new EMP();
		String elname = request.getParameter("elname"); 
		String elpass = request.getParameter("elpass"); 
		int eid = ls.elnameSearchById(elname).getEid();
		//System.out.println(elname+elpass+"=========eid========");
		
		int timelength =0;
		//如果不加判断会出错
		if(request.getParameter("timelength")!=null){
			timelength = Integer.parseInt(request.getParameter("timelength")); 
		}
		int status= ls.login(new EMP(elname,elpass));
		if(status==0){
			request.setAttribute("msg","is checking");
			request.getRequestDispatcher("login.jsp").forward(request, response);	
		}else if(status==1){
			if(timelength>0){
			Cookie cookieEname1 = new Cookie("cookieEname",elname);
			Cookie cookieEpass1 = new Cookie("cookieEpass",elpass);
			cookieEname1.setMaxAge(30*3600);
			cookieEpass1.setMaxAge(30*3600);
			response.addCookie(cookieEname1);
			response.addCookie(cookieEpass1);
			}
			HttpSession session = request.getSession();
			session.setAttribute("sessionename",elname);
			session.setAttribute("sessioneid",eid);
		
			request.setAttribute("msg"," check pass");
			request.getRequestDispatcher("adminindex.jsp").forward(request, response);		
		}else if(status==2){
			request.setAttribute("msg"," check not pass");
			request.getRequestDispatcher("login.jsp").forward(request, response);		
		}else{
			request.setAttribute("msg"," name or pass is false");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		
	}

}
