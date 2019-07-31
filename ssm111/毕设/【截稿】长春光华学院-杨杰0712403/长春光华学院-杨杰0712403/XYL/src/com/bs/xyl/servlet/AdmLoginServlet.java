package com.bs.xyl.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.xyl.bean.Admin;
import com.bs.xyl.bean.Result;
import com.bs.xyl.dao.AdminDao;
import com.bs.xyl.util.Constants;

public class AdmLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdmLoginServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		Result result = new Result();
		String account = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String role = request.getParameter("role");
		AdminDao adminDao = new AdminDao();
		String rpwd = adminDao.login("t_admin", "account", "pwd", account);
		if (!"".equals(rpwd) && null != rpwd) {
			String rrole = adminDao.login("t_admin", "account", "role", account);
			if (pwd.equals(rpwd)&&role.equals(rrole)) {
				//角色和密码一致
				Admin admin = adminDao.findAdm(account);
				// role=1 班级管理员 role=0 超级管理员
				if ("0".equals(role)) {
					adminDao.log("超级管理员"+admin.getName()+"登录记录");
					result.setAddress("AdminUser.jsp");
				} else if ("1".equals(role)) {
					adminDao.log("班级管理员"+admin.getName()+"登录记录");
					result.setAddress("ClassUser.jsp");
				}
				request.getSession().setAttribute("UserBean", admin);
			} else {
				result.setMessage("1");
			}
		} else {
			result.setMessage("2");
		}
		request.setAttribute("result", result);
		request.getRequestDispatcher(result.getAddress()).forward(request, response);
	}

}
