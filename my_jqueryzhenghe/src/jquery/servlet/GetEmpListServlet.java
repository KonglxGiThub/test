package jquery.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jquery.dao.EmpDao;
import jquery.vo.Emp;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class GetEmpListServlet
 */
@WebServlet("/GetEmpListServlet")
public class GetEmpListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEmpListServlet() {
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
		//
		JSONObject jso=new JSONObject();
		//定义集合
		JSONArray jsa = new JSONArray();
		
		String deptid = request.getParameter("deptid");
		ArrayList<Emp> list = new EmpDao().getEmpListByDid(Integer.parseInt(deptid));
		//遍历集合
		for(Emp e:list){
			//定义接收集合元素的变量
			JSONObject member = new JSONObject();
			//将数据存入每个元素
			member.put(e.getId(), e.getName());
			jsa.add(member);
		}
		//获得响应的输入对象
		PrintWriter pw = response.getWriter();
		//将jsa赋给jso
		jso.put("emps",jsa);
		pw.write(jso.toString());
		pw.close();
		
	}

}
