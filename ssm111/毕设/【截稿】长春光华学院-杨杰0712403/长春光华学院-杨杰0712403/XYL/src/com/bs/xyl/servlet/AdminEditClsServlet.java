package com.bs.xyl.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.bs.xyl.bean.Banji;
import com.bs.xyl.dao.BanjiDao;
import com.bs.xyl.util.Constants;

public class AdminEditClsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminEditClsServlet() {

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
		String grade = request.getParameter("grade");
		String name = request.getParameter("name");
		BanjiDao dao = new BanjiDao();
		int count = dao.findId("t_class", "grade", grade,"name",name);
		if (count<=1) {
			Banji banji = new Banji(id, grade, name);
			int num = dao.update(banji);
			if (num == 1) {
				response.sendRedirect("AdminViewClsServlet");
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
