package meeting.xin.servlet.DeptServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.DeptService;

/**
 * Servlet implementation class DelDeptByIdServlet
 */
@WebServlet("/DelDeptByIdServlet")
public class DelDeptByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelDeptByIdServlet() {
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
		DeptService ds = new DeptService();
		String did = null;
		if(request.getParameter("did")!=null){
			did=request.getParameter("did");
			boolean f = ds.DeleteDept(Integer.parseInt(did));
			if(f){
				 request.setAttribute("msg", "del detp is success");
				 request.getRequestDispatcher("ShowAllDeptServlet").forward(request, response);
			}else{
				 request.setAttribute("msg", "del detp is false");
				 request.getRequestDispatcher("ShowAllDeptServlet").forward(request, response);
			}
		}else{
			 request.setAttribute("msg", "del detp is null");
			 request.getRequestDispatcher("ShowAllDeptServlet").forward(request, response);
		
	}

}}
