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

public class AdminNewClsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminNewClsServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		String grade = request.getParameter("grade");
		String name = request.getParameter("name");
		BanjiDao dao = new BanjiDao();
		int count = dao.count2("t_class", "grade", grade,"name",name);
		if (count>0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "您所增加的内容已经存在，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		} else {
			Banji banji = new Banji(grade, name);
			int num = dao.addNew(banji);
			if (num == 1) {
				response.sendRedirect("AdminViewClsServlet");
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("errorMsg", "新增失败，请确认后再重新操作！");
				String dataJson = JSONObject.fromObject(map).toString();
				response.getWriter().write(dataJson);
			}
		}
	}

}
