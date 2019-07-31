package com.bs.xyl.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.bs.xyl.bean.Admin;
import com.bs.xyl.dao.AdminDao;
import com.bs.xyl.util.Constants;

public class AdminNewUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminNewUserServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		String account = request.getParameter("account");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		int role = Integer.valueOf(request.getParameter("role"));
		AdminDao adminDao = new AdminDao();
		String result = adminDao.login("t_admin", "account", "account", account);
		if (result != "") {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "账户名为："+account+" 的管理员已经存在，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		} else {
			Admin admin = new Admin(account, pwd, name, role);
			int num = adminDao.addNew(admin);
			if (num == 1) {
				response.sendRedirect("ViewAdminUserServlet");
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("errorMsg", "新增失败，请确认后再重新操作！");
				String dataJson = JSONObject.fromObject(map).toString();
				response.getWriter().write(dataJson);
			}
		}
	}

}
