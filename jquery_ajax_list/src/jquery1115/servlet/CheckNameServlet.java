package jquery1115.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class CheckNameServlet
 */
@WebServlet("/CheckNameServlet")
public class CheckNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckNameServlet() {
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
		response.setCharacterEncoding("utf-8");
		// 获得前台传入的值
		String name = request.getParameter("namexx");
		//定义jsonobject对象
		JSONObject jso = new JSONObject();
		//判断前台的数据是否被使用
		if("tom".equals(name)){
			//为jsonobject赋值
			jso.put("msg", "该用户已被注册！");
		}else{
			jso.put("msg", "恭喜您，该用户可以使用！");
		}
		//获得响应的输入对象
		PrintWriter pw = response.getWriter();
		//将json对象写入相应
		pw.print(jso.toString());
		System.out.println(jso.toString());
		//关闭资源
		pw.close();
	}

}
