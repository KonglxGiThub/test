package meeting.xin.servlet.EmpServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.AdminService;
import meeting.xin.vo.EMP;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class ShowEmpByIdJsonServlet
 */
@WebServlet("/ShowEmpByIdJsonServlet")
public class ShowEmpByIdJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowEmpByIdJsonServlet() {
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
		AdminService as = new AdminService();
		String did =request.getParameter("did");
		//System.out.println(did+"========="+as.searchEmpByDid(Integer.parseInt(did)).size());
		JSONObject jso = new JSONObject();
		JSONArray jarr=new JSONArray();
		if(as.searchEmpByDid(Integer.parseInt(did))!=null){
			ArrayList<EMP> emplist=as.searchEmpByDid(Integer.parseInt(did));
			for(EMP e:emplist){
				//定义接收集合元素的变量
				JSONObject js = new JSONObject();
				//将数据存入每个元素
				js.put(e.getEid(),e.getEname());
				jarr.add(js);
				
			}
		}
		else{
			jso.put("emplist", "list null");
		}
		//获得响应的输入对象
		PrintWriter pw = response.getWriter();
		//将jsa赋给jso
		jso.put("emplist",jarr);
		pw.println(jso.toString());
		//System.out.println(jso.toString()+"============="+as.searchEmpByDid(Integer.parseInt(did)).size());
		pw.close();
	}

}
