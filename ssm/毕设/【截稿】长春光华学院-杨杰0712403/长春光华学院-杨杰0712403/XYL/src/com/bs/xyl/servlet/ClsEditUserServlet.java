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

public class ClsEditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ClsEditUserServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		int id = Integer.valueOf(request.getParameter("id"));
		String account = request.getParameter("account");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		AdminDao adminDao = new AdminDao();
		int rid = adminDao.findId("t_admin", "account", "id", account);
		if (rid == id||rid==0) {
			Admin admin = new Admin();
			admin.setId(id);
			admin.setPwd(pwd);
			admin.setName(name);
			int num = adminDao.updateCls(admin);
			if (num == 1) {
				response.sendRedirect("ClsUserServlet?id="+id);
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("errorMsg", "操作失败，请确认后再重新操作！");
				String dataJson = JSONObject.fromObject(map).toString();
				response.getWriter().write(dataJson);
			}
		} else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "数据异常，可能存在多条");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		}
	}

}
