package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.AdminService;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class RegisterEmpCheckName
 * RegisterEmpCheckName是jsp页面要访问的路径，必须加/.
 */
@WebServlet("/RegisterEmpCheckName")
public class RegisterEmpCheckName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterEmpCheckName() {
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
		response.setCharacterEncoding("utf-8");
		String name =request.getParameter("name");
		JSONObject jso = new JSONObject();
		AdminService as =new AdminService();
		//System.out.println(as.elnameCheck(name)+"================");
		if(as.elnameCheck(name)){
			jso.put("msg", "登录名重复");
		}else{
			jso.put("msg", "登录名可用");
		}
		PrintWriter pw = response.getWriter();
		pw.println(jso.toString());
		//System.out.println(jso.toString());
		pw.close();
		
	}

}
