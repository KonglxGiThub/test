package com.bs.zp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Company;
import com.bs.zp.dao.CpyDao;
import com.bs.zp.util.Constants;



public class CpyEditServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private CpyDao dao;
	public CpyEditServlet(){
		
	}
	/**
	 * @see doGet方法
	 */
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see doPost方法
	 */
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		int id = Integer.valueOf(request.getParameter("id"));
		String account = request.getParameter("account").trim();
		String pwd = request.getParameter("password").trim();
		String name = request.getParameter("name").trim();
		String name_all = request.getParameter("name_all").trim();
		String industry = request.getParameter("industry").trim();
		String property = request.getParameter("property").trim();
		String size = request.getParameter("size").trim();
		String profile = request.getParameter("profile").trim();
		String linkman = request.getParameter("linkman").trim();
		String tel = request.getParameter("tel").trim();
		String email = request.getParameter("email").trim();
		String web = request.getParameter("web").trim();
		String addr = request.getParameter("addr").trim();
		String logo = request.getParameter("logo").trim();
		int state = 1;
		dao = new CpyDao();
		try {
			Company cpy = new Company();
			cpy.setId(id);
			cpy.setName(name);
			cpy.setName_all(name_all);
			cpy.setIndustry(industry);
			cpy.setProperty(property);
			cpy.setSize(size);
			cpy.setProfile(profile);
			cpy.setLinkman(linkman);
			cpy.setTel(tel);
			cpy.setEmail(email);
			cpy.setWeb(web);
			cpy.setAddr(addr);
			cpy.setLogo(logo);
			cpy.setState(state);
			int num= dao.update(cpy);
			if(num==1){
				request.setAttribute("account", account);
				request.setAttribute("pwd", pwd);
				request.setAttribute("addr", "index.jsp");
				request.setAttribute("message", "修改成功");
				request.getRequestDispatcher("Message3.jsp").forward(request, response);
			}else{
				
				request.setAttribute("addr", "index.jsp");
				request.setAttribute("message", "修改失败");
				request.getRequestDispatcher("Message.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
