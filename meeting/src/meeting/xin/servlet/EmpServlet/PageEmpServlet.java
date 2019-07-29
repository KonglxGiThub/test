package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.AdminService;

/**
 * Servlet implementation class PageEmpServlet
 */
@WebServlet("/PageEmpServlet")
public class PageEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageEmpServlet() {
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
		int avgPage =0;
		//人员总数
		int countPage=ss.allPageEmp();
		request.setAttribute("countPage",countPage);
		String p = request.getParameter("page");
			if(countPage>0){
				if(countPage%5==0){
					avgPage=countPage/5;
					//System.out.println(avgPage);
					request.setAttribute("avgPage",avgPage);
					//当前页数
					request.setAttribute("page",p);	
						
					request.setAttribute("searchEmpList",ss.pageEmp(Integer.parseInt(p)));
					request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
				}else{
					avgPage=countPage/5+1;
					request.setAttribute("avgPage",avgPage);
					request.setAttribute("page",p);	
					
					request.setAttribute("searchEmpList",ss.pageEmp(Integer.parseInt(p)));
					request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
				}
			}
		}
		//System.out.println(request.getParameter("page")+"==============");
//		AdminService ss=new AdminService();
//		int avgPage =0;
//		//人员总数
//		int countPage=ss.allPageEmp();
//		request.setAttribute("countPage",countPage);
//		String p =null ;
//		if(request.getParameter("page")!=null){
//			p = request.getParameter("page");
//			if(countPage>0){
//				if(countPage/5==0){
//					avgPage=countPage/5;
//					System.out.println(avgPage);
//					request.setAttribute("avgPage",avgPage);
//					//当前页数
//					request.setAttribute("page",p);	
//						
//					request.setAttribute("searchpageEmpList",ss.pageEmp(Integer.parseInt(p)));
//					request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
//				}else{
//					avgPage=countPage/5+1;
//					request.setAttribute("avgPage",avgPage);
//					request.setAttribute("page",p);	
//					
//					request.setAttribute("searchpageEmpList",ss.pageEmp(Integer.parseInt(p)));
//					request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
//				}
//			}
//		}else{
//			request.setAttribute("page",1);
//			request.setAttribute("searchpageEmpList",ss.pageEmp(1));
//			request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
//			//System.out.println(ss.pageEmp(1).size()+"===========");
//		}

	

	}

