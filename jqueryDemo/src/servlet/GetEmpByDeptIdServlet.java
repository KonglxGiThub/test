package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class GetEmpByDeptIdServlet
 */
@WebServlet("/GetEmpByDeptIdServlet")
public class GetEmpByDeptIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetEmpByDeptIdServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		// TODO Auto-generated method stub
		String deptId = request.getParameter("deptId");
		System.out.println(deptId);
		PrintWriter pw = response.getWriter();
		// String json1 =
		// "{emps:[{'id':'1','name':'tom'},{'id':'2','name':'jack'},{'id':'3','name':'rose'}]}";
		// pw.print("xxx");
		// System.out.println(json1);
		JSONObject json = new JSONObject();

		JSONArray array = new JSONArray();
		JSONObject member = null;
		for (int i = 0; i < 3; i++) {
			member = new JSONObject();
			member.put("name", "xiaohua" + i);
			member.put("age", 20 + i);
			array.add(member);
		}
		json.put("emps", array);
		pw.print(json.toString());
		System.out.println(json.toString());
		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
