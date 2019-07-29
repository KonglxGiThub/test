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
 * Servlet implementation class ShowAllEmpServlet
 */
@WebServlet("/ShowAllEmpServlet")
public class ShowAllEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAllEmpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AdminService ss =new AdminService();
		//人员总数
		int countPage=ss.allPageEmp();
		int avgPage =0;
		request.setAttribute("countPage",countPage);
		/*System.out.println(countPage+"==========");*/
		if(countPage>0){
			if(countPage%5==0){
				avgPage=countPage/5;
				//System.out.println(avgPage);
				request.setAttribute("avgPage",avgPage);
				//当前页数
				request.setAttribute("page",1);	
					
				request.setAttribute("searchEmpList",ss.pageEmp(1));
				request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
			}else{
				avgPage=countPage/5+1;
				request.setAttribute("avgPage",avgPage);
				request.setAttribute("page",1);	
				
				request.setAttribute("searchEmpList",ss.pageEmp(1));
				request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
			}
		}
	}

}
