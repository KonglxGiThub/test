package com.chinasofti.jquery.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasofti.jquery.dao.EmpDao;
import com.chinasofti.jquery.vo.Emp;

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
		// 中文处理
		response.setCharacterEncoding("utf-8");
		JSONObject jso = new JSONObject();
		//定义json包中集合
		JSONArray jsa = new JSONArray();
		JSONObject member = null;
		
		//获得前台传入的部门id
		String deptId = request.getParameter("deptId");
		List<Emp> list = new EmpDao().getEmpsByDeptId(Integer.parseInt(deptId));
		//遍历集合
		for(Emp e:list){
			//定义接收集合元素的变量
			member = new JSONObject();
			//将数据存入每个元素
			member.put(e.getId(), e.getName());
			//为集合添加元素
			jsa.add(member);
		}
		//获得响应的输入
		PrintWriter pw = response.getWriter();
		//将JSONArray赋给JSONObject
		jso.put("emps",jsa);
		pw.print(jso.toString());
		System.out.println(jso.toString());
		pw.close();
	}

}
