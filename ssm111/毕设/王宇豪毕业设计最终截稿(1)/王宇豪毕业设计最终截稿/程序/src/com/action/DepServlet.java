package com.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.EmpBean;
import com.util.Constant;

public class DepServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DepServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType(Constant.CONTENTTYPE);
		request.setCharacterEncoding(Constant.CHARACTERENCODING);
		EmpBean db=new EmpBean();
		String method=request.getParameter("method").trim();
		if(method.equals("addDep")){
			String name=request.getParameter("name");
			int flag=db.addDep(name);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/dep/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/dep/index.jsp").forward(request, response);
			}
		}
		
		///////////////////////////////////////////////////////////////////////del
		else if(method.equals("delDep")){
			String id=request.getParameter("id");
			int flag=db.delDep(id);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/dep/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/dep/index.jsp").forward(request, response);
			}
		}
		//////////// 信息管理
		else if(method.equals("addEmp")){
			String name=request.getParameter("name");
			String sex=request.getParameter("sex");
			String bir=request.getParameter("bir");
			String departs=request.getParameter("departs");
			String zhiwu=request.getParameter("zhiwu");
			String tel=request.getParameter("tel");
			String address=request.getParameter("address");
			String remark=request.getParameter("remark");
			int flag=db.addEmp(name, sex, bir, departs, zhiwu, tel, address, remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/emp/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/emp/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("upEmp")){
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String sex=request.getParameter("sex");
			String bir=request.getParameter("bir");
			String departs=request.getParameter("departs");
			String zhiwu=request.getParameter("zhiwu");
			String tel=request.getParameter("tel");
			String address=request.getParameter("address");
			String remark=request.getParameter("remark");
			int flag=db.upEmp(id,name, sex, bir, departs, zhiwu, tel, address, remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/emp/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/emp/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("delEmp")){
			String id=request.getParameter("id"); 
			int flag=db.delEmp(id );
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/emp/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/emp/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("searchEmp")){
			String id=request.getParameter("id"); 
			List list=db.getEmp(id);
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/emp/sinfo.jsp").forward(request, response);
		}
		//////////////////////////////////////////////////////////////// 信息管理
		else if(method.equals("addAtt")){
			String eid=request.getParameter("eid");
			String type=request.getParameter("type");
			String money=request.getParameter("money");
			String ftime=request.getParameter("ftime");
			String remark=request.getParameter("remark");
			int flag=db.addAtt(eid, type, money, ftime, remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/attend/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/attend/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("upAtt")){
			String id=request.getParameter("id");
			String eid=request.getParameter("eid");
			String type=request.getParameter("type");
			String money=request.getParameter("money");
			String ftime=request.getParameter("ftime");
			String remark=request.getParameter("remark");
			int flag=db.upAtt(id,eid, type, money, ftime, remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/attend/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/attend/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("delAtt")){
			String id=request.getParameter("id"); 
			int flag=db.delAtt(id );
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/attend/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/attend/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("searchAtt")){
			String id=request.getParameter("eid"); 
			List list=db.getAttSearch(id); 
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/attend/sinfo.jsp").forward(request, response);
		}
//////////////////////////////////////////////////////////////////////////维修
		else if(method.equals("addWx")){
			String name=request.getParameter("name");
			String co=request.getParameter("co");
			String bir=request.getParameter("bir");
			String jine=request.getParameter("jine");
			String nr=request.getParameter("nr");
			String remark=request.getParameter("remark");
			int flag=db.addWx(name, co, bir, nr, jine, remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/pay/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/pay/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("upWx")){
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String co=request.getParameter("co");
			String bir=request.getParameter("bir");
			String jine=request.getParameter("jine");
			String nr=request.getParameter("nr");
			String remark=request.getParameter("remark");
			int flag=db.upWx(id,name, co, bir, nr, jine, remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/pay/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/pay/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("delWx")){
			String id=request.getParameter("id"); 
			int flag=db.delWx(id );
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/pay/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/pay/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("searchWx")){
			String id=request.getParameter("id"); 
			List list=db.getWxSearch(id); 
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/pay/sinfo.jsp").forward(request, response);
		}
		/////////////////////////////////////////////////////////////////////////退还
		else if(method.equals("addTh")){
			String name=request.getParameter("name");
			String co=request.getParameter("co");
			String bir=request.getParameter("bir");
			 
			String nr=request.getParameter("nr");
			String remark=request.getParameter("remark");
			int flag=db.addTh(name, co, bir, nr , remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/tui/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/tui/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("upTh")){
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String co=request.getParameter("co");
			String bir=request.getParameter("bir"); 
			String nr=request.getParameter("nr");
			String remark=request.getParameter("remark");
			int flag=db.upTh(id,name, co, bir, nr , remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/tui/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/tui/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("delTh")){
			String id=request.getParameter("id"); 
			int flag=db.delTh(id );
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/tui/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/tui/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("searchTh")){
			String id=request.getParameter("id"); 
			List list=db.getThSearch(id); 
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/tui/sinfo.jsp").forward(request, response);
		}
		/////////////////////////////////////////////////////////////////回访
		else if(method.equals("addHf")){
			String name=request.getParameter("name");
			String co=request.getParameter("co");
			String bir=request.getParameter("bir");
			 
			String nr=request.getParameter("nr");
			String remark=request.getParameter("remark");
			int flag=db.addHf(name, co, bir, nr , remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/hui/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/hui/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("upHf")){
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String co=request.getParameter("co");
			String bir=request.getParameter("bir"); 
			String nr=request.getParameter("nr");
			String remark=request.getParameter("remark");
			int flag=db.upHf(id,name, co, bir, nr , remark);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/hui/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/hui/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("delHf")){
			String id=request.getParameter("id"); 
			int flag=db.delHf(id );
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/hui/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中，请稍后再试！");
				request.getRequestDispatcher("admin/hui/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("searchHf")){
			String id=request.getParameter("id"); 
			List list=db.getHfSearch(id); 
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/hui/sinfo.jsp").forward(request, response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
