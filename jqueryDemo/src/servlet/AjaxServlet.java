package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Vo.Emp;
import dao.EmpDao;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("/AjaxServlet")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获得前台对象
		int deptId = Integer.parseInt(request.getParameter("deptId"));
		System.out.println(deptId);
		//定义json对象
		JSONObject jso = new JSONObject();
		JSONArray jsa = new JSONArray();
		JSONObject emp = null;
		
		EmpDao dao = new EmpDao();
		ArrayList<Emp> list = dao.getEmpByDeptId(deptId);
		for(Emp e:list){
			emp = new JSONObject();
			emp.put(e.getId(), e.getName());
			jsa.add(emp);
		}
		jso.put("emps", jsa);
		PrintWriter out = response.getWriter();
		out.print(jso.toString());
		out.close();
	}

}
